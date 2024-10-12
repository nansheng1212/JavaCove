package com.ican.service.impl;

import cn.hutool.core.lang.Assert;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.CategoryForm;
import com.ican.entity.po.Article;
import com.ican.entity.po.Category;
import com.ican.entity.vo.*;
import com.ican.mapper.ArticleMapper;
import com.ican.mapper.CategoryMapper;
import com.ican.service.CategoryService;
import com.ican.utils.BeanCopyUtils;
import com.ican.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Objects;

/**
 * 分类业务接口实现类
 *
 * @author gj
 * @date 2022/12/02 17:35
 **/
@Service
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public PageResult<CategoryBackVO> listCategoryBackVO(ConditionQuery conditionQuery) {
        // 查询分类数量
        Long count = categoryMapper.selectCount(new LambdaQueryWrapper<Category>()
                .like(StringUtils.hasText(conditionQuery.getKeyword()), Category::getCategoryName,
                        conditionQuery.getKeyword()));
        if (count == 0) {
            return new PageResult<>();
        }
        // 分页查询分类列表
        List<CategoryBackVO> categoryList = categoryMapper.selectCategoryBackVO(PageUtils.getLimit(),
                PageUtils.getSize(), conditionQuery.getKeyword());
        return new PageResult<>(categoryList, count);
    }

    @Override
    public void addCategory(CategoryForm categoryForm) {
        // 分类是否存在
        Category existCategory = categoryMapper.selectOne(new LambdaQueryWrapper<Category>()
                .select(Category::getId)
                .eq(Category::getCategoryName, categoryForm.getCategoryName()));
        Assert.isNull(existCategory, categoryForm.getCategoryName() + "分类已存在");
        // 添加新分类
        Category newCategory = Category.builder()
                .categoryName(categoryForm.getCategoryName())
                .build();
        baseMapper.insert(newCategory);
    }

    @Override
    public void deleteCategory(List<Integer> categoryIdList) {
        // 分类下是否有文章
        Long count = articleMapper.selectCount(new LambdaQueryWrapper<Article>()
                .in(Article::getCategoryId, categoryIdList));
        Assert.isFalse(count > 0, "删除失败，分类下存在文章");
        // 批量删除分类
        categoryMapper.deleteBatchIds(categoryIdList);
    }

    @Override
    public void updateCategory(CategoryForm categoryForm) {
        // 分类是否存在
        Category existCategory = categoryMapper.selectOne(new LambdaQueryWrapper<Category>()
                .select(Category::getId)
                .eq(Category::getCategoryName, categoryForm.getCategoryName()));
        Assert.isFalse(Objects.nonNull(existCategory) && !existCategory.getId().equals(categoryForm.getId()),
                categoryForm.getCategoryName() + "分类已存在");
        // 修改分类
        Category newCategory = Category.builder()
                .id(categoryForm.getId())
                .categoryName(categoryForm.getCategoryName())
                .build();
        baseMapper.updateById(newCategory);
    }

    @Override
    public List<CategoryOptionVO> listCategoryOption() {
        // 查询分类
        List<Category> categoryList = categoryMapper.selectList(new LambdaQueryWrapper<Category>()
                .orderByDesc(Category::getId));
        return BeanCopyUtils.copyBeanList(categoryList, CategoryOptionVO.class);
    }

    @Override
    public List<CategoryVO> listCategoryVO() {
        return categoryMapper.selectCategoryVO();
    }

    @Override
    public ArticleConditionList listArticleCategory(ConditionQuery conditionQuery) {
        List<ArticleConditionVO> articleconditionQueryList = articleMapper.listArticleByCondition(PageUtils.getLimit(),
                PageUtils.getSize(), conditionQuery);
        String name = categoryMapper.selectOne(new LambdaQueryWrapper<Category>()
                .select(Category::getCategoryName)
                .eq(Category::getId, conditionQuery.getCategoryId()))
                .getCategoryName();
        return ArticleConditionList.builder()
                .articleconditionQueryVOList(articleconditionQueryList)
                .name(name)
                .build();
    }

}

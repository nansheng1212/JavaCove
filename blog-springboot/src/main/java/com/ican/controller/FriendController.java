package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.ican.annotation.OptLogger;
import com.ican.annotation.VisitLogger;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.FriendForm;
import com.ican.entity.vo.FriendBackVO;
import com.ican.entity.vo.FriendVO;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.Result;
import com.ican.service.FriendService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

import static com.ican.constant.OptTypeConstant.*;

/**
 * 友链控制器
 *
 * @author gj
 */
@Api(tags = "友链模块")
@RestController
public class FriendController {

    @Resource
    private FriendService friendService;

    /**
     * 查看友链列表
     *
     * @return {@link Result<FriendVO>} 友链列表
     */
    @VisitLogger(value = "友链")
    @ApiOperation(value = "查看友链列表")
    @GetMapping("/friend/list")
    public Result<List<FriendVO>> listFriendVO() {
        return Result.success(friendService.listFriendVO());
    }

    /**
     * 查看友链后台列表
     *
     * @param conditionQuery 查询条件
     * @return {@link PageResult<FriendBackVO>} 后台友链列表
     */
    @ApiOperation(value = "查看友链后台列表")
    @SaCheckPermission("web:friend:list")
    @GetMapping("/admin/friend/list")
    public Result<PageResult<FriendBackVO>> listFriendBackVO(ConditionQuery conditionQuery) {
        return Result.success(friendService.listFriendBackVO(conditionQuery));
    }

    /**
     * 添加友链
     *
     * @param friendForm 友链
     * @return {@link Result<>}
     */
    @OptLogger(value = ADD)
    @ApiOperation(value = "添加友链")
    @SaCheckPermission("web:friend:add")
    @PostMapping("/admin/friend/add")
    public Result<?> addFriend(@Validated @RequestBody FriendForm friendForm) {
        friendService.addFriend(friendForm);
        return Result.success();
    }

    /**
     * 删除友链
     *
     * @param friendIdList 友链id集合
     * @return {@link Result<>}
     */
    @OptLogger(value = DELETE)
    @ApiOperation(value = "删除友链")
    @SaCheckPermission("web:friend:delete")
    @DeleteMapping("/admin/friend/delete")
    public Result<?> deleteFriend(@RequestBody List<Integer> friendIdList) {
        friendService.removeByIds(friendIdList);
        return Result.success();
    }

    /**
     * 修改友链
     *
     * @param friendForm 友链
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation(value = "修改友链")
    @SaCheckPermission("web:friend:update")
    @PutMapping("/admin/friend/update")
    public Result<?> updateFriend(@Validated @RequestBody FriendForm friendForm) {
        friendService.updateFriend(friendForm);
        return Result.success();
    }

}

import { PageQuery } from "@/model";

/**
 * 查询参数
 */
export interface ArticleQuery extends PageQuery {
  /**
   * 关键字
   */
  keyword?: string;
}

/**
 * 文章
 */
export interface Article {
  /**
   * 文章id
   */
  id: number;
  /**
   * 文章标题
   */
  articleTitle: string;
  /**
   * 文章摘要
   */
  articleDesc: string;
  /**
   * 文章内容
   */
  articleContent: string;
  /**
   * 是否删除 (0否 1是)
   */
  isDelete: number;
  /**
   * 状态 (1公开 2私密 3草稿)
   */
  status: number;
}

/**
 * 文章表单
 */
export interface ArticleForm {
  /**
   * 文章id
   */
  id?: number;
  /**
   * 文章缩略图
   */
  articleCover: string;
  /**
   * 文章标题
   */
  articleTitle: string;
  /**
   * 文章摘要
   */
  articleDesc: string;
  /**
   * 文章内容
   */
  articleContent: string;
  /**
   * 文章类型 (1原创 2转载 3翻译)
   */
  articleType: number;
  /**
   * 分类名
   */
  categoryName: string;
  /**
   * 标签名
   */
  tagNameList: string[];
  /**
   * 是否置顶 (0否 1是)
   */
  isTop: number;
  /**
   * 是否推荐 (0否 1是)
   */
  isRecommend: number;
  /**
   * 状态 (1公开 2私密 3草稿)
   */
  status: number;
}
import { PageResult, Result } from "@/model";
import request from "@/utils/request";
import { AxiosPromise } from "axios";
import {
  Article,
  ArticleQuery,
} from "./types";

/**
 * 分页查询所有索引
 * @param params 查询条件
 * @returns 文章列表
 */
export function getIndexList(params: ArticleQuery): AxiosPromise<Result<PageResult<Article[]>>> {
  return request({
    url: "/admin/index/list",
    method: "get",
    params,
  });
}

/**
 * 刷新所有索引
 */
export function refreshAllArticle(): AxiosPromise<Result<null>> {
  return request({
    url: "/admin/index/refreshAllArticle",
    method: "get",
  });
}

/**
 * 清空文章索引下所有数据
 */
export function deleteAllArticle(): AxiosPromise<Result<null>> {
  return request({
    url: `/admin/index/deleteAllArticle`,
    method: "get",
  });
}

/**
 * 刷新文章
 */
export function refreshArticle(data: number): AxiosPromise<Result<null>> {
  return request({
    url: `/admin/index/refreshArticle`,
    method: "put",
    data,
  });
}

/**
 * 删除文章
 */
export function deleteArticle(data: number): AxiosPromise<Result<null>> {
  return request({
    url: `/admin/index/deleteArticle`,
    method: "put",
    data,
  });
}
<template>
  <div class="app-container">
    <!-- 搜索栏 -->
    <el-form :model="queryParams" :inline="true" v-show="showSearch">
      <el-form-item>
        <el-input @keyup.enter="handleQuery" v-model="queryParams.keyword" style="width: 300px"
                  placeholder="请输入文章标题或内容" clearable />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
      </el-form-item>
    </el-form>
    <!-- 操作按钮 -->
    <el-row :gutter="10" class="mb15">
      <el-col :span="1.5">
        <el-button type="danger" plain icon="Refresh"
                   @click="handleRefreshAllArticle()">刷新全部索引</el-button>
      </el-col>
      <el-col :span="1.5" v-if="queryParams.isDelete == 0">
        <el-button type="danger" plain icon="Delete"
                   @click="handleDeleteAllArticle()">清空索引</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>
    <!-- 表格展示 -->
    <el-table border :data="indexList" v-loading="loading">
      <!-- 文章标题 -->
      <el-table-column prop="articleTitle" label="文章标题" width="400" align="center"></el-table-column>
      <!-- 文章摘要 -->
      <el-table-column prop="articleDesc" label="文章摘要" align="center"></el-table-column>
      <!-- 文章内容 -->
      <el-table-column prop="articleContent" label="文章内容" width="300" align="center">
        <template #default="scope">
          <el-button type="text" @click="openContentDialog(scope.row.articleContent)">查看详情</el-button>
        </template>
      </el-table-column>
      <!-- 操作 -->
      <el-table-column width="220" label="操作" align="center">
        <template #default="scope">
          <el-button type="primary" icon="Refresh" link @click="handleRefresh(scope.row.id)">
            刷新
          </el-button>
          <el-button type="danger" icon="Delete" link @click="handleDelete(scope.row.id)">
            删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>
    <!-- 分页 -->
    <pagination v-if="count > 0" :total="count" v-model:page="queryParams.current" v-model:limit="queryParams.size"
                @pagination="getList" />
    <!-- 文章内容详情弹窗 -->
    <el-dialog
        title="文章内容详情"
        v-model="dialogVisible"
        width="60%"
        :close-on-click-modal="false"
    >
      <div class="article-content-view">
        <v-md-preview class="md" :text="dialogContent"></v-md-preview>
      </div>
      <template #footer>
        <el-button @click="dialogVisible = false">关闭</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup lang="ts">
import "md-editor-v3/lib/style.css";
import {getIndexList, refreshAllArticle, deleteAllArticle, refreshArticle, deleteArticle} from '@/api/index';
import { Article, ArticleQuery } from '@/api/index/types';
import { messageConfirm, notifySuccess } from '@/utils/modal';
import {computed, onMounted, reactive, ref, toRefs} from 'vue';
computed(() => {
  return function (value: string | undefined) {
    return activeStatus.value == value ? "active-status" : "status";
  }
});
const data = reactive({
  count: 0,
  showSearch: true,
  loading: false,
  title: "",
  queryParams: {
    current: 1,
    size: 10,
    isDelete: 0,
  } as ArticleQuery,
  activeStatus: "all",
  articleIdList: [] as number[],
  indexList: [] as Article[],
});
let {
  count,
  showSearch,
  loading,
  queryParams,
  activeStatus,
  indexList,
} = toRefs(data);

// 弹窗相关状态
const dialogVisible = ref(false);
const dialogContent = ref('');

const handleDeleteAllArticle = () => {
  messageConfirm("确认清空所有索引").then(() => {
    deleteAllArticle().then(({ data }) => {
      if (data.flag) {
        notifySuccess(data.msg);
        getList();
      }
    });
  }).catch(() => { });
};
const handleRefresh = (id: number) => {
  refreshArticle(id).then(({ data }) => {
    if (data.flag) {
      notifySuccess(data.msg);
      getList();
    }
  });
};
const handleDelete = (id: number) => {
  deleteArticle(id).then(({ data }) => {
    if (data.flag) {
      notifySuccess(data.msg);
      getList();
    }
  });
};
const handleRefreshAllArticle = () => {
  messageConfirm("确认刷新全部索引").then(() => {
    refreshAllArticle().then(({ data }) => {
      if (data.flag) {
        notifySuccess(data.msg);
        getList();
      }
    });
  }).catch(() => { });
};
const getList = () => {
  loading.value = true;
  getIndexList(queryParams.value).then(({ data }) => {
    indexList.value = data.data.recordList;
    count.value = data.data.count;
    loading.value = false;
  })
};
const handleQuery = () => {
  queryParams.value.current = 1;
  getList();
};
const openContentDialog = (content: string) => {
  dialogContent.value = content;
  dialogVisible.value = true;
};
onMounted(() => {
  getList();
});
</script>

<style scoped>
.article-content-view {
  max-height: 600px;
  overflow-y: auto;
  padding: 15px;
  font-size: 14px;
  line-height: 1.8;
  white-space: pre-wrap;
  word-wrap: break-word;
  background-color: #f9fafc;
  border-radius: 4px;
}
</style>
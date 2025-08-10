<template>
  <el-config-provider :locale="zhCn" :size="size">
    <router-view />
  </el-config-provider>
</template>

<script setup lang="ts">
import axios from "axios";
import useStore from '@/store';
import { ElConfigProvider } from 'element-plus';
import zhCn from 'element-plus/es/locale/lang/zh-cn';
import type { EpPropMergeType } from "element-plus/es/utils/vue/props/types";
import { computed, onMounted } from 'vue';
import { report } from "./api/blog";
const { app } = useStore();
const size = computed(() => app.size as EpPropMergeType<StringConstructor, "default" | "small" | "large", never>);

onMounted(() => {
  report();
  const response = axios.get('https://restapi.amap.com/v3/weather/weatherInfo?key=13c859d6aa4903b9cea2feb1940a9b85&city=330100&extensions=base');
  response.then(res => {
    let weather = res.data.lives[0].weather;
    var favicon = document.getElementById('favicon');
    const iconWeatherMap = {
      '晴': '/sunny.svg',
      '多云': '/cloudy.svg',
      '阴': '/cloudy.svg',
      '阵雨': '/rainy.svg',
      '雷阵雨': '/rainy.svg',
      '雷阵雨伴有冰雹': '/rainy.svg',
      '雨夹雪': '/rainy.svg',
      '小雨': '/rainy.svg',
      '中雨': '/rainy.svg',
      '大雨': '/rainy.svg',
      '暴雨': '/rainy.svg',
      '大暴雨': '/rainy.svg',
      '特大暴雨': '/rainy.svg',
      '阵雪': '/snowy.svg',
      '小雪': '/snowy.svg',
      '中雪': '/snowy.svg',
      '大雪': '/snowy.svg',
      '暴雪': '/snowy.svg'
    }
    // @ts-ignore
    favicon.href = iconWeatherMap[weather];
  })
});
</script>


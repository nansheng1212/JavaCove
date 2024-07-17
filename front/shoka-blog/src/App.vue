<template>
  <Provider>
    <div class="app-wrapper">
      <Header></Header>
      <main class="main-wrapper">
        <router-view v-slot="{ Component, route }">
          <keep-alive>
            <component :is="Component" :key="route.path" />
          </keep-alive>
        </router-view>
      </main>
      <Footer></Footer>
      <Tool></Tool>
      <Search></Search>
      <Login></Login>
      <Register></Register>
      <Forget></Forget>
      <Phone></Phone>
      <Drawer></Drawer>
      <MusicPlayer></MusicPlayer>
      <ChatRoom></ChatRoom>
    </div>
  </Provider>
</template>

<script setup lang="ts">
import axios from "axios";
import Cookies from "js-cookie";
import { getBlogInfo, report } from "@/api/blogInfo";
import useStore from '@/store';
const { blog } = useStore();
onMounted(() => {
  console.log(
    "%c Java Cove %c By 俊 %c",
    "background:#e9546b ; padding: 1px; border-radius: 3px 0 0 3px;  color: #fff; padding:5px 0;",
    "background:#ec8c69 ; padding: 1px; border-radius: 0 3px 3px 0;  color: #000; padding:5px 0;",
    "background:transparent"
  );
  getBlogInfo().then(({ data }) => {
    blog.setBlogInfo(data.data);
    Cookies.set("siteConfig", JSON.stringify(data.data.siteConfig));
  });
  report();
  const response = axios.get('https://restapi.amap.com/v3/weather/weatherInfo?key=13c859d6aa4903b9cea2feb1940a9b85&city=330100&extensions=base');
  response.then(res => {
    let weather = res.data.lives[0].weather;
    var favicon = document.getElementById('favicon');
    const iconWeatherMap = {
      '晴': 'sunny.svg',
      '多云': 'cloudy.svg',
      '阴': 'cloudy.svg',
      '阵雨': 'rainy.svg',
      '雷阵雨': 'rainy.svg',
      '雷阵雨伴有冰雹': 'rainy.svg',
      '雨夹雪': 'rainy.svg',
      '小雨': 'rainy.svg',
      '中雨': 'rainy.svg',
      '大雨': 'rainy.svg',
      '暴雨': 'rainy.svg',
      '大暴雨': 'rainy.svg',
      '特大暴雨': 'rainy.svg',
      '阵雪': 'snowy.svg',
      '小雪': 'snowy.svg',
      '中雪': 'snowy.svg',
      '大雪': 'snowy.svg',
      '暴雪': 'snowy.svg'
    }
    // @ts-ignore
    favicon.href = iconWeatherMap[weather];
  })
})
</script>

<style scoped>
.app-wrapper {
  position: relative;
  min-height: 100vh;
  z-index: 0;
}

.main-wrapper {
  display: flex;
  flex-direction: column;
  width: 100%;
  padding: 0 0 8rem;
}
</style>

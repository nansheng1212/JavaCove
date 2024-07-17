<template>
  <n-modal class="bg" v-model:show="dialogVisible" preset="dialog" :show-icon="false" transform-origin="center"
    style="padding-bottom: 2rem;" :block-scroll="false">
    <n-input class="mt-11" placeholder="手机号" v-model:value="phoneForm.phone"></n-input>
    <n-input-group class="mt-11">
      <n-input placeholder="验证码" v-model:value="phoneForm.code" />
      <n-button color="#49b1f5" :disabled="flag" @click="sendCode">
        {{ timer == 0 ? '发送' : `${timer}s` }}
      </n-button>
    </n-input-group>
    <n-button class="mt-11" color="#4caf50" style="width:100%" @click="handleUpdate" :loading="loading">
      绑定
    </n-button>
  </n-modal>
</template>

<script setup lang="ts">
import { getCode } from '@/api/login';
import { updateUserPhone } from '@/api/user';
import { PhoneForm } from '@/api/user/types';
import useStore from "@/store";
import { useIntervalFn } from '@vueuse/core';
const { app, user } = useStore();
const data = reactive({
  timer: 0,
  flag: false,
  loading: false,
  phoneForm: {
    phone: "",
    code: "",
  } as PhoneForm,
});
const { timer, flag, loading, phoneForm } = toRefs(data);
const { pause, resume } = useIntervalFn(() => {
  timer.value--;
  if (timer.value <= 0) {
    // 停止定时器
    pause();
    flag.value = false;
  }
}, 1000, { immediate: false });
const start = (time: number) => {
  flag.value = true;
  timer.value = time;
  // 启动定时器
  resume();
};
const sendCode = () => {
  let reg = /^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/;
  if (!reg.test(phoneForm.value.phone)) {
    window.$message?.warning("手机号格式不正确");
    return;
  }
  start(60);
  getCode(phoneForm.value.phone).then(({ data }) => {
    if (data.flag) {
      window.$message?.success("发送成功");
    }
  });
};
const dialogVisible = computed({
  get: () => app.phoneFlag,
  set: (value) => app.phoneFlag = value,
});
const handleUpdate = () => {
  if (phoneForm.value.code.trim().length != 6) {
    window.$message?.warning("请输入6位验证码");
    return;
  }
  loading.value = true;
  updateUserPhone(phoneForm.value).then(({ data }) => {
    if (data.flag) {
      window.$message?.success("修改成功");
      user.phone = phoneForm.value.phone;
      phoneForm.value = {
        phone: "",
        code: "",
      }
      app.phoneFlag = false;
    }
    loading.value = false;
  });
};
</script>

<style scoped></style>

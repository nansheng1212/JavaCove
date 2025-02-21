<template>
  <div class="page-header">
    <h1 class="page-title">个人中心</h1>
    <img class="page-cover" :src=siteConfig.userBackgroundImage alt="">
    <Waves></Waves>
  </div>
  <div class="bg">
    <div class="page-container">
      <div class="title">基本信息</div>
      <div class="info-container">
        <user-avatar class="avatar"></user-avatar>
        <div class="info mt-4">
          <n-form ref="formInstRef" label-align="left" :label-width="80" :model="userForm" :rules="rules">
            <n-form-item label="昵称" label-style="color: var(--text-color);" path="nickname">
              <n-input placeholder="输入您的昵称" v-model:value="userForm.nickname" />
            </n-form-item>
            <n-form-item label="个人网站" label-style="color: var(--text-color);" path="website">
              <n-input placeholder="请输入个人网站" v-model:value="userForm.webSite" />
            </n-form-item>
            <n-form-item label="简介" label-style="color: var(--text-color);" path="intro">
              <n-input placeholder="介绍一下自己吧" v-model:value="userForm.intro" />
            </n-form-item>
            <n-form-item label="手机号" label-style="color: var(--text-color);" path="phone">
              <n-input-group>
                <n-input placeholder="请输入手机号" disabled v-model:value="user.phone"></n-input>
                <n-button color="#49b1f5" v-if="user.phone" @click="app.phoneFlag = true">
                  修改手机号
                </n-button>
                <n-button color="#49b1f5" v-else @click="app.phoneFlag = true">
                  绑定手机号
                </n-button>
              </n-input-group>
            </n-form-item>
          </n-form>
          <n-button color="#3e999f" @click="handleUpdate">
            修改
          </n-button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import Cookies from "js-cookie";
import { updateUserInfo } from "@/api/user";
import { UserInfo } from "@/api/user/types";
import useStore from "@/store";
import { FormInst } from 'naive-ui';
const formInstRef = ref<FormInst | null>(null)
const { user, app } = useStore();
const router = useRouter();
const rules = {
  nickname: {
    required: true,
    message: "昵称不能为空",
  },
};
const userForm = ref<UserInfo>({
  nickname: user.nickname,
  intro: user.intro,
  webSite: user.webSite,
});
const data = reactive({
  siteConfig: {
    userBackgroundImage: ""
  }
});
const { siteConfig } = toRefs(data);
const handleUpdate = () => {
  formInstRef.value?.validate((errors) => {
    if (!errors) {
      updateUserInfo(userForm.value).then(({ data }) => {
        if (data.flag) {
          user.updateUserInfo(userForm.value);
          window.$message?.success("修改成功");
        }
      });
    }
  })
};
onMounted(() => {
  siteConfig.value = JSON.parse(Cookies.get("siteConfig") || "{}");
  if (!user.id) {
    router.push("/");
  }
})
</script>

<style lang="scss" scoped>
@use "@/assets/styles/mixin.scss" as *;

.title {
  font-size: 1.25rem;
  font-weight: 700;
}

.info-container {
  @include flex;
  flex-wrap: wrap;
  margin-top: 1rem;

  .avatar {
    display: inline-flex;
    width: 230px;
    height: 140px;
  }

  .info {
    width: 530px;
  }
}

@media (max-width: 850px) {
  .avatar {
    justify-content: center;
  }
}
</style>

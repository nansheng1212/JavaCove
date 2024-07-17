/**
 * 手机号
 */
export interface PhoneForm {
  /**
   * 手机号号
   */
  phone: string;
  /**
   * 验证码
   */
  code: string;
}

/**
 * 用户信息
 */
export interface UserInfo {
  /**
   * 昵称
   */
  nickname: string;
  /**
   * 个人网站
   */
  webSite: string;
  /**
   * 个人简介
   */
  intro: string;
}

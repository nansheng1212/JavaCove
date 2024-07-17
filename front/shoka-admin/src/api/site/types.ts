/**
 * 网站配置
 */
export interface SiteConfig {
  /**
   * 主键
   */
  id?: number;
  /**
   * 用户头像
   */
  userAvatar: string;
  /**
   * 游客头像
   */
  touristAvatar: string;
  /**
   * 网站名称
   */
  siteName: string;
  /**
   * 网站地址
   */
  siteAddress: string;
  /**
   * 网站简介
   */
  siteIntro: string;
  /**
   * 网站公告
   */
  siteNotice: string;
  /**
   * 建站日期
   */
  createSiteTime: string;
  /**
   * 备案号
   */
  recordNumber: string;
  /**
   * 作者头像
   */
  authorAvatar: string;
  /**
   * 网站作者
   */
  siteAuthor: string;
  /**
   * 文章默认封面
   */
  articleCover: string;
  /**
   * 关于我
   */
  aboutMe: string;
  /**
   * Github
   */
  github: string;
  /**
   * Gitee
   */
  gitee: string;
  /**
   * 哔哩哔哩
   */
  bilibili: string;
  /**
   * QQ
   */
  qq: string;
  /**
   * 是否评论审核 (0否 1是)
   */
  commentCheck: number;
  /**
   * 是否留言审核 (0否 1是)
   */
  messageCheck: number;
  /**
   * 是否开启打赏 (0否 1是)
   */
  isReward: number;
  /**
   * 微信二维码
   */
  weiXinCode: string;
  /**
   * 支付宝二维码
   */
  aliCode: string;
  /**
   * 社交列表
   */
  socialList: string;
  /**
   * 登录方式
   */
  loginList: string;
  /**
   * 是否开启音乐播放器 (0否 1是)
   */
  isMusic: number;
  /**
   * 网易云歌单id
   */
  musicId: string;
  /**
   * 是否开启聊天室 (0否 1是)
   */
  isChat: number;
  /**
   * websocket链接
   */
  websocketUrl: string;

  /**
   * 文章归档页背景图片
   */
  archiveBackgroundImage: string;

  /**
   * 文章分类页背景图片
   */
  categoryBackgroundImage: string;

  /**
   * 文章标签页背景图片
   */
  tagBackgroundImage: string;

  /**
   * 娱乐说说页背景图片
   */
  talkBackgroundImage: string;

  /**
   * 娱乐相册页背景图片
   */
  photoBackgroundImage: string;

  /**
   * 娱乐图床页背景图片
   */
  pictureBackgroundImage: string;

  /**
   * 友链页背景图片
   */
  friendBackgroundImage: string;

  /**
   * 留言板页背景图片
   */
  messageBackgroundImage: string;

  /**
   * 关于页背景图片
   */
  aboutBackgroundImage: string;

  /**
   * 用户页背景图片
   */
  userBackgroundImage: string;

  img: string;
}

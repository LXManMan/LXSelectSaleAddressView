//
//  LBService.h
//  hah
//
//  Created by chuanglong02 on 16/5/11.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface LBService : NSObject

#pragma mark----秘笈-----
/**
 *  父母助手一级界面
 *
 *  @param paramDic
 *
 *  @return 参数 childId
 */
+ (NSString*)getHelperAction:(NSMutableDictionary*)paramDic;

/**
 *  父母助手消息界面
 */
+(NSString *)msgHelperAction:(NSMutableDictionary *)paramDic;
/**
 *  父母助手 提交身高体重
 *
 *  @param NSString
 *
 *  @return
 */
+ (NSString *)boxHelperAction:(NSMutableDictionary *)paramDic;
/**
 *  教育资讯一级界面
 */
+(NSString *)getEducInfoAction:(NSMutableDictionary *)paramDic;

/**
 *  教育资讯二级界面
 */
+(NSString *)getByIdEducInfoAction:(NSMutableDictionary *)paramDic;

/**
 *  教育资讯二级界面 评论
 */
+(NSString *)addEducCommentAction:(NSMutableDictionary *)paramDic;
/**
 *  秘笈添加收藏
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)addInfoFavoriteAction:(NSMutableDictionary *)paramDic;
/**
 *  秘笈删除收藏
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)delInfoFavoriteAction:(NSMutableDictionary *)paramDic;

/**
 *  教育资讯二级界面 删除评论
 */
+(NSString *)deleteEducCommentAction:(NSMutableDictionary *)paramDic;
/**
 *  育儿心经一级界面
 */
+(NSString *)getExamAction:(NSMutableDictionary *)paramDic;
/**
 *  育儿心经提交答案
 *
 *  @param NSString
 *
 *  @return
 */
+(NSString *)getScoreExamAction:(NSMutableDictionary *)paramDic;
/**
 *  育儿心经一键添加到课程
 */
+(NSString *)addCustLessonAction:(NSMutableDictionary *)paramDic;
/**
 *  返回反馈信息
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)findInfoFeedbackAction:(NSMutableDictionary *)paramDic;
/**
 *  身高体重
 *
 *  @param CGSize  string   suffixString
 *
 *  @return string
 */
+ (NSAttributedString *)stringWithOriginalString:(NSString *)string  SuffixString:(NSString *)suffix font:(UIFont *)font;
/**
 *  计算动态高度
 *
 *  @param text pa
 *  @param font <#font description#>
 *  @param size <#size description#>
 *
 *  @return <#return value description#>
 */
+(CGSize)stringSizeWithFont:(UIFont *)font string:(NSString *)string width:(CGFloat)width;

/**
 *  计算动态宽度
 *
 *  @param NSString <#NSString description#>
 *
 *  @return <#return value description#>
 */
+(CGFloat)widthOfString:(NSString *)string font:(UIFont *)font height:(CGFloat)height;

/**
 *  文字解密
 */
+ (NSString *)decodeWithUnicode:(NSString *)description sepaString:(NSString *)sepaStr;
/**
 *  Unicode 转码
 *
 *  @param unicode <#unicode description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)stringFromUnicode:(NSString *)unicode;
/**
 *  字符串转为16进制
 *
 *  @param string   <#string description#>
 *  @param ecodeing <#ecodeing description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)unicodeFromString:(NSString *)string;
#pragma mark  ----西市---
/**
 *  初始化热词
 *
 *  @return <#return value description#>
 */
+(NSString *)homeProductAction;

/**
 *  附近机构搜索
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)indexOrgAction:(NSMutableDictionary *)paramDic;
/**
 *  店铺详情
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)getByOrgIdCourse:(NSMutableDictionary *)paramDic;
/**
 *  西市店铺收藏
 *
 *  @param NSString 11
 *
 *  @return <#return value description#>
 */
+(NSString *)collectionStore:(NSMutableDictionary *)paramDic;
/**
 *  西市店铺取消收藏
 *
 *  @param NSString <#NSString description#>
 *
 *  @return <#return value description#>
 */
+ (NSString*)cancelCollection:(NSMutableDictionary*)parseDic;
/**
 *  搜索西市 类型
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */

+(NSString *)queryProductAction:(NSMutableDictionary *)paramDic;

/**
 *
 *
 *  @param paramDic 机构详情
 *
 *  @return <#return value description#>
 */
+(NSString *)detialCourseAction:(NSMutableDictionary *)paramDic;

+(NSString *)addCartsAction:(NSMutableDictionary *)paramDic;
/**
 *  首页类别搜索
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)typeProductAction:(NSMutableDictionary *)paramDic;
/**
 *  年龄类别搜索
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)subProductAction:(NSMutableDictionary *)paramDic;
/**
 *  商品收藏
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)addCartAction:(NSMutableDictionary *)paramDic;
/**
 *  取消商品收藏
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)delCartAction:(NSMutableDictionary *)paramDic;
/**
 *  商品收藏列表
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)listCartAction:(NSMutableDictionary *)paramDic;

/**
 *  商品详情
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)proLessonAdviertiseAction:(NSMutableDictionary *)paramDic;
#pragma marks ---日记 ----
/**
 *  日志初始化
 */

+ (NSString*)diaryInitialization:(NSMutableDictionary*)paramDic;
/**
 *  日志删除
 */
+ (NSString*)diaryDelete:(NSMutableDictionary*)paramDic;

/**
 *  日志 点击年标签 获取月信息
 */
+ (NSString*)clickYearGetMonthInfomation:(NSMutableDictionary*)paramDic;
/**
 *  上传图片日志
 */

+ (NSString*)upLoadPictureAddAcrticle:(NSMutableDictionary*)paramDic;
/**
 *  上传文字日志
 */
+ (NSString*)upLoadTextAcrticle:(NSMutableDictionary*)paramDic;
/**
 *  上传log日志
 */
+ (NSString*)upLoadUserLogCollectionInfo:(NSMutableDictionary*)paramDic;
#pragma mark - 课堂
/**
 *  获取无参的网址
 */
+ (NSString *)getURLString:(NSString *)api;
/**
 *  获取加密的验证码
 */
+ (NSString *)fetchEncryptionedTestcode;
/**
 *  获取验证码
 */
+ (NSString *)fetchTestcode:(NSMutableDictionary *)paramDic;
/**
 *  跳过
 */
+ (NSString *)skip;
/**
 *  验证码登陆
 */
+ (NSString *)login:(NSMutableDictionary *)paramDic;
/**
 *  密码登录
 */
+ (NSString *)loginByPassword:(NSMutableDictionary *)paramDic;
/**
 *  注册
 */
+ (NSString *)regist:(NSMutableDictionary *)paramDic;
/**
 *  下一步
 */
+ (NSString *)next:(NSMutableDictionary *)paramDic;
/**
 *  重置密码
 */
+ (NSString *)resetPassword:(NSMutableDictionary *)paramDic;
/**
 *  修改密码
 */
+ (NSString *)modifyPassword:(NSMutableDictionary *)paramDic;
/**
 *  更换手机号码
 */
+ (NSString *)modifyPhoneNumber:(NSMutableDictionary *)paramDic;
/**
 *  课堂数据
 */
+ (NSString *)classData:(NSMutableDictionary *)paramDic;
/**
 *  删除课堂
 */
+ (NSString *)deleteClass:(NSMutableDictionary *)paramDic;
/**
 *  删除推荐课堂
 */
+ (NSString *)deleteRecommendedClass:(NSMutableDictionary *)paramDic;
/**
 *  置顶课堂
 */
+ (NSString *)moveTopClass:(NSMutableDictionary *)paramDic;
/**
 *  删除收藏
 */
+ (NSString *)deleteCollection:(NSMutableDictionary *)paramDic;
/**
 *  添加收藏
 */
+ (NSString *)addCollection:(NSMutableDictionary *)paramDic;
/**
 *  生理发育/认知能力/社交能力/语言能力/精细动作
 */
+ (NSString *)fetchClass:(NSMutableDictionary *)paramDic;
/**
 *  添加到课堂
 */
+ (NSString *)addClass;
/**
 *  搜索
 */
+ (NSString *)search;
/**
 *  排序筛选
 */
+ (NSString *)searchSifting:(NSMutableDictionary *)paramDic;

//
+ (NSString *)mySearchSiftings;
/**
 *  基本信息
 */
+ (NSString *)basicInfo:(NSMutableDictionary *)paramDic;
/**
 *  签到
 */
+ (NSString *)sign:(NSMutableDictionary *)paramDic;
/**
 *  动画乐园/文章咨询
 */
+ (NSString *)myCollections:(NSMutableDictionary *)paramDic;
/**
 *  意见反馈
 */
+ (NSString *)adviceFeedback:(NSMutableDictionary *)paramDic;
/**
 *  宝宝列表信息
 */
+ (NSString *)listInfoForBaby:(NSMutableDictionary *)paramDic;
/**
 *  删除宝宝
 */
+ (NSString *)deleteBaby:(NSMutableDictionary *)paramDic;
/**
 *  获取要修改的宝宝的信息
 */
+ (NSString *)fetchBabyInfo:(NSMutableDictionary *)paramDic;
/**
 *  添加宝宝
 */
+ (NSString *)addBaby;
/**
 *  修改宝宝
 */
+ (NSString *)modifyBabyInfo;
/**
 *  获取推广码
 */
+ (NSString *)fetchPromoCode:(NSMutableDictionary *)paramDic;
/**
 *  发送推广码
 */
+ (NSString *)sendPromoCode:(NSMutableDictionary *)paramDic;
/**
 *  验证码编码
 */
+ (NSString *)codeWithValidate:(NSString *)validate key:(NSString *)key;
/**
 *  获取版本号
 */
+ (NSString *)getVersion;
/**
 *  ToJson
 */
+ (NSString *)jsonStringFromArray:(NSMutableArray *)array;
+(NSString*)ObjectTojsonString:(id)object;
/**
 *  获取用户名
 */
+ (NSString *)userNameFromString:(NSString *)string;
/**
 *  日期转换
 *
 *  @param dateString <#dateString description#>
 *  @param formate    <#formate description#>
 *
 *  @return <#return value description#>
 */
+ (NSString *)formateDate:(NSString *)dateString withFormate:(NSString *) formate;
/**
 *  加载动画
 */
+(UIWebView *)loadingAnimation;
#pragma mark---判断为空----
+(BOOL )checkforNULL:(NSString *)string;
/**
 *  页面的数据收集
 */
+ (NSString*)viewInformationCollection:(NSString*)pageNumber withState:(BOOL)stateNumber withDate:(NSString*)dateStr;
//视频页面离开的数据收集
+ (NSString*)viewInformationCollection:(NSString*)pageNumber withState:(BOOL)stateNumber withTitle:(NSString *)title videoID:(NSString *)videoID date:(NSString*)dateStr ;
/**
 *  普通按钮(B)
 */
+ (NSString*)generalButtonInformationCollection:(NSString*)buttonNumber withDate:(NSString*)dateStr;
/**
 *  可输入按钮(T)
 */
+ (NSString*)canInputButtonInformationCollection:(NSString*)collectionNumber withContent:(NSString*)inputContent andUserOperationTime:(NSString*)opretionTime andBackDataNumber:(NSString*)backDataNumber andBackDataTime:(NSString*)backDate;
/**
 *  课程相关(C)
 b：用户行为(“0”代表进入，“1”代表退出)
 */
+ (NSString*)courseInformationCollection:(NSString*)collectionNumber withUserState:(BOOL)userState andCourseId:(NSString*)CourseId andIntoCourseTime:(NSString*)intoCourseTime;
/**
 *  公共按钮(B)
 */
+ (NSString*)publicButtonInformationCollection:(NSString*)publicButtonNumber withClickButtonDate:(NSString*)clickButtonTime;
/**
 * 统计数据的写入文件
 */
+ (void)writeStatisticalDataIntoFile:(NSString*)collectionData;
/**
 *  获取当前的时间
 */
+ (NSString*)receiveCurrentTime;

/**
 *  错误上传日志
 */
+ (NSString *)errorLogUpload:(NSMutableDictionary *)paramDic;
/**
 *  日志删除
 */
+ (NSString*)startImage:(NSMutableDictionary*)paramDic;

/**
 * 活动详情界面
 */
+ (NSString*)activityDetailsInfo:(NSMutableDictionary*)paramDic;

@end

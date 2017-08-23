//
//  LBService.m
//  hah
//
//  Created by chuanglong02 on 16/5/11.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import "LBService.h"

@implementation LBService
+(NSString*)getPathString
{
    return [NSString stringWithFormat:@"%@%@", SERVER_PROTOCOL, SERVER_URL] ;
}

+(NSString*)getParaString:(NSMutableDictionary*)paramDic
{
    NSString *outPutStr = @"";
    //拼接请求参数
    for (int i = 0; i < paramDic.allKeys.count;i++) {
        NSString *key = [paramDic.allKeys objectAtIndex:i];
        NSString *value = [paramDic valueForKey:key];
        if (i == 0) {
            outPutStr = [outPutStr stringByAppendingFormat:@"%@=%@",key,value];
        }else{
            outPutStr = [outPutStr stringByAppendingFormat:@"&%@=%@",key,value];
        }
    }
    return outPutStr;
}

+(NSString*)getURLString:(NSString*)api param:(NSMutableDictionary*)paramDic
{
    NSString *url = [NSString stringWithFormat:@"%@%@?%@",[self getPathString],api,[self getParaString:paramDic]] ;
    
    return  [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}
#pragma mark ----------秘笈----------
/**
 *  父母助手一级界面
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)getHelperAction:(NSMutableDictionary *)paramDic{
    return [self getURLString:@"getHelper.action" param:paramDic];
}
/**
 *  父母助手消息界面
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)msgHelperAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"msgHelper.action" param:paramDic];
}
/**
 *  父母助手 提交身高体重
 *
 *  @param NSString
 *
 *  @return
 */
+ (NSString *)boxHelperAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"boxHelper.action" param:paramDic];
}
/**
 *  教育资讯一级界面
 */
+(NSString *)getEducInfoAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"getEducInfo.action" param:paramDic];
}
/**
 *  教育资讯二级界面
 */
+(NSString *)getByIdEducInfoAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"getByIdEducInfo.action" param:paramDic];
}
/**
 *  教育资讯二级界面 增加评论
 */
+(NSString *)addEducCommentAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"addEducComment.action" param:paramDic];
}
/**
 *  教育资讯二级界面 删除评论
 */
+(NSString *)deleteEducCommentAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"deleteEducComment.action" param:paramDic];
}
/**
 *  秘笈添加收藏
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)addInfoFavoriteAction:(NSMutableDictionary *)paramDic{
     return [self getURLString:@"addInfoFavorite.action" param:paramDic];
}
/**
 *  秘笈删除收藏
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)delInfoFavoriteAction:(NSMutableDictionary *)paramDic{
    return [self getURLString:@"delInfoFavorite.action" param:paramDic];
}

/**
 *  育儿心经一级界面
 */
+(NSString *)getExamAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"getExam.action" param:paramDic];
}
/**
 *  育儿心经提交答案
 *
 *  @param NSString
 *
 *  @return
 */
+(NSString *)getScoreExamAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"scoreExam.action" param:paramDic];
}
/**
 *  育儿心经一键添加到课程
 */
+(NSString *)addCustLessonAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"addCustLesson.action" param:paramDic];
}
+(NSString *)findInfoFeedbackAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"findInfoFeedback.action" param:paramDic];
}
#pragma mark---西市----
/**
 *  热词 广告
 *
 *  @return <#return value description#>
 */
+(NSString *)homeProductAction
{
    return [self getURLString:@"homeProduct.action" ];
}
+(NSString *)indexOrgAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"indexOrg.action" param:paramDic];
}
+(NSString *)getByOrgIdCourse:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"getByOrgIdCourse.action" param:paramDic];

}
+(NSString *)detialCourseAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"detialCourse.action" param:paramDic];
}
+(NSString *)addCartsAction:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"addCarts.action" param:paramDic];

}

//收藏界面接口
+(NSString *)collectionStore:(NSMutableDictionary *)paramDic
{
    return [self getURLString:@"showCarts.action" param:paramDic];
}

//取消商品收藏
+ (NSString *)cancelCollection:(NSMutableDictionary *)parseDic{
    return [self getURLString:@"deleteCarts.action" param:parseDic];
}

/**
 *  搜索
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)queryProductAction:(NSMutableDictionary *)paramDic
{
  return  [self getURLString:@"queryProduct.action" param:paramDic];

}
/**
 *   首页类别搜索
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)typeProductAction:(NSMutableDictionary *)paramDic
{
    return  [self getURLString:@"typeProduct.action" param:paramDic];

}
/**
 *  年龄类别搜索
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)subProductAction:(NSMutableDictionary *)paramDic
{
    return  [self getURLString:@"subProduct.action" param:paramDic];
    
}
/**
 *  商品收藏
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)addCartAction:(NSMutableDictionary *)paramDic
{
    return  [self getURLString:@"addCart.action" param:paramDic];
}
/**
 *   取消收藏
 *
 *  @param paramDic <#paramDic description#>
 *
 *  @return <#return value description#>
 */
+(NSString *)delCartAction:(NSMutableDictionary *)paramDic
{
    return  [self getURLString:@"delCart.action" param:paramDic];

}
+(NSString *)listCartAction:(NSMutableDictionary *)paramDic
{
    return  [self getURLString:@"listCart.action" param:paramDic];

}
+(NSString *)proLessonAdviertiseAction:(NSMutableDictionary *)paramDic{
    return  [self getURLString:@"proLessonAdviertise.action" param:paramDic];
}
#pragma marks ---日记 ----
/**
 *  日志初始化
 */

+ (NSString*)diaryInitialization:(NSMutableDictionary*)paramDic{
    return [self getURLString:@"contentAcrticle.action" param:paramDic];
}
/**
 *  日志删除
 */
+ (NSString*)diaryDelete:(NSMutableDictionary*)paramDic{
    return [self getURLString:@"deleteAcrticle.action" param:paramDic];
}

/**
 *  启动图片
 */
+ (NSString*)startImage:(NSMutableDictionary*)paramDic{
    return [self getURLString:@"holiday.action" param:paramDic];
}
/**
 *  日志 点击年标签 获取月信息
 */
+ (NSString*)clickYearGetMonthInfomation:(NSMutableDictionary*)paramDic{
    return [self getURLString:@"contentYearMonthAcrticle.action" param:paramDic];
}
/**
 *  上传图片日志
 */

+ (NSString*)upLoadPictureAddAcrticle:(NSMutableDictionary*)paramDic{
    return [self getURLString:@"addAcrticle.action" param:paramDic];
}
/**
 *  上传文字日志
 */
+ (NSString*)upLoadTextAcrticle:(NSMutableDictionary*)paramDic{
    return [self getURLString:@"addTextAcrticle.action" param:paramDic];
}
/**
 *  上传系统log日志
 */
+ (NSString*)upLoadUserLogCollectionInfo:(NSMutableDictionary*)paramDic{
    return [self getURLString:@"loggerFile.action" param:paramDic];
}
/**
 *  错误日志上传
 *
 *  @param paramDic <#paramDic description#>
 */
+ (NSString *)errorLogUpload:(NSMutableDictionary *)paramDic
{
  
    return [self getURLString:@"errorFile.action" param:paramDic];
    
}

/**
 *  拼接 身高体重
 *
 *  @param CGSize <#CGSize description#>
 *
 *  @return <#return value description#>
 */
+ (NSAttributedString *)stringWithOriginalString:(NSString *)string  SuffixString:(NSString *)suffix font:(UIFont *)font;
{
    if ([string isEqualToString:@""] || string ==nil) {
        string = @"0.0";
    }
    NSString *totalStr = [string stringByAppendingString:suffix];
    NSRange range = [totalStr rangeOfString:suffix options:NSBackwardsSearch];
    if (range.location != NSNotFound || range.length != 0) {
        NSMutableAttributedString *AttributedStrs = [[NSMutableAttributedString alloc]initWithString:totalStr];
        [AttributedStrs addAttribute:NSFontAttributeName
         
                                       value:font
         
                                       range:NSMakeRange(range.location , range.length)];

        return AttributedStrs;
    }
    
    return nil;

}
#pragma mark---动态高度---
+(CGSize)stringSizeWithFont:(UIFont *)font string:(NSString *)string width:(CGFloat)width
{
    
    
    CGRect rect =[string boundingRectWithSize:CGSizeMake(width, 10000) options: NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return rect.size;
}

#pragma mark ---计算动态宽度
+(CGFloat)widthOfString:(NSString *)string font:(UIFont *)font height:(CGFloat)height
{
    NSDictionary * dict=[NSDictionary dictionaryWithObject: font forKey:NSFontAttributeName];
    CGRect rect=[string boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
    return rect.size.width;
}
#pragma mark---文字加密解密--
+ (NSString *)decodeWithUnicode:(NSString *)description sepaString:(NSString *)sepaStr;
{
//    description = [description stringByReplacingOccurrencesOfString:@"0x" withString:@"\\\\"];
    NSString *tempstr = [NSString string];
    NSArray *studyy =[description componentsSeparatedByString:sepaStr];
    for (NSString *temp in studyy) {
        if (temp.length  == 4) {
            tempstr = [tempstr stringByAppendingString:temp];
        }
    }
    tempstr = [tempstr stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSMutableData *commandToSend= [[NSMutableData alloc] init];
    
    unsigned char whole_byte;
    
    char byte_chars[3] = {'\0','\0','\0'};
    
    int i;
    
    for (i=0; i < [tempstr length]/2; i++) {
        
        byte_chars[0] = [tempstr characterAtIndex:i*2];
        
        byte_chars[1] = [tempstr characterAtIndex:i*2+1];
        
        whole_byte = strtol(byte_chars, NULL, 16);
        
        [commandToSend appendBytes:&whole_byte length:1];
        
    }
  
    NSString *unicodeDes = [[NSString alloc]initWithData:commandToSend encoding:(NSUTF16StringEncoding)];
    return unicodeDes;
}
/**
 *  Unicode转字符串
 */
+(NSString *)stringFromUnicode:(NSString *)unicode
{
    NSString *tempstr = [NSMutableString string];
    NSArray *studyy =[unicode componentsSeparatedByString:@"0xu"];
    for (NSString *temp in studyy) {
        if (temp.length  == 4) {
            
            tempstr = [tempstr stringByAppendingString:[self stringFromHexString:temp with:NSUTF16BigEndianStringEncoding]] ;
        }
        if (temp.length == 2) {
            tempstr = [tempstr stringByAppendingString:[self stringFromHexString:temp with:4]] ;
        }
        
        
    }
   
    tempstr = [tempstr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]; //去除掉首尾的空白字符和换行字符
    
        tempstr = [tempstr stringByReplacingOccurrencesOfString:@" " withString:@""];
    
        tempstr = [tempstr stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
     
    return tempstr;
}
#pragma mark---- 16进制与字符串的转换----
+ (NSString *)stringFromHexString:(NSString *)hexString with:(CGFloat)ecodeing { //
    
    char *myBuffer = (char *)malloc((int)[hexString length] / 2 + 1);
    bzero(myBuffer, [hexString length] / 2 + 1);
    for (int i = 0; i < [hexString length] - 1; i += 2) {
        unsigned int anInt;
        NSString * hexCharStr = [hexString substringWithRange:NSMakeRange(i, 2)];
        NSScanner * scanner = [[NSScanner alloc] initWithString:hexCharStr];
        [scanner scanHexInt:&anInt];
        myBuffer[i / 2] = (char)anInt;
    }
    NSString *unicodeString = [NSString stringWithCString:myBuffer encoding:ecodeing];
    return unicodeString;
    
    
}
+(NSString *)unicodeFromString:(NSString *)string
{
    NSString *initalString =   [self hexStringFromString:string with:NSUTF16BigEndianStringEncoding];
    NSString *totalString =[[NSString alloc]init];
     NSString * stringUnion = @"0xu";
    for (int i = 0; i<initalString.length/4; i++) {
        NSString *tempStr =[initalString substringWithRange:NSMakeRange(4 * i, 4)];
        if ([[tempStr substringToIndex:2] isEqualToString:@"00"]) {
            tempStr = [tempStr substringFromIndex:2];
        }
        totalString = [totalString stringByAppendingFormat:@"%@%@",stringUnion,tempStr];
    }
   
    return totalString;
}
//普通字符串转换为十六进制的。

+ (NSString *)hexStringFromString:(NSString *)string with:(CGFloat)ecodeing{
    NSData *myD = [string dataUsingEncoding:ecodeing];
    Byte *bytes = (Byte *)[myD bytes];
    //下面是Byte 转换为16进制。
    NSString *hexStr=@"";
    for(int i=0;i<[myD length];i++)
        
    {
        NSString *newHexStr = [NSString stringWithFormat:@"%x",bytes[i]&0xff];///16进制数
        
        if([newHexStr length]==1)
            
            hexStr = [NSString stringWithFormat:@"%@0%@",hexStr,newHexStr];
        
        else
            
            hexStr = [NSString stringWithFormat:@"%@%@",hexStr,newHexStr];
    }
    return hexStr;
}

#pragma mark - 课堂
/**
 *  获取无参的网址
 */
+ (NSString *)getURLString:(NSString *)api {
    NSString *url = [NSString stringWithFormat:@"%@%@", [self getPathString], api];
    return [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}
/**
 *  获取加密的验证码
 */
+ (NSString *)fetchEncryptionedTestcode {
    return [self getURLString:@"loginValidation.action"];
}
/**
 *  获取验证码
 */
+ (NSString *)fetchTestcode:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"loginValidationMobile.action" param:paramDic];
}
/**
 *  跳过
 */
+ (NSString *)skip {
    return [self getURLString:@"skiperLessonContent.action"];
}
/**
 *  验证码登陆
 */
+ (NSString *)login:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"loginer.action" param:paramDic];
}
/**
 *  密码登录
 */
+ (NSString *)loginByPassword:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"loginerByPassword.action" param:paramDic];
}
/**
 *  注册
 */
+ (NSString *)regist:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"addCustomer.action" param:paramDic];
}
/**
 *  下一步
 */
+ (NSString *)next:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"validCustomer.action" param:paramDic];
}
/**
 *  重置密码
 */
+ (NSString *)resetPassword:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"modifyPasswordCustomer.action" param:paramDic];
}
/**
 *  修改密码
 */
+ (NSString *)modifyPassword:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"modifyPasswordByIdCustomer.action" param:paramDic];
}
/**
 *  更换手机号码
 */
+ (NSString *)modifyPhoneNumber:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"changeMobileCustomer.action" param:paramDic];
}
/**
 *  课堂数据
 */
+ (NSString *)classData:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"customerLessonContent.action" param:paramDic];
}
/**
 *  删除课堂
 */
+ (NSString *)deleteClass:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"deleteCustLesson.action" param:paramDic];
}
/**
 *  删除推荐课堂
 */
+ (NSString *)deleteRecommendedClass:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"ignoreCustLesson.action" param:paramDic];
}
/**
 *  置顶课堂
 */
+ (NSString *)moveTopClass:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"topCustLesson.action" param:paramDic];
}
/**
 *  删除收藏
 */
+ (NSString *)deleteCollection:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"delLessonFavorite.action" param:paramDic];
}
/**
 *  添加收藏
 */
+ (NSString *)addCollection:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"addLessonFavorite.action" param:paramDic];
}
/**
 *  生理发育/认知能力/社交能力/语言能力/精细动作
 */
+ (NSString *)fetchClass:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"customerByTypeLessonContent.action" param:paramDic];
}
/**
 *  添加到课堂
 */
+ (NSString *)addClass {
    return [self getURLString:@"addCustLesson.action"];
}
/**
 *  搜索
 */
+ (NSString *)search {
    return [self getURLString:@"getLessonSearch.action"];
}

//搜索结果界面的排序结果请求
+ (NSString *)searchSifting:(NSMutableDictionary *)paramDic{
    return [self getURLString:@"infoFind.action"param:paramDic];
}

+ (NSString*)mySearchSiftings{
    return [self getURLString:@"infoFind.action"];
}

/**
 *  基本信息
 */
+ (NSString *)basicInfo:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"centerChild.action" param:paramDic];
}
/**
 *  签到
 */
+ (NSString *)sign:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"signChild.action" param:paramDic];
}
/**
 *  动画乐园/文章咨询
 */
+ (NSString *)myCollections:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"getLessonFavorite.action" param:paramDic];
}
/**
 *  意见反馈
 */
+ (NSString *)adviceFeedback:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"addFeedback.action" param:paramDic];
}

/**
 *  宝宝列表信息
 */
+ (NSString *)listInfoForBaby:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"searchChild.action" param:paramDic];
}
/**
 *  删除宝宝
 */
+ (NSString *)deleteBaby:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"deleteChild.action" param:paramDic];
}
/**
 *  获取要修改的宝宝的信息
 */
+ (NSString *)fetchBabyInfo:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"getChild.action" param:paramDic];
}
/**
 *  添加宝宝
 */
+ (NSString *)addBaby {
    return [self getURLString:@"addChild.action"];
}
/**
 *  修改宝宝
 */
+ (NSString *)modifyBabyInfo {
    return [self getURLString:@"updateChild.action"];
}
/**
 *  获取推广码
 */
+ (NSString *)fetchPromoCode:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"getContriveCustomer.action" param:paramDic];
}
/**
 *  发送推广码
 */
+ (NSString *)sendPromoCode:(NSMutableDictionary *)paramDic {
    return [self getURLString:@"editContriveCustomer.action" param:paramDic];
}
/**
 *  验证码编码
 */
+ (NSString *)codeWithValidate:(NSString *)validate key:(NSString *)key {
   const char *validateChars = [validate cStringUsingEncoding:NSUTF8StringEncoding];
   const char *keyChars = [key
                    cStringUsingEncoding:NSUTF8StringEncoding];
    NSMutableString *codeValidate = [NSMutableString string];
    NSArray *array = @[@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"A", @"B", @"C", @"D", @"E", @"F"];
    if (strlen(validateChars) > 0) {
        for (NSInteger i = 0; i < strlen(validateChars); i++) {
            char ch = validateChars[i];
            if (strlen(keyChars) > 0) {
                for (NSInteger j = 0; j < strlen(keyChars); j++) {
                    ch = ch^keyChars[j];
                }
                [codeValidate appendFormat:@"%@", array[(ch >>4) & 0x0f]];
                [codeValidate appendFormat:@"%@", array[ch & 0x0f]];
            }
        }
    }
    return codeValidate;
}

/**
 *  获取版本号
 */
+ (NSString *)getVersion {
    return [self getURLString:@"iPhoneUpdateInfo.action"];
}

/**
 *  Tojson
 */
+ (NSString *)jsonStringFromArray:(NSMutableArray *)array
{
    NSError *error = nil;

    NSData *jsonDataaa = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    if ([jsonDataaa length] > 0 && error == nil){
        //NSData转换为String
        NSString * jsonString = [[NSString alloc] initWithData:jsonDataaa encoding:NSUTF8StringEncoding];
        return jsonString;
    }
    else if ([jsonDataaa length] == 0 &&
             error == nil){
    }
    else if (error != nil){
    }
    return nil;
}
+(NSString*)ObjectTojsonString:(id)object

{
    
    NSString *jsonString = [[NSString
                             alloc]init];
    
    NSError *error;
    
    NSData *jsonData = [NSJSONSerialization
                        dataWithJSONObject:object
                        
                        
                        options:NSJSONWritingPrettyPrinted
                        
                        
                        error:&error];
    
    if (! jsonData) {
    } else {
        jsonString = [[NSString
                       alloc] initWithData:jsonData
                      encoding:NSUTF8StringEncoding];
        
    }
    
    NSMutableString *mutStr = [NSMutableString
                               stringWithString:jsonString];
    
    NSRange range = {0,jsonString.length};
    
    [mutStr replaceOccurrencesOfString:@" "
                            withString:@""
                               options:NSLiteralSearch range:range];
    
    NSRange range2 = {0,mutStr.length};
    
    [mutStr replaceOccurrencesOfString:@"\n"
                            withString:@""
                               options:NSLiteralSearch range:range2];
    
    return mutStr;
    
}

/**
 *  获取用户名
 */
+ (NSString *)userNameFromString:(NSString *)string {
    if ([string rangeOfString:@"0xu"].location == NSNotFound) {
        return string;
    } else {
        if (![[string substringToIndex:3] isEqualToString:@"0xu"]) {
            return string;
        } else {
            NSMutableArray *subStringArray = [NSMutableArray arrayWithArray:[string componentsSeparatedByString:@"0xu"]];
            [subStringArray removeObject:@""];
            NSString *userName = [NSMutableString string];
            for (NSString *str in subStringArray) {
                if (str.length == 4) {
                    if ([str isEqualToString:@"4e00"]) {
                        userName = [userName stringByAppendingString:@"一"];
                    } else {
                        userName = [userName stringByAppendingString:[self stringFromHexString:str with:NSUTF16BigEndianStringEncoding]];
                    }
                } else if (str.length == 2) {
                    userName = [userName stringByAppendingString:[self stringFromHexString:str with:4]];
                } else {
                    return string;
                }
            }
            return userName;
        }
    }
}

+ (NSString *)formateDate:(NSString *)dateString withFormate:(NSString *)formate{
    {
        
        @try {
            //实例化一个NSDateFormatter对象
            NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
            [dateFormatter setDateFormat:formate];
            NSDate * nowDate = [NSDate date];
            NSTimeZone *zone = [NSTimeZone systemTimeZone];
            
            NSInteger interval = [zone secondsFromGMTForDate: nowDate];
            
            nowDate = [nowDate  dateByAddingTimeInterval: interval];
            /////  将需要转换的时间转换成 NSDate 对象
            NSDate * needFormatDate = [dateFormatter dateFromString:dateString];
            NSInteger intervalone = [zone secondsFromGMTForDate: needFormatDate];
            
            needFormatDate = [needFormatDate  dateByAddingTimeInterval: intervalone];
            /////  取当前时间和转换时间两个日期对象的时间间隔
            /////  这里的NSTimeInterval 并不是对象，是基本型，其实是double类型，是由c定义的:  typedef double NSTimeInterval;
            NSTimeInterval time = [nowDate timeIntervalSinceDate:needFormatDate];
            
            //// 再然后，把间隔的秒数折算成天数和小时数：
            NSString *dateStr = @"";
            
            if (time<=60) {  //// 1分钟以内的
                dateStr = @"刚刚";
            }else if(time<=60*60){  ////  一个小时以内的
                
                int mins = time/60;
                dateStr = [NSString stringWithFormat:@"%d分钟前",mins];
                
            }else  if(time<=60*60 *24)
            {
                int hours = time/60/60;
                dateStr = [NSString stringWithFormat:@"%d小时前",hours];
            }else
            {
                NSTimeInterval secondsPerDay = 24 * 60 * 60;
                NSDate *yesterDay =  [[NSDate alloc] initWithTimeIntervalSinceNow:-secondsPerDay];
                NSDate *qinatian =  [[NSDate alloc] initWithTimeIntervalSinceNow:- 2 *secondsPerDay];
                [dateFormatter setDateFormat:@"YYYY/MM/dd"];
                NSString *yesterDayStr =[dateFormatter stringFromDate:yesterDay];
                NSString *qinatianStr =[dateFormatter stringFromDate:qinatian];
                NSString *nowDateStr =[dateFormatter stringFromDate:needFormatDate];
                if ([nowDateStr isEqualToString:yesterDayStr]) {
                    dateStr = [NSString stringWithFormat:@"昨天"];
                    
                }else if ([nowDateStr isEqualToString:qinatianStr])
                {
                    dateStr = [NSString stringWithFormat:@"前天"];
                    
                }else
                {
                    [dateFormatter setDateFormat:@"yyyy"];
                    NSString * yearStr = [dateFormatter stringFromDate:needFormatDate];
                    NSString *nowYear = [dateFormatter stringFromDate:nowDate];
                    
                    if ([yearStr isEqualToString:nowYear]) {
                        ////  在同一年
                        [dateFormatter setDateFormat:@"MM月dd日"];
                        dateStr = [dateFormatter stringFromDate:needFormatDate];
                    }else{
                        [dateFormatter setDateFormat:@"yyyy/MM/dd"];
                        dateStr = [dateFormatter stringFromDate:needFormatDate];
                    }
                    
                }
                
            }
            
            
            
            return dateStr;
        }
        @catch (NSException *exception) {
            return @"";
        }
        
    }
}
+(UIWebView *)loadingAnimation
{
    UIWebView *view=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 61, 61)];
    view.alpha = 1;
    view.userInteractionEnabled = NO;//用户不可交互
    NSData *gif = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"media_progress" ofType:@"gif"]];
    view.backgroundColor = [UIColor clearColor];
    view.opaque = NO;
    [view loadData:gif MIMEType:@"image/gif" textEncodingName:@"" baseURL:[NSURL URLWithString:@""]];
    return view;
}
+(BOOL )checkforNULL:(NSString *)string
{
    if (string  == nil || [string isEqualToString:@""] || [string isEqualToString:@"null"] ||string  == NULL) {
        return YES;
    }
    return NO;
}


/**
 *  页面的数据收集
 */
+ (NSString*)viewInformationCollection:(NSString*)pageNumber withState:(BOOL)stateNumber withDate:(NSString*)dateStr{
    NSString *SplitLine = @"|";
    NSString *pageCollect = [SplitLine stringByAppendingFormat:@"%@,%d,%@",pageNumber,stateNumber,dateStr];
    return pageCollect;
    
}
+ (NSString*)viewInformationCollection:(NSString*)pageNumber withState:(BOOL)stateNumber withTitle:(NSString *)title videoID:(NSString *)videoID date:(NSString*)dateStr
{
    NSString *SplitLine = @"|";
    NSString *pageCollect = [SplitLine stringByAppendingFormat:@"%@,%d,%@,%@,%@",pageNumber,stateNumber,title,videoID,dateStr];
    return pageCollect;
}
/**
 *  普通按钮(B)
 */
+ (NSString*)generalButtonInformationCollection:(NSString*)buttonNumber withDate:(NSString*)dateStr{
    NSString *SplitLine = @"|";
    NSString *generalButtonCollect = [SplitLine stringByAppendingFormat:@"%@,%@",buttonNumber,dateStr];
    return generalButtonCollect;
}
/**
 *  可输入按钮(B)
 */
+ (NSString*)canInputButtonInformationCollection:(NSString*)collectionNumber withContent:(NSString*)inputContent andUserOperationTime:(NSString*)opretionTime andBackDataNumber:(NSString*)backDataNumber andBackDataTime:(NSString*)backDate{
    NSString *SplitLine = @"|";
    NSString *collectNumber = @"TR";
    NSString *canInputButtonCollect = [SplitLine stringByAppendingFormat:@"%@,%@,%@|%@,%@,%@",collectionNumber,inputContent,opretionTime,collectNumber,backDataNumber,backDate];
    return canInputButtonCollect;
}
/**
 *  课程相关(C)
 b：用户行为(“0”代表进入，“1”代表退出)
 */
+ (NSString*)courseInformationCollection:(NSString*)collectionNumber withUserState:(BOOL)userState andCourseId:(NSString*)courseId andIntoCourseTime:(NSString*)intoCourseTime{
    NSString *SplitLine = @"|";
    NSString *couserinfoCollection = [SplitLine stringByAppendingFormat:@"%@,%d,ID:%@,%@",collectionNumber,userState,courseId,intoCourseTime];
    return couserinfoCollection;
    
}
/**
 *  公共按钮(G)
 */
+ (NSString*)publicButtonInformationCollection:(NSString*)publicButtonNumber withClickButtonDate:(NSString*)clickButtonTime{
    NSString *SplitLine = @"|";
    NSString *pulicButton = [SplitLine stringByAppendingFormat:@"%@,%@",publicButtonNumber,clickButtonTime];
    return pulicButton;
}
/**
 * 统计数据的写入文件
 */
+ (void)writeStatisticalDataIntoFile:(NSString*)collectionData{
    NSString *documentpath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)firstObject];
    NSString *fileName = [NSString stringWithFormat:@"diary.txt"];//注意不是NSData!
    NSString *testDirectoryPath =[documentpath stringByAppendingPathComponent:fileName];
    //取出原来diary.txt内的内容
    NSString *alreadyExistText = [[NSString alloc]initWithContentsOfFile:testDirectoryPath encoding:NSUTF8StringEncoding error:nil];
    //拼接文本内容
    NSString *testText = [alreadyExistText stringByAppendingString:collectionData];
    NSError *error = nil;
    BOOL isSuccess=[testText writeToFile:testDirectoryPath atomically:YES encoding:NSUTF8StringEncoding error:&error];
    //
    if (!isSuccess) {
    }
}
/**
 *  获取当前时间
 */
+ (NSString*)receiveCurrentTime{
    NSDate *currentDate = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    NSString *currentTime = [formatter stringFromDate:currentDate];
    return currentTime;
}

/**
 * 活动详情界面
 */
+ (NSString*)activityDetailsInfo:(NSMutableDictionary*)paramDic{
    return [self getURLString:@"actLessonAdviertise.action" param:paramDic];
}


@end

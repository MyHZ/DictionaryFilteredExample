//
//  NSObject+ParaProduct.m
//  layer
//
//  Created by user on 2018/4/12.
//  Copyright © 2018年 CocoaJason. All rights reserved.
//

#import "NSDictionary+ParaProduct.h"

@implementation NSDictionary (ParaProduct)

+ (NSDictionary *)FilteredDictionaryOfVariableBindings:(NSString *)firstArg, ...
{
    firstArg = [firstArg stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    NSArray *allPara = [firstArg componentsSeparatedByString:@","];
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithCapacity:allPara.count];
    
    if (firstArg)
    {
        __block va_list list;
        va_start(list, firstArg);
        
        for (id  _Nonnull para in allPara)
        {
            id arg = va_arg(list, id);
            if (arg)
            {
                if ([arg isKindOfClass:[NSString class]])
                {
                    arg = [(NSString *)arg stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
                    if ([(NSString *)arg length] != 0)
                    {
                        [dic setObject:arg forKey:para];
                    }
                }
                else
                {
                    [dic setObject:arg forKey:para];
                }
            }
        }
        va_end(list);
    }
    
    return dic;
}

@end

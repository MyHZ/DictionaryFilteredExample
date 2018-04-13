//
//  NSObject+ParaProduct.h
//  layer
//
//  Created by user on 2018/4/12.
//  Copyright © 2018年 CocoaJason. All rights reserved.
//

#import <Foundation/Foundation.h>

#define FilteredDictionaryOfVariableBindings(...) [NSDictionary FilteredDictionaryOfVariableBindings:@"" # __VA_ARGS__, __VA_ARGS__]

@interface NSDictionary (ParaProduct)

+ (NSDictionary *)FilteredDictionaryOfVariableBindings:(NSString *)firstArg, ...;

@end

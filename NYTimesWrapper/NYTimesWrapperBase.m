//
//  NYTimesWrapperBase.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/4/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesWrapperBase.h"

@interface NYTimesWrapperBase(NSStringExtensionMethods)
+ (NSString *)buildURLwithObj:(NYTimesWrapper *)obj;
@end

@implementation NYTimesWrapperBase

+ (void)asyncRequest:(NYTimesWrapper *)obj 
             success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
             failure:(NYTImesErrorBlock)failureBlock_
{    
    @try {
        NSString *apiKey = obj.apiKey;
        if (apiKey == nil)
        {
            NSException *exception = [NSException exceptionWithName: @"Argument Error"
                                                             reason: @"API-Key is either not set or not right"
                                                           userInfo: nil];
            @throw exception;
        }
    } @catch (NSException *e) {
        NSLog(@"Exception %@", e);
    }
    
    NSString *str = [self buildURLwithObj:obj];
    
    NSURL *url = [NSURL URLWithString:str];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [super asyncRequest:(NSURLRequest *)request 
                success:(NYTimesNSURLConnectionSuccessBlock)successBlock_
                failure:(NYTImesErrorBlock)failureBlock_];
}

@end

//
//  NYTimesArticle.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/3/11.
//  Copyright (c) 2011. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NYTimesWrapperBase.h"
#import "NYTimesWrapper.h"

@interface NYTimesArticle : NYTimesWrapperBase
{
    NSString *tag;
    NSString *foo;
}

@property (nonatomic, retain) NSString *tag;

+ (void)asyncRequest:(NSObject *)obj 
             success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
             failure:(NYTImesErrorBlock)failureBlock_ 
                 tag:(NSString *)t;

- (NSString *)foo;
- (void)setFoo:(NSString *)foo;

@end

//
//  NYTimesArticle.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/3/11.
//  Copyright (c) 2011. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSURLConnection+Blocks.h"
#import "NYTimesWrapper.h"

typedef void (^UpdateURLBlock)(void);

@interface NYTimesArticle : NSURLConnection
{
    NSString *tag;
}

@property (nonatomic, retain) NSString *tag;

+ (void)asyncRequest:(NSObject *)obj 
             success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
             failure:(NYTImesErrorBlock)failureBlock_ 
                 tag:(NSString *)t;

@end

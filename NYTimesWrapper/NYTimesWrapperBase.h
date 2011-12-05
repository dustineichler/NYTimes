//
//  NYTimesWrapperBase.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/4/11.
//  Copyright (c) 2011. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NYTimesWrapper.h"
#import "NSURLConnection+Blocks.h"

@interface NYTimesWrapperBase : NSURLConnection

+ (void)asyncRequest:(NSObject *)obj 
             success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
             failure:(NYTImesErrorBlock)failureBlock_;

@end

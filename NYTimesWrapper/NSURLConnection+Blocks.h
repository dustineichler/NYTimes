//
//  NSURLConnection+Blocks.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/3/11.
//  Copyright (c) 2011. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^NYTImesErrorBlock) (NSData *data, NSError *error);
typedef void (^NYTimesNSURLConnectionSuccessBlock) (NSData *data, NSURLResponse *response);

@interface NSURLConnection (Blocks)

+ (void)asyncRequest:(NSURLRequest *)request 
             success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
             failure:(NYTImesErrorBlock)failureBlock_;

@end

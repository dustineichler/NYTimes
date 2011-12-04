//
//  NSURLConnection+Blocks.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/3/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NSURLConnection+Blocks.h"

@implementation NSURLConnection (Blocks)

+ (void)asyncRequest:(NSURLRequest *)request 
             success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
             failure:(NYTImesErrorBlock)failureBlock_
{
    NSURLResponse *response = nil;
    NSError *error = nil;
    
    NSData *data = [NSURLConnection sendSynchronousRequest:request 
                                         returningResponse:&response 
                                                     error:&error];
    
    if (data != nil) {
        successBlock_(data, response);
    } else {
        failureBlock_(data, error);
    }
}

@end

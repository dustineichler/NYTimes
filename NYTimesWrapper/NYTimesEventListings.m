//
//  NYTimesEventListings.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "NYTimesEventListings.h"

#define SERVER_URL @"http://api.nytimes.com/svc/events/v2/listings"

@implementation NYTimesEventListings
@synthesize tag;

+ (void)asyncRequest:(NSObject *)obj 
             success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
             failure:(NYTImesErrorBlock)failureBlock_ 
                 tag:(NSString *)t
{
    [super asyncRequest:obj 
                success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
                failure:(NYTImesErrorBlock)failureBlock_];
}

+ (NSString *)buildURLwithObj:(NYTimesWrapper *)obj
{
    NSMutableString *params = [NSMutableString stringWithFormat:@"%@", @""];
    
    NSString *baseURL = [NSString stringWithFormat:SERVER_URL@"%@", params];
    
    return baseURL;
}

@end

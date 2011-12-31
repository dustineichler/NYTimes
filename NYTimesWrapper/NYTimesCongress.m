//
//  NYTimesCongress.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/30/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesCongress.h"

#define SERVER_URL @"http://api.nytimes.com/svc/politics/v3/us/legislative/congress"

@implementation NYTimesCongress
@synthesize tag;

- (void)dealloc
{
    [super dealloc];
}

+ (void)asyncRequest:(NYTimesWrapper *)obj 
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

//
//  NYTimesNewsWire.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/9/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "NYTimesNewsWire.h"

#define SERVER_URL @"http://api.nytimes.com/svc/news/v3/content/"

@implementation NYTimesNewsWire
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
    
    if (obj.newsWire.recentNewsApiKey && obj.newsWire.recentNewsSection && obj.newsWire.recentNewsSource)
    {
        if (obj.newsWire.recentNewsSource)
        {
            [params appendFormat:@"%@/", obj.newsWire.recentNewsSource];
        }
        
        if (obj.newsWire.recentNewsSection)
        {
            [params appendFormat:@"%@/", obj.newsWire.recentNewsSection];
        }
        
        if (obj.newsWire.recentNewsTimePeriod)
        {
            [params appendFormat:@"%@", obj.newsWire.recentNewsTimePeriod];
        }
        
        if (obj.newsWire.recentNewsFormat)
        {
            [params appendFormat:@".%@?", obj.newsWire.recentNewsFormat];
        }
        
        if (obj.newsWire.recentNewsLimit)
        {
            [params appendFormat:@"&limit=%@", obj.newsWire.recentNewsLimit];
        }
        
        if (obj.newsWire.recentNewsOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.newsWire.recentNewsOffSet];
        }
        
        if (obj.newsWire.recentNewsApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.newsWire.recentNewsApiKey];
        }
    }
    
    if (obj.newsWire.specificNewsItemsApiKey && obj.newsWire.specificNewsItemsUrl)
    {
        if (obj.newsWire.specificNewsItemsFormat)
        {
            [params appendFormat:@".%@?", obj.newsWire.specificNewsItemsFormat];
        }
        
        if (obj.newsWire.specificNewsItemsUrl)
        {
            [params appendFormat:@"url=%@", obj.newsWire.specificNewsItemsUrl];
        }
        
        if (obj.newsWire.specificNewsItemsApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.newsWire.specificNewsItemsApiKey];
        }
    }
    
    NSString *baseURL = [NSString stringWithFormat:SERVER_URL@"%@", params];
 
    return baseURL;
}
@end

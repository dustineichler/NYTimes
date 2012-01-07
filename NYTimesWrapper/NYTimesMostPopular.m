//
//  NYTimesMostPopular.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/6/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "NYTimesMostPopular.h"

#define SERVER_URL @"http://api.nytimes.com/svc/mostpopular/v2/"

@implementation NYTimesMostPopular
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
    
    // Code goes here...
    // {resource-type}/{section}[/share-types]/{time-period}[.response-format]?api-key={your-API-key}
    
    if (obj.mostPopular.baseResourceType && obj.mostPopular.baseSection
        && obj.mostPopular.baseTimePeriod && obj.mostPopular.baseApiKey)
    {
        if (obj.mostPopular.baseResourceType)
        {
            [params appendFormat:@"%@/", obj.mostPopular.baseResourceType];
        }
        
        if (obj.mostPopular.baseResourceType == @"mostshared")
        {
            if (obj.mostPopular.baseSection)
            {
                [params appendFormat:@"%@/", obj.mostPopular.baseSection];
            }
        }
        
        if (obj.mostPopular.baseShareTypes)
        {
            [params appendFormat:@"%@/", obj.mostPopular.baseShareTypes];
        }
        
        if (obj.mostPopular.baseTimePeriod)
        {
            [params appendFormat:@"%@", obj.mostPopular.baseTimePeriod];
        }
        
        if (obj.mostPopular.baseFormat)
        {
            [params appendFormat:@".%@?", obj.mostPopular.baseFormat];
        }
        
        if (obj.mostPopular.baseApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.mostPopular.baseApiKey];
        }
    }
    
    NSString *baseURL = [NSString stringWithFormat:SERVER_URL@"%@", params];
    
    return baseURL;
}
@end

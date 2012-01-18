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
    
    if (obj.eventListings.mainRequestApiKey)
    {
        if (obj.eventListings.mainRequestFormat)
        {
            [params appendFormat:@".%@?", obj.eventListings.mainRequestFormat];
        }
        
        if (obj.eventListings.mainRequestQuery)
        {
            [params appendFormat:@"&query=%@", obj.eventListings.mainRequestQuery];
        }
        
        if (obj.eventListings.mainRequestFilters)
        {
            [params appendFormat:@"&filters=%@", obj.eventListings.mainRequestFilters];
        }
        
        if (obj.eventListings.mainRequestDateRange)
        {
            [params appendFormat:@"&date_range=%@", obj.eventListings.mainRequestDateRange];
        }
        
        if (obj.eventListings.mainRequestFacets)
        {
            [params appendFormat:@"&facets=%@", obj.eventListings.mainRequestFacets];
        }
        
        if (obj.eventListings.mainRequestLimit)
        {
            [params appendFormat:@"&limit=%@", obj.eventListings.mainRequestLimit];
        }
        
        if (obj.eventListings.mainRequestOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.eventListings.mainRequestOffSet];
        }
        
        if (obj.eventListings.mainRequestLl)
        {
            [params appendFormat:@"&ll=%@", obj.eventListings.mainRequestLl];
        }
        
        if (obj.eventListings.mainRequestRadius)
        {
            [params appendFormat:@"&radius=%@", obj.eventListings.mainRequestRadius];
        }
        
        if (obj.eventListings.mainRequestSw)
        {
            [params appendFormat:@"&sw=%@", obj.eventListings.mainRequestSw];
        }
        
        if (obj.eventListings.mainRequestNe)
        {
            [params appendFormat:@"&ne=%@", obj.eventListings.mainRequestNe];
        }
        
        if (obj.eventListings.mainRequestSort)
        {
            [params appendFormat:@"&sort=%@", obj.eventListings.mainRequestSort];
        }
        
        if (obj.eventListings.mainRequestApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.eventListings.mainRequestApiKey];
        }
    }
    
    return [NSString stringWithFormat:@"%@%@", SERVER_URL, params];
}

@end

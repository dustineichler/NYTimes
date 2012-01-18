//
//  NYTimesDistricts.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "NYTimesDistricts.h"

#define SERVER_URL @"http://api.nytimes.com/svc/politics/v2/districts"

@implementation NYTimesDistricts
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
    
    if (obj.districts.mainRequestApiKey)
    {
        if (obj.districts.mainRequestFormat)
        {
            [params appendFormat:@".%@?", obj.districts.mainRequestFormat];
        }
        
        if (obj.districts.mainRequestLat)
        {
            [params appendFormat:@"lat=%@", obj.districts.mainRequestLat];
        }
        
        if (obj.districts.mainRequestLng)
        {
            [params appendFormat:@"&lng=%@", obj.districts.mainRequestLng];
        }
        
        if (obj.districts.mainRequestApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.districts.mainRequestApiKey];
        }
    }
    
    return [NSString stringWithFormat:@"%@%@", SERVER_URL, params];;
}
@end

//
//  NYTimesArticle.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/3/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesArticle.h"

@implementation NYTimesArticle
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
    
    if (obj.format == nil || [obj.format length] == 0)
    {
        [obj setFormat:@"json"];
        [params appendFormat:@"format=%@&", obj.format];
    } else {
        [params appendFormat:@"format=%@&", obj.format];        
    }
    
    if (obj.query)
    {        
        [params appendFormat:@"query=%@&", obj.query];
    }
    
    if (obj.facets)
    {
        [params appendFormat:@"facets=%@&", obj.facets];
    }
    
    if (obj.beginDate)
    {
        NSError *error = NULL;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(([0-9]{4})([0-9]{2})([0-9]{2}))"
                                                                               options:NSRegularExpressionCaseInsensitive
                                                                                 error:&error];
        
        NSUInteger numberOfMatches = [regex numberOfMatchesInString:obj.beginDate
                                                            options:0
                                                              range:NSMakeRange(0, [obj.beginDate length])];
        
        if (error)
        {
            NSLog(@"Regex %@", error);
        }
        
        if (numberOfMatches > 0)
        {
            [params appendFormat:@"begin_date=%@&", obj.beginDate];
        }
    }
    
    if (obj.endDate)
    {
        NSError *error = NULL;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(([0-9]{4})([0-9]{2})([0-9]{2}))"
                                                                               options:NSRegularExpressionCaseInsensitive
                                                                                 error:&error];
        
        NSUInteger numberOfMatches = [regex numberOfMatchesInString:obj.endDate
                                                            options:0
                                                              range:NSMakeRange(0, [obj.endDate length])];
        
        if (error)
        {
            NSLog(@"Regex %@", error);
        }
        
        if (numberOfMatches > 0)
        {
            [params appendFormat:@"end_date=%@&", obj.endDate];
        }
    }
    
    if (obj.fields)
    {
        [params appendFormat:@"fields=%@&", obj.fields];
    }
    
    if (obj.offset)
    {
        [params appendFormat:@"offset=%@&", obj.offset];
    }
    
    if (obj.rank == @"Newest" || obj.rank == @"Oldest" || obj.rank == @"Closest")
    {
        [params appendFormat:@"rank=%@&", obj.rank];
    }
    
    if (obj.apiKey)
    {
        [params appendFormat:@"api-key=%@&", obj.apiKey];
    }
    
    NSString *baseURL = [NSString stringWithFormat:@"http://api.nytimes.com/svc/search/v1/article?%@", params];
    
    return baseURL;
}


@end

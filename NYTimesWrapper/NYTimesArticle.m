//
//  NYTimesArticle.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/3/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesArticle.h"

#define SERVER_URL @"http://api.nytimes.com/svc/search/v1/article?"

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
    
    if (obj.article.format == nil || [obj.article.format length] == 0)
    {
        [obj setFormat:@"json"];
        [params appendFormat:@"format=%@&", obj.article.format];
    } else {
        [params appendFormat:@"format=%@&", obj.article.format];        
    }
    
    if (obj.article.query)
    {
        NSArray *stringsArry = [obj.article.query componentsSeparatedByString:@" "];
        NSString *temp = [stringsArry componentsJoinedByString: @"+"];
        
        [params appendFormat:@"query=%@&", temp];
    }
    
    if (obj.article.facets)
    {
        [params appendFormat:@"facets=%@&", obj.article.facets];
    }
    
    if (obj.article.startDate)
    {
        NSError *error = NULL;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(([0-9]{4})([0-9]{2})([0-9]{2}))"
                                                                               options:NSRegularExpressionCaseInsensitive
                                                                                 error:&error];
        
        NSUInteger numberOfMatches = [regex numberOfMatchesInString:obj.article.startDate
                                                            options:0
                                                              range:NSMakeRange(0, [obj.article.startDate length])];
        
        if (error)
        {
            NSLog(@"Regex %@", error);
        }
        
        if (numberOfMatches > 0)
        {
            [params appendFormat:@"begin_date=%@&", obj.article.startDate];
        }
    }
    
    if (obj.article.endDate)
    {
        NSError *error = NULL;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(([0-9]{4})([0-9]{2})([0-9]{2}))"
                                                                               options:NSRegularExpressionCaseInsensitive
                                                                                 error:&error];
        
        NSUInteger numberOfMatches = [regex numberOfMatchesInString:obj.article.endDate
                                                            options:0
                                                              range:NSMakeRange(0, [obj.article.endDate length])];
        
        if (error)
        {
            NSLog(@"Regex %@", error);
        }
        
        if (numberOfMatches > 0)
        {
            [params appendFormat:@"end_date=%@&", obj.article.endDate];
        }
    }
    
    if (obj.article.fields)
    {
        [params appendFormat:@"fields=%@&", obj.article.fields];
    }
    
    if (obj.article.offset)
    {
        [params appendFormat:@"offset=%@&", obj.article.offset];
    }
    
    if (obj.article.rank == @"Newest" || obj.article.rank == @"Oldest" || obj.article.rank == @"Closest")
    {
        [params appendFormat:@"rank=%@&", obj.article.rank];
    }
    
    if (obj.apiKey)
    {
        [params appendFormat:@"api-key=%@", obj.apiKey];
    }
    
    NSString *baseURL = [NSString stringWithFormat:SERVER_URL@"%@", params];
    
    return baseURL;
}


@end

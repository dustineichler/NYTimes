//
//  NYTimesBestSeller.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/5/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesBestSeller.h"

#define SERVER_URL @"http://api.nytimes.com/svc/books/v2/lists/"

@implementation NYTimesBestSeller
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
    
    if (obj.bestSeller.date)
    {
        NSError *error = NULL;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(([0-9]{4})([0-9]{2})([0-9]{2}))"
                                                                               options:NSRegularExpressionCaseInsensitive
                                                                                 error:&error];
        
        NSUInteger numberOfMatches = [regex numberOfMatchesInString:obj.bestSeller.date
                                                            options:0
                                                              range:NSMakeRange(0, [obj.bestSeller.date length])];
        
        if (error)
        {
            NSLog(@"Regex %@", error);
        }
        
        if (numberOfMatches > 0)
        {
            [params appendFormat:@"%@/", obj.bestSeller.date];
        }
    } else {
        [params appendString:@"/"];
    }
    
    if (obj.bestSeller.listName)
    {
        NSArray *stringsArry = [obj.bestSeller.listName componentsSeparatedByString:@" "];
        NSString *temp = [stringsArry componentsJoinedByString: @"+"];
        [params appendFormat:@"%@.", temp];
    }
    
    if (obj.bestSeller.format == @"XML")
    {
        [params appendFormat:@"%@?&", obj.bestSeller.format];
    } else {
        [params appendFormat:@".json%@?&"];
    }
    
    if (obj.bestSeller.offset)
    {
        [params appendFormat:@"offset=%@&",obj.bestSeller.offset];
    } else {
        [params appendString:@"offset=&"];
    }
    
    if (obj.bestSeller.sortBy == @"BestSellers-Date" || obj.bestSeller.sortBy == @"Date" || obj.bestSeller.sortBy == @"ISBN" || obj.bestSeller.sortBy == @"List" || obj.bestSeller.sortBy == @"List-Name" || obj.bestSeller.sortBy == @"Published-Date" || obj.bestSeller.sortBy == @"Rank" || obj.bestSeller.sortBy == @"Rank-Last-Week" || obj.bestSeller.sortBy == @"Weeks-On-List")
    {
        [params appendFormat:@"sortby=%@&", obj.bestSeller.sortBy];
    } else {
        [params appendString:@"sortby=&"];
    }
    
    if (obj.bestSeller.sortOrder == @"ASC" || obj.bestSeller.sortOrder == @"DESC")
    {
        [params appendFormat:@"sortorder=%@&", obj.bestSeller.sortOrder];
    } else {
        [params appendString:@"sortorder=&"];
    }
    
    if (obj.apiKey) {
        [params appendFormat:@"api-key=%@", obj.apiKey];
    } else {
        return nil;
    }
    
    NSString *baseURL = [NSString stringWithFormat:SERVER_URL@"%@", params];
    
    return baseURL;
}

@end

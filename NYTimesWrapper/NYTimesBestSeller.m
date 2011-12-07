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
    
    if (obj.date)
    {        
        NSError *error = NULL;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(([0-9]{4})([0-9]{2})([0-9]{2}))"
                                                                               options:NSRegularExpressionCaseInsensitive
                                                                                 error:&error];
        
        NSUInteger numberOfMatches = [regex numberOfMatchesInString:obj.date
                                                            options:0
                                                              range:NSMakeRange(0, [obj.date length])];
        
        if (error)
        {
            NSLog(@"Regex %@", error);
        }
        
        if (numberOfMatches > 0)
        {
            [params appendFormat:@"%@/", obj.date];
        }
    } else {
        [params appendString:@"/"];
    }
    
    if (obj.listName)
    {
        NSArray *stringsArry = [obj.listName componentsSeparatedByString:@" "];
        NSString *temp = [stringsArry componentsJoinedByString: @"+"];
        [params appendFormat:@"%@.", temp];
    }
    
    if (obj.format == @"XML")
    {
        [params appendFormat:@"%@?&", obj.format];
    } else {
        [params appendFormat:@".json%@?&"];
    }
    
    if (obj.offset)
    {
        [params appendFormat:@"offset=%@&",obj.offset];
    } else {
        [params appendString:@"offset=&"];
    }
    
    if (obj.sortBy == @"BestSellers-Date" || obj.sortBy == @"Date" || obj.sortBy == @"ISBN" || obj.sortBy == @"List" || obj.sortBy == @"List-Name" || obj.sortBy == @"Published-Date" || obj.sortBy == @"Rank" || obj.sortBy == @"Rank-Last-Week" || obj.sortBy == @"Weeks-On-List")
    {
        [params appendFormat:@"sortby=%@&", obj.sortBy];
    } else {
        [params appendString:@"sortby=&"];
    }
    
    if (obj.sortOrder == @"ASC" || obj.sortOrder == @"DESC")
    {
        [params appendFormat:@"sortorder=%@&", obj.sortOrder];
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

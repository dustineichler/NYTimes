//
//  NYTimesSemantic.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/9/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "NYTimesSemantic.h"

#define SERVER_URL @"http://api.nytimes.com/svc/semantic/v2/concept/"

@implementation NYTimesSemantic
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
    
    // Name
    
    if (obj.semantic.nameApiKey)
    {
        if (obj.semantic.nameConceptType)
        {
            [params appendFormat:@"name/%@/", obj.semantic.nameConceptType];
        }
        
        if (obj.semantic.nameConceptName)
        {
            [params appendFormat:@"%@", obj.semantic.nameConceptName];
        }
        
        if (obj.semantic.nameFormat)
        {
            [params appendFormat:@".%@?", obj.semantic.nameFormat];
        }
        
        if (obj.semantic.nameFields)
        {
            [params appendFormat:@"&fields=%@", obj.semantic.nameFields];
        }
        
        if (obj.semantic.nameOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.semantic.nameOffSet];
        }
        
        if (obj.semantic.nameApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.semantic.nameApiKey];
        }
    }
    
    // URI
    
    if (obj.semantic.uriApiKey)
    {
        if (obj.semantic.uriConceptUri)
        {
            [params appendFormat:@"uri/%@", obj.semantic.uriConceptUri];
        }
        
        if (obj.semantic.uriFormat)
        {
            [params appendFormat:@".%@?", obj.semantic.uriFormat];
        }
        
        if (obj.semantic.uriFields)
        {
            [params appendFormat:@"&fields=%@", obj.semantic.uriFields];
        }
        
        if (obj.semantic.uriOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.semantic.uriOffSet];
        }
        
        if (obj.semantic.uriApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.semantic.uriApiKey];
        }
    }
    
    // Semantic Article
    
    if (obj.semantic.semanticArticleApiKey)
    {
        if (obj.semantic.semanticArticleArticleUri)
        {
            [params appendFormat:@"article/%@", obj.semantic.semanticArticleArticleUri];
        }
        
        if (obj.semantic.semanticArticleFormat)
        {
            [params appendFormat:@".%@?", obj.semantic.semanticArticleFormat];
        }
        
        if (obj.semantic.semanticArticleFields)
        {
            [params appendFormat:@"&fields=%@", obj.semantic.semanticArticleFields];
        }
        
        if (obj.semantic.semanticArticleOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.semantic.semanticArticleOffSet];
        }
        
        if (obj.semantic.semanticArticleApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.semantic.semanticArticleApiKey];
        }
    }
    
    // Search
    
    if (obj.semantic.searchApiKey)
    {
        if (obj.semantic.searchFormat)
        {
            [params appendFormat:@"search.%@?", obj.semantic.searchFormat];
        }
        
        if (obj.semantic.searchQuery)
        {
            [params appendFormat:@"&query=%@", obj.semantic.searchQuery];
        }
        
        if (obj.semantic.searchFields)
        {
            [params appendFormat:@"&fields=%@", obj.semantic.searchFields];
        }
        
        if (obj.semantic.searchOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.semantic.searchOffSet];
        }
        
        if (obj.semantic.searchApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.semantic.searchApiKey];
        }
    }
    
    return [NSString stringWithFormat:@"%@%@", SERVER_URL, params];;
}
@end

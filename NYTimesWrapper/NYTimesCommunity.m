//
//  NYTimesCommunity.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/29/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesCommunity.h"

#define SERVER_URL @"http://api.nytimes.com/svc/community/v2/comments/"

@implementation NYTimesCommunity
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
    
    // CommonParameters
    
    if (obj.community.communityRecentCommentsApiKey && obj.community.communityRecentCommentsFormat) 
    {
        if (obj.community.communityRecentCommentsFormat)
        {
            [params appendFormat:@"recent.%@?", obj.community.communityRecentCommentsFormat];
        }
        
        if (obj.community.communityRecentCommentsForceReplies)
        {
            [params appendFormat:@"&force-replies=%@", obj.community.communityRecentCommentsForceReplies];
        }
        
        if (obj.community.communityRecentCommentsSort)
        {
            [params appendFormat:@"&sort=%@", obj.community.communityRecentCommentsSort];
        }
        
        if (obj.community.communityRecentCommentsOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.community.communityRecentCommentsOffSet];
        }
        
        if (obj.community.communityRecentCommentsApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.community.communityRecentCommentsApiKey];
        }
    }
    
    // RandomComments
    
    if (obj.community.communityRandomCommentsFormat && obj.community.communityRandomCommentsApiKey)
    {
        if (obj.community.communityRandomCommentsFormat)
        {
            [params appendFormat:@"random.%@?", obj.community.communityRandomCommentsFormat];
        }
        
        if (obj.community.communityRandomCommentsApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.community.communityRandomCommentsApiKey];
        }
    }
    
    // CommentsByDate
    
    if (obj.community.communityCommentsByDateApiKey && obj.community.communityCommentsByDateFormat && obj.community.communityCommentsByDateDate)
    {
        if (obj.community.communityCommentsByDateDate)
        {
            [params appendFormat:@"by-date/%@", obj.community.communityCommentsByDateDate];
        }
        
        if (obj.community.communityCommentsByDateFormat)
        {
            [params appendFormat:@".%@?", obj.community.communityCommentsByDateFormat];
        }
        
        if (obj.community.communityCommentsByDateOffSet)
        {
            [params appendFormat:@"offset=%@", obj.community.communityCommentsByDateOffSet];
        }
        
        if (obj.community.communityCommentsByDateApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.community.communityCommentsByDateApiKey];
        }
    }
    
    // CommentsByUserID
    
    if (obj.community.communityCommentsByUserIdApiKey && obj.community.communityCommentsByUserIdUserId)
    {
        if (obj.community.communityCommentsByUserIdUserId)
        {
            [params appendFormat:@"user/id/%@", obj.community.communityCommentsByUserIdUserId];
        }
        
        if (obj.community.communityCommentsByUserIdFormat)
        {
            [params appendFormat:@".%@?", obj.community.communityCommentsByUserIdFormat];
        }
        
        if (obj.community.communityCommentsByUserIdOffSet)
        {
            [params appendFormat:@"offset=%@", obj.community.communityCommentsByUserIdOffSet];
        }
        
        if (obj.community.communityCommentsByUserIdApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.community.communityCommentsByUserIdApiKey];
        }
    }
    
    // CommentsByURL
    
    if (obj.community.communityCommentsByURLApiKey && obj.community.communityCommentsByURLMatchType && obj.community.communityCommentsByURLUrlToMatch)
    {
        if (obj.community.communityCommentsByURLMatchType)
        {
            [params appendFormat:@"url/%@", obj.community.communityCommentsByURLMatchType];
        }
        
        if (obj.community.communityCommentsByURLFormat)
        {
            [params appendFormat:@".%@?", obj.community.communityCommentsByURLFormat];
        }
        
        if (obj.community.communityCommentsByURLUrlToMatch)
        {
            [params appendFormat:@"url=%@", obj.community.communityCommentsByURLUrlToMatch];
        }
        
        if (obj.community.communityCommentsByURLOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.community.communityCommentsByURLOffSet];
        }
        
        if (obj.community.communityCommentsByURLApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.community.communityCommentsByURLApiKey];
        }
    }
    
    return [NSString stringWithFormat:@"%@%@", SERVER_URL, params];
}
@end

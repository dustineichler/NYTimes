//
//  NYTimesMovieReviews.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/6/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "NYTimesMovieReviews.h"

#define SERVER_URL @"http://api.nytimes.com/svc/movies/v2/"

@implementation NYTimesMovieReviews
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
    
    if (obj.movieReviews.reviewsByKeyWordApiKey)
    {
        if (obj.movieReviews.reviewsByKeyWordFormat)
        {
            [params appendFormat:@"reviews/search.%@?", obj.movieReviews.reviewsByKeyWordFormat];
        }
        
        if (obj.movieReviews.reviewsByKeyWordQuery)
        {
            [params appendFormat:@"&query=%@", obj.movieReviews.reviewsByKeyWordQuery];
        }
        
        if (obj.movieReviews.reviewsByKeyWordCriticsPick)
        {
            [params appendFormat:@"&critics-pick=%@", obj.movieReviews.reviewsByKeyWordCriticsPick];
        }
        
        if (obj.movieReviews.reviewsByKeyWordThousandBest)
        {
            [params appendFormat:@"&thousand-best=%@", obj.movieReviews.reviewsByKeyWordThousandBest];
        }
        
        if (obj.movieReviews.reviewsByKeyWordDvd)
        {
            [params appendFormat:@"&dvd=%@", obj.movieReviews.reviewsByKeyWordDvd];
        }
        
        if (obj.movieReviews.reviewsByKeyWordPublicationDate)
        {
            [params appendFormat:@"&publication-date=%@", obj.movieReviews.reviewsByKeyWordPublicationDate];
        }
        
        if (obj.movieReviews.reviewsByKeyWordOpeningDate)
        {
            [params appendFormat:@"&opening-date=%@", obj.movieReviews.reviewsByKeyWordOpeningDate];
        }
        
        if (obj.movieReviews.reviewsByKeyWordReviewer)
        {
            [params appendFormat:@"&reviewer=%@", obj.movieReviews.reviewsByKeyWordReviewer];
        }
        
        if (obj.movieReviews.reviewsByKeyWordOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.movieReviews.reviewsByKeyWordOffSet];
        }
        
        if (obj.movieReviews.reviewsByKeyWordOrder)
        {
            [params appendFormat:@"&order=%@", obj.movieReviews.reviewsByKeyWordOrder];
        }
        
        if (obj.movieReviews.reviewsByReviewerApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.movieReviews.reviewsByKeyWordApiKey];
        }
    }
    
    if (obj.movieReviews.reviewsAndNYTCriticsPicksApiKey && obj.movieReviews.reviewsAndNYTCriticsPicksResourceType)
    {
        if (obj.movieReviews.reviewsAndNYTCriticsPicksResourceType)
        {
            [params appendFormat:@"reviews/%@", obj.movieReviews.reviewsAndNYTCriticsPicksResourceType];
        }
        
        if (obj.movieReviews.reviewsAndNYTCriticsPicksFormat)
        {
            [params appendFormat:@".%@?", obj.movieReviews.reviewsAndNYTCriticsPicksFormat];
        }
        
        if (obj.movieReviews.reviewsAndNYTCriticsPicksOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.movieReviews.reviewsAndNYTCriticsPicksOffSet];
        }
        
        if (obj.movieReviews.reviewsAndNYTCriticsPicksOrder)
        {
            [params appendFormat:@"&order=%@", obj.movieReviews.reviewsAndNYTCriticsPicksOrder];
        }
        
        if (obj.movieReviews.reviewsAndNYTCriticsPicksApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.movieReviews.reviewsAndNYTCriticsPicksApiKey];
        }
    }
    
    // reviews/reviewer/{reviewer-name}[.response_format]?[optional-param1=value1]&[...]&api-key={your-API-key}
    
    if (obj.movieReviews.reviewsByReviewerApiKey && obj.movieReviews.reviewsByReviewerReviewerName)
    {
        if (obj.movieReviews.reviewsByReviewerReviewerName)
        {
            [params appendFormat:@"reviews/reviewer/%@", obj.movieReviews.reviewsByReviewerReviewerName];
        }
        
        if (obj.movieReviews.reviewsByReviewerFormat)
        {
            [params appendFormat:@".%@?", obj.movieReviews.reviewsByReviewerFormat];
        }
        
        if (obj.movieReviews.reviewsByReviewerCriticsPick)
        {
            [params appendFormat:@"&critics-pick=%@", obj.movieReviews.reviewsByReviewerCriticsPick];
        }
        
        if (obj.movieReviews.reviewsByReviewerOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.movieReviews.reviewsByReviewerOffSet];
        }
        
        if (obj.movieReviews.reviewsByReviewerOrder)
        {
            [params appendFormat:@"&order=%@", obj.movieReviews.reviewsByReviewerOrder];
        }
        
        if (obj.movieReviews.reviewsByReviewerApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.movieReviews.reviewsByReviewerApiKey];
        }
    }
    
    if (obj.movieReviews.reviewerDetailsApiKey && obj.movieReviews.reviewerDetailsResourceType)
    {
        if (obj.movieReviews.reviewerDetailsResourceType)
        {
            [params appendFormat:@"critics/%@", obj.movieReviews.reviewerDetailsResourceType];
        }
        
        if (obj.movieReviews.reviewerDetailsFormat)
        {
            [params appendFormat:@".%@?", obj.movieReviews.reviewerDetailsFormat];
        }
        
        if (obj.movieReviews.reviewerDetailsApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.movieReviews.reviewerDetailsApiKey];
        }
    }
    
    
    NSString *baseURL = [NSString stringWithFormat:SERVER_URL@"%@", params];
    
    return baseURL;
}

@end

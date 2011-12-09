//
//  NYTimesCampaignFinance.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/6/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesCampaignFinance.h"

#define SERVER_URL @"http://api.nytimes.com/svc/elections/us/v3/finances/"

@implementation NYTimesCampaignFinance
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
    NSString *baseURL;
    
    // CandidateSearch
    
    NSMutableString *campaignSearchURL;
    NSMutableString *params = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.cycle && obj.campaignFinance.lastName)
    {
        if (obj.campaignFinance.cycle)
        {
            campaignSearchURL = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/candidates/", obj.campaignFinance.cycle];
        }
        
        if (obj.campaignFinance.format)
        {
            [params appendFormat:@"search.%@?", obj.campaignFinance.format];
        }
        
        if (obj.campaignFinance.lastName)
        {
            [params appendFormat:@"query=%@&", obj.campaignFinance.lastName];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
        
         baseURL = [NSString stringWithFormat:@"%@%@", campaignSearchURL, params];
    }
    
    // CandidateDetails
    
    NSMutableString *candidateDetailsURL;
    NSMutableString *params2 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.candidateDetailsCycle && obj.campaignFinance.candidateId)
    {
        if (obj.campaignFinance.candidateDetailsCycle)
        {
            candidateDetailsURL = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.candidateDetailsCycle];
        }
        
        if (obj.campaignFinance.candidateId)
        {
            [params2 appendFormat:@"candidates/%@.", obj.campaignFinance.candidateId];
        }
        
        if (obj.campaignFinance.candidateDetailsFormat)
        {
            [params2 appendFormat:@"%@?", obj.campaignFinance.candidateDetailsFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
        
         baseURL = [NSString stringWithFormat:@"%@%@", candidateDetailsURL, params2];
    }
    
    // CandidateLeaders
    
    NSMutableString *candidateLeadersURL;
    NSMutableString *params3 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.candidateLeadersCycle && obj.campaignFinance.candidateLeadersCategory) 
    {
        if (obj.campaignFinance.candidateLeadersCycle)
        {
            candidateLeadersURL = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.candidateLeadersCycle];
        }
        
        if (obj.campaignFinance.candidateLeadersCategory)
        {
            [params3 appendFormat:@"candidates/leaders/%@.", obj.campaignFinance.candidateLeadersCategory];
        }
        
        if (obj.campaignFinance.candidateLeadersFormat)
        {
            [params3 appendFormat:@"%@?", obj.campaignFinance.candidateLeadersFormat];
        }
        
        if (obj.apiKey)
        {
            [params3 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
         baseURL = [NSString stringWithFormat:@"%@%@", candidateLeadersURL, params3];
    }
    
    // StateCandidates
    
    NSMutableString *stateCandidatesURL;
    NSMutableString *params4 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.stateCandidatesCycle && obj.campaignFinance.stateCandidatesState) 
    {
        if (obj.campaignFinance.stateCandidatesCycle)
        {
            stateCandidatesURL = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.stateCandidatesCycle];
        }
        
        if (obj.campaignFinance.stateCandidatesState)
        {
            [params4 appendFormat:@"seats/%@/", obj.campaignFinance.stateCandidatesState];
        }
        
        if (obj.campaignFinance.chamber == @"house")
        {
            [params4 appendString:@"house."];
            
        } else { 
            [params4 appendString:@"senate."];            
        }
        
        if (obj.campaignFinance.stateCandidatesFormat)
        {
            [params4 appendFormat:@"%@?", obj.campaignFinance.stateCandidatesFormat];
        }
        
        if (obj.apiKey)
        {
            [params4 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", stateCandidatesURL, params4];
    }
    
    [obj release];
    
    return baseURL;
}

@end

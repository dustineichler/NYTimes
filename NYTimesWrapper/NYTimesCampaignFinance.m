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
    
    // NewCandidates
    
    NSMutableString *newCandidatesURL;
    NSMutableString *params5 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.newCandidatesCycle) 
    {
        if (obj.campaignFinance.newCandidatesCycle)
        {
            newCandidatesURL = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.newCandidatesCycle];
        }
        
        if (obj.campaignFinance.newCandidatesFormat)
        {
            
            [params5 appendFormat:@"candidates/new.%@?", obj.campaignFinance.newCandidatesFormat];
        }
        
        if (obj.apiKey)
        {
            [params5 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", newCandidatesURL, params5];
    }
    
    // CommitteeSearch
    
    NSMutableString *comitteeSearch;
    NSMutableString *params6 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.committeeSearchCycle && obj.campaignFinance.committeeSearchName)
    {
        if (obj.campaignFinance.committeeSearchCycle)
        {
            comitteeSearch = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.committeeSearchCycle];
        }
        
        if (obj.campaignFinance.committeeSearchFormat)
        {
            [params6 appendFormat:@"committees/search.%@?", obj.campaignFinance.committeeSearchFormat];
        }
        
        if (obj.campaignFinance.committeeSearchName)
        {
            [params6 appendFormat:@"query=%@&", obj.campaignFinance.committeeSearchName];
        }
        
        if (obj.apiKey)
        {
            [params6 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", comitteeSearch, params6];
    }
    
    // CommitteeDetails
    
    NSMutableString *committeeDetails;
    NSMutableString *params7 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.committeeDetailsCycle && obj.campaignFinance.committeeDetailsCommitteeId)
    {
        if (obj.campaignFinance.committeeDetailsCycle)
        {
            committeeDetails = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.committeeDetailsCycle];
        }
        
        if (obj.campaignFinance.committeeFilingsCommitteeId)
        {
            [params7 appendFormat:@"committees/%@", obj.campaignFinance.committeeFilingsCommitteeId];
        }
        
        if (obj.campaignFinance.committeeDetailsFormat)
        {
            [params7 appendFormat:@".%@?", obj.campaignFinance.committeeDetailsFormat];
        }
        
        if (obj.apiKey)
        {
            [params7 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", committeeDetails, params7];
    }
    
    // NewCommittees
    
    NSMutableString *newCommittees;
    NSMutableString *params8 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.newCommitteeCycle) 
    {
        if (obj.campaignFinance.newCommitteeCycle)
        {
            newCommittees = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.newCommitteeCycle];
        }
        
        if (obj.campaignFinance.newCommitteeFormat)
        {
            [params8 appendFormat:@"committees/new.%@?", obj.campaignFinance.newCommitteeFormat];
        }
        
        if (obj.apiKey)
        {
            [params8 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", newCommittees, params8];
    }
    
    // CommitteeContributions
    
    NSMutableString *committeeContributions;
    NSMutableString *params9 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.committeeContributionsCycle && obj.campaignFinance.committeeContributionsCommitteeId)
    {
        if (obj.campaignFinance.committeeContributionsCycle)
        {
            committeeContributions = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.committeeContributionsCycle];
        }
        
        if (obj.campaignFinance.committeeContributionsCommitteeId)
        {
            [params9 appendFormat:@"committees/%@/", obj.campaignFinance.committeeContributionsCommitteeId];
        }
        
        if (obj.campaignFinance.committeeContributionsFormat)
        {
            [params9 appendFormat:@"contributions.%@?", obj.campaignFinance.committeeContributionsFormat];
        }
        
        if (obj.apiKey)
        {
            [params9 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", committeeContributions, params9];
    }
    
    // CommitteeContributionsTo
    
    NSMutableString *committeeContributionsTo;
    NSMutableString *params10 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.committeeContributionsToCycle && obj.campaignFinance.committeeContributionsToCommitteeId && obj.campaignFinance.committeeContributionsToCandidateId)
    {
        if (obj.campaignFinance.committeeContributionsToCycle)
        {
            committeeContributionsTo = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.committeeContributionsToCycle];
        }
        
        if (obj.campaignFinance.committeeContributionsToCommitteeId)
        {
            [params10 appendFormat:@"committees/%@/", obj.campaignFinance.committeeContributionsToCommitteeId];
        }
        
        if (obj.campaignFinance.committeeContributionsToCandidateId)
        {
            [params10 appendFormat:@"candidates/%@", obj.campaignFinance.committeeContributionsToCandidateId];
        }
        
        if (obj.campaignFinance.committeeContributionsToFormat)
        {
            [params10 appendFormat:@".%@?", obj.campaignFinance.committeeContributionsToFormat];
        }
        
        if (obj.apiKey)
        {
            [params10 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", committeeContributionsTo, params10];
    }
    
    // CommitteeFilings
    
    NSMutableString *committeeFilings;
    NSMutableString *params11 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.committeeFilingsCycle && obj.campaignFinance.committeeFilingsCommitteeId)
    {
        if (obj.campaignFinance.committeeFilingsCycle)
        {
            committeeFilings = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.committeeFilingsCycle];
        }
        
        if (obj.campaignFinance.committeeFilingsCommitteeId)
        {
            [params11 appendFormat:@"committees/%@", obj.campaignFinance.committeeFilingsCommitteeId];
        }
        
        if (obj.campaignFinance.committeeFilingsFormat)
        {
            [params11 appendFormat:@"filings.%@?", obj.campaignFinance.committeeFilingsFormat];
        }
        
        if (obj.apiKey)
        {
            [params11 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", committeeFilings, params11];
    }
    
    // LeadershipCommittees
    
    NSMutableString *leadershipCommittees;
    NSMutableString *params12 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.leadershipCommitteeCycle)
    {
        if (obj.campaignFinance.leadershipCommitteeCycle)
        {
            leadershipCommittees = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.leadershipCommitteeCycle];
        }
        
        if (obj.campaignFinance.leadershipCommitteeFormat)
        {
            [params12 appendFormat:@"committees/leadership.%@?", obj.campaignFinance.leadershipCommitteeFormat];
        }
        
        if (obj.apiKey)
        {
            [params12 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", leadershipCommittees, params12];
    }
    
    // PresidentialCandidateTotals
    
    NSMutableString *presidentialCandidateTotals;
    NSMutableString *params13 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.presCandidateTotalsCycle)
    {
        if (obj.campaignFinance.presCandidateTotalsCycle)
        {
            presidentialCandidateTotals = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.presCandidateTotalsCycle];
        }
        
        if (obj.campaignFinance.presCandidateTotalsFormat)
        {
            [params13 appendFormat:@"president/totals.%@?", obj.campaignFinance.presCandidateTotalsFormat];
        }
        
        if (obj.apiKey)
        {
            [params13 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", presidentialCandidateTotals, params13];
    }
    
    // PresidentialCandidateDetails

    NSMutableString *presidentialCandidateDetails;
    NSMutableString *params14 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.presCandidateDetailsCycle && obj.campaignFinance.presCAndidateDetailsCandidateNameOrCommitteeId) 
    {
        if (obj.campaignFinance.presCandidateDetailsCycle) 
        {
            presidentialCandidateDetails = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.presCandidateDetailsCycle];
        }
        
        if (obj.campaignFinance.presCAndidateDetailsCandidateNameOrCommitteeId)
        {
            [params14 appendFormat:@"president/candidates/%@", obj.campaignFinance.presCAndidateDetailsCandidateNameOrCommitteeId];
        }
        
        if (obj.campaignFinance.presCandidateDetailsFormat)
        {
            [params14 appendFormat:@".%@?", obj.campaignFinance.presCandidateDetailsFormat];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", presidentialCandidateDetails, params14];
    }
    
    // PresidentialState/ZIPTotals
    
    NSMutableString *presidentialStateZIPTotals;
    NSMutableString *params15 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.presStateAndZipTotalsCycle && obj.campaignFinance.presStateAndZipTotalsResourceType && obj.campaignFinance.presStateAndZipTotalsStateAbbr) 
    {
        if (obj.campaignFinance.presStateAndZipTotalsCycle)
        {
            presidentialStateZIPTotals = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.presStateAndZipTotalsCycle];
        }
        
        if (obj.campaignFinance.presStateAndZipTotalsResourceType)
        {
            [params15 appendFormat:@"president/%@/", obj.campaignFinance.presStateAndZipTotalsResourceType];
        }
        
        if (obj.campaignFinance.presStateAndZipTotalsStateAbbr)
        {
            [params15 appendFormat:@"%@", obj.campaignFinance.presStateAndZipTotalsStateAbbr];
        }
        
        if (obj.campaignFinance.presStateAndZipTotalsFormat)
        {
            [params15 appendFormat:@".%@?", obj.campaignFinance.presStateAndZipTotalsFormat];
        }
        
        if (obj.apiKey)
        {
            [params15 appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        baseURL = [NSString stringWithFormat:@"%@%@", presidentialStateZIPTotals, params15];
    }
    
    // PresidentialDonorInformation
    
    NSMutableString *presidentialDonorInformation;
    NSMutableString *params16 = [NSMutableString stringWithFormat:@"", @""];
    
    if (obj.campaignFinance.presDonorInformationCycle)
    {
        presidentialDonorInformation = [NSMutableString stringWithFormat:@"http://api.nytimes.com/svc/elections/us/v3/finances/%@/", obj.campaignFinance.presDonorInformationCycle];
    }
    
    if (obj.campaignFinance.presDonorInformationFormat)
    {
        [params16 appendFormat:@"president/contributions/donorsearch.%@?", obj.campaignFinance.presDonorInformationFormat];
    }
    
    if (obj.campaignFinance.presDonorInformationSearchParameter)
    {
        [params16 appendFormat:@"%@=", obj.campaignFinance.presDonorInformationSearchParameter];
    }
    
    if (obj.campaignFinance.presDonorInformationLastName || obj.campaignFinance.presDonorInformationZipCode)
    {
        [params16 appendFormat:@"", obj.campaignFinance.presDonorInformationLastName == @"" ? obj.campaignFinance.presDonorInformationLastName : obj.campaignFinance.presDonorInformationZipCode];
    }
    
    if (obj.apiKey)
    {
        [params16 appendFormat:@"&api-key=%@", obj.apiKey];
    }
    
    baseURL = [NSString stringWithFormat:@"%@%@", presidentialDonorInformation, params16];
    
    [obj release];
    
    return baseURL;
}

@end

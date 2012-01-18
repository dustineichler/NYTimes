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
    NSMutableString *params = [NSMutableString stringWithFormat:@"", @""];
    
    // CandidateSearch
    
    if (obj.campaignFinance.candidateSearchCycle && obj.campaignFinance.candidateSearchLastName)
    {
        if (obj.campaignFinance.candidateSearchCycle)
        {
            [params appendFormat:@"%@/candidates/", obj.campaignFinance.candidateSearchCycle];
        }
        
        if (obj.campaignFinance.candidateSearchFormat)
        {
            [params appendFormat:@"search.%@?", obj.campaignFinance.candidateSearchFormat];
        }
        
        if (obj.campaignFinance.candidateSearchLastName)
        {
            [params appendFormat:@"query=%@&", obj.campaignFinance.candidateSearchLastName];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // CandidateDetails
    
    if (obj.campaignFinance.candidateDetailsCycle && obj.campaignFinance.candidateDetailsCycle)
    {
        if (obj.campaignFinance.candidateDetailsCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.candidateDetailsCycle];
        }
        
        if (obj.campaignFinance.candidateDetailCandidateId)
        {
            [params appendFormat:@"candidates/%@.", obj.campaignFinance.candidateDetailCandidateId];
        }
        
        if (obj.campaignFinance.candidateDetailsFormat)
        {
            [params appendFormat:@"%@?", obj.campaignFinance.candidateDetailsFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // CandidateLeaders
    
    if (obj.campaignFinance.candidateLeadersCycle && obj.campaignFinance.candidateLeadersCategory) 
    {
        if (obj.campaignFinance.candidateLeadersCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.candidateLeadersCycle];
        }
        
        if (obj.campaignFinance.candidateLeadersCategory)
        {
            [params appendFormat:@"candidates/leaders/%@.", obj.campaignFinance.candidateLeadersCategory];
        }
        
        if (obj.campaignFinance.candidateLeadersFormat)
        {
            [params appendFormat:@"%@?", obj.campaignFinance.candidateLeadersFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // StateCandidates
    
    if (obj.campaignFinance.stateCandidatesCycle && obj.campaignFinance.stateCandidatesState) 
    {
        if (obj.campaignFinance.stateCandidatesCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.stateCandidatesCycle];
        }
        
        if (obj.campaignFinance.stateCandidatesState)
        {
            [params appendFormat:@"seats/%@/", obj.campaignFinance.stateCandidatesState];
        }
        
        if (obj.campaignFinance.stateCandidatesChamber == @"house")
        {
            [params appendString:@"house."];
            
        } else { 
            [params appendString:@"senate."];            
        }
        
        if (obj.campaignFinance.stateCandidatesFormat)
        {
            [params appendFormat:@"%@?", obj.campaignFinance.stateCandidatesFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // NewCandidates
    
    if (obj.campaignFinance.newCandidatesCycle) 
    {
        if (obj.campaignFinance.newCandidatesCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.newCandidatesCycle];
        }
        
        if (obj.campaignFinance.newCandidatesFormat)
        {
            
            [params appendFormat:@"candidates/new.%@?", obj.campaignFinance.newCandidatesFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // CommitteeSearch
    
    if (obj.campaignFinance.committeeSearchCycle && obj.campaignFinance.committeeSearchName)
    {
        if (obj.campaignFinance.committeeSearchCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.committeeSearchCycle];
        }
        
        if (obj.campaignFinance.committeeSearchFormat)
        {
            [params appendFormat:@"committees/search.%@?", obj.campaignFinance.committeeSearchFormat];
        }
        
        if (obj.campaignFinance.committeeSearchName)
        {
            [params appendFormat:@"query=%@&", obj.campaignFinance.committeeSearchName];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // CommitteeDetails
    
    if (obj.campaignFinance.committeeDetailsCycle && obj.campaignFinance.committeeDetailsCommitteeId)
    {
        if (obj.campaignFinance.committeeDetailsCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.committeeDetailsCycle];
        }
        
        if (obj.campaignFinance.committeeDetailsCommitteeId)
        {
            [params appendFormat:@"committees/%@", obj.campaignFinance.committeeDetailsCommitteeId];
        }
        
        if (obj.campaignFinance.committeeDetailsFormat)
        {
            [params appendFormat:@".%@?", obj.campaignFinance.committeeDetailsFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // NewCommittees
    
    if (obj.campaignFinance.newCommitteeCycle) 
    {
        if (obj.campaignFinance.newCommitteeCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.newCommitteeCycle];
        }
        
        if (obj.campaignFinance.newCommitteeFormat)
        {
            [params appendFormat:@"committees/new.%@?", obj.campaignFinance.newCommitteeFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // CommitteeContributions
    
    if (obj.campaignFinance.committeeContributionsCycle && obj.campaignFinance.committeeContributionsCommitteeId)
    {
        if (obj.campaignFinance.committeeContributionsCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.committeeContributionsCycle];
        }
        
        if (obj.campaignFinance.committeeContributionsCommitteeId)
        {
            [params appendFormat:@"committees/%@/", obj.campaignFinance.committeeContributionsCommitteeId];
        }
        
        if (obj.campaignFinance.committeeContributionsFormat)
        {
            [params appendFormat:@"contributions.%@?", obj.campaignFinance.committeeContributionsFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
        
        if (obj.campaignFinance.committeeContributionsOffset)
        {
            [params appendFormat:@"&offset=%@", obj.campaignFinance.committeeContributionsOffset];
        }
    }
    
    // CommitteeContributionsTo
    
    if (obj.campaignFinance.committeeContributionsToCycle && obj.campaignFinance.committeeContributionsToCommitteeId && obj.campaignFinance.committeeContributionsToCandidateId)
    {
        if (obj.campaignFinance.committeeContributionsToCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.committeeContributionsToCycle];
        }
        
        if (obj.campaignFinance.committeeContributionsToCommitteeId)
        {
            [params appendFormat:@"committees/%@/", obj.campaignFinance.committeeContributionsToCommitteeId];
        }
        
        if (obj.campaignFinance.committeeContributionsToCandidateId)
        {
            [params appendFormat:@"candidates/%@", obj.campaignFinance.committeeContributionsToCandidateId];
        }
        
        if (obj.campaignFinance.committeeContributionsToFormat)
        {
            [params appendFormat:@".%@?", obj.campaignFinance.committeeContributionsToFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // CommitteeFilings
    
    if (obj.campaignFinance.committeeFilingsCycle && obj.campaignFinance.committeeFilingsCommitteeId)
    {
        if (obj.campaignFinance.committeeFilingsCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.committeeFilingsCycle];
        }
        
        if (obj.campaignFinance.committeeFilingsCommitteeId)
        {
            [params appendFormat:@"committees/%@", obj.campaignFinance.committeeFilingsCommitteeId];
        }
        
        if (obj.campaignFinance.committeeFilingsFormat)
        {
            [params appendFormat:@"filings.%@?", obj.campaignFinance.committeeFilingsFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // LeadershipCommittees
    
    if (obj.campaignFinance.leadershipCommitteeCycle)
    {
        if (obj.campaignFinance.leadershipCommitteeCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.leadershipCommitteeCycle];
        }
        
        if (obj.campaignFinance.leadershipCommitteeFormat)
        {
            [params appendFormat:@"committees/leadership.%@?", obj.campaignFinance.leadershipCommitteeFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // ElectronicFilingsByDate
    
    if (obj.campaignFinance.electronicFilingsByDateCycle && obj.campaignFinance.electronicFilingsByDateDate)
    {
        if (obj.campaignFinance.electronicFilingsByDateCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.electronicFilingsByDateCycle];
        }
        
        if (obj.campaignFinance.electronicFilingsByDateDate)
        {
            [params appendFormat:@"filings/%@", obj.campaignFinance.electronicFilingsByDateDate];
        }
        
        if (obj.campaignFinance.electronicFilingsByDateFormat)
        {
            [params appendFormat:@".%@?", obj.campaignFinance.electronicFilingsByDateFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // FormTypes
    
    if (obj.campaignFinance.formTypesCycle)
    {
        if (obj.campaignFinance.formTypesCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.formTypesCycle];
        }
        
        if (obj.campaignFinance.formTypesFormat)
        {
            [params appendFormat:@"filings/types.%@?", obj.campaignFinance.formTypesFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // Filings By Type
    
    if (obj.campaignFinance.filingsByTypeCycle && obj.campaignFinance.filingsByTypeFilingType)
    {
        if (obj.campaignFinance.filingsByTypeCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.filingsByTypeCycle];
        }
        
        if (obj.campaignFinance.filingsByTypeFilingType)
        {
            [params appendFormat:@"filings/types/%@", obj.campaignFinance.filingsByTypeFilingType];
        }
        
        if (obj.campaignFinance.filingsByTypeFormat)
        {
            [params appendFormat:@".%@?", obj.campaignFinance.filingsByTypeFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // PresidentialCandidateTotals
    
    if (obj.campaignFinance.presCandidateTotalsCycle)
    {
        if (obj.campaignFinance.presCandidateTotalsCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.presCandidateTotalsCycle];
        }
        
        if (obj.campaignFinance.presCandidateTotalsFormat)
        {
            [params appendFormat:@"president/totals.%@?", obj.campaignFinance.presCandidateTotalsFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // PresidentialCandidateDetails
    
    if (obj.campaignFinance.presCandidateDetailsCycle && obj.campaignFinance.presCandidateDetailsCandidateNameOrCommitteeId) 
    {
        if (obj.campaignFinance.presCandidateDetailsCycle) 
        {            
            [params appendFormat:@"%@/", obj.campaignFinance.presCandidateDetailsCycle];
        }
        
        if (obj.campaignFinance.presCandidateDetailsCandidateNameOrCommitteeId)
        {
            [params appendFormat:@"president/candidates/%@", obj.campaignFinance.presCandidateDetailsCandidateNameOrCommitteeId];
        }
        
        if (obj.campaignFinance.presCandidateDetailsFormat)
        {
            [params appendFormat:@".%@?", obj.campaignFinance.presCandidateDetailsFormat];
        }
    }
    
    // PresidentialState/ZIPTotals
    
    if (obj.campaignFinance.presStateAndZipTotalsCycle && obj.campaignFinance.presStateAndZipTotalsResourceType && obj.campaignFinance.presStateAndZipTotalsStateAbbr) 
    {
        if (obj.campaignFinance.presStateAndZipTotalsCycle)
        {
            [params appendFormat:@"%@/", obj.campaignFinance.presStateAndZipTotalsCycle];
        }
        
        if (obj.campaignFinance.presStateAndZipTotalsResourceType)
        {
            [params appendFormat:@"president/%@/", obj.campaignFinance.presStateAndZipTotalsResourceType];
        }
        
        if (obj.campaignFinance.presStateAndZipTotalsStateAbbr)
        {
            [params appendFormat:@"%@", obj.campaignFinance.presStateAndZipTotalsStateAbbr];
        }
        
        if (obj.campaignFinance.presStateAndZipTotalsFormat)
        {
            [params appendFormat:@".%@?", obj.campaignFinance.presStateAndZipTotalsFormat];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"api-key=%@", obj.apiKey];
        }
    }
    
    // PresidentialDonorInformation
    
    http://api.nytimes.com/svc/elections/us/{version}/finances/{campaign-cycle}/president/contributions/donorsearch[.response-format]?{search-parameter=value}&[optional-param1=value1]&[...]&api-key={your-API-key}[&callback={callback-function}]
    
    if (obj.campaignFinance.presDonorInformationCycle && obj.campaignFinance.presDonorInformationLastName && obj.campaignFinance.presDonorInformationSearchParameter)
    {
        if (obj.campaignFinance.presDonorInformationCycle)
        {        
            [params appendFormat:@"%@/", obj.campaignFinance.presDonorInformationCycle];
        }
        
        if (obj.campaignFinance.presDonorInformationFormat)
        {
            [params appendFormat:@"president/contributions/donorsearch.%@?", obj.campaignFinance.presDonorInformationFormat];
        }
        
        if (obj.campaignFinance.presDonorInformationSearchParameter)
        {
            [params appendFormat:@"%@=", obj.campaignFinance.presDonorInformationSearchParameter];
        }
        
        if (obj.campaignFinance.presDonorInformationLastName || obj.campaignFinance.presDonorInformationZipCode)
        {
            [params appendFormat:@"", obj.campaignFinance.presDonorInformationLastName == @"" ? obj.campaignFinance.presDonorInformationLastName : obj.campaignFinance.presDonorInformationZipCode];
        }
        
        if (obj.campaignFinance.presDonorInformationOffSet)
        {
            [params appendFormat:@"&offset=%@", obj.campaignFinance.presDonorInformationOffSet];
        }
        
        if (obj.apiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.apiKey];
        }   
    }
    
    return [NSString stringWithFormat:@"%@%@", SERVER_URL, params];
}

@end

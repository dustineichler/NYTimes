//
//  NYTimesWrapper.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/2/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesWrapper.h"

@implementation _CampaignFinance

#pragma mark -
#pragma mark CandidateSearch Methods

- (NSString *)cycle
{
    return self->candidateSearch.cycle;
}

- (void)setCycle:(NSString *)cycle
{
    self->candidateSearch.cycle = cycle;
}

- (NSString *)searchParameter
{
    return self->candidateSearch.searchParameter;
}

- (void)setSearchParameter:(NSString *)searchParameter
{
    self->candidateSearch.searchParameter = searchParameter;
}

- (NSString *)lastName
{
    return self->candidateSearch.lastName;
}

- (void)setLastName:(NSString *)lastName
{
    self->candidateSearch.lastName = lastName;
}

- (NSString *)firstName
{
    return self->candidateSearch.firstName;
}

- (void)setFirstName:(NSString *)firstName
{
    self->candidateSearch.firstName = firstName;
}

- (NSString *)offSet
{
    return self->candidateSearch.offSet;
}

- (void)setOffSet:(NSString *)offset
{
    self->candidateSearch.offSet = offset;
}

- (NSString *)format
{
    return self->candidateSearch.format;
}

- (void)setFormat:(NSString *)format
{
    self->candidateSearch.format = format;
}

#pragma mark -
#pragma mark CandidateDetails Methods

- (NSString *)candidateDetailsCycle
{
    return self->candidateDetails.cycle;
}

// TODO: DUPE
- (void)setcandidateDetailsCycle:(NSString *)cycle
{
    self->candidateDetails.cycle = cycle;
}

- (NSString *)candidateId
{
    return self->candidateDetails.candidateId;
}

- (void)setCandidateId:(NSString *)candidateId
{
    self->candidateDetails.candidateId = candidateId;
}

// TODO: DUPE
- (NSString *)candidateDetailsFormat
{
    return self->candidateDetails.format;
}

#pragma mark - 
#pragma mark CandidateLeaders Methods

- (NSString *)candidateLeadersCycle
{
    return self->candidateLeaders.cycle;
}

- (void)setCAndidateLeadersCycle:(NSString *)cycle
{
    self->candidateLeaders.cycle = cycle;
}

- (NSString *)candidateLeadersCategory
{
    return self->candidateLeaders.category;
}

- (void)setCandidateLeadersCategory:(NSString *)category
{
    self->candidateLeaders.category = category;
}

- (NSString *)candidateLeadersFormat
{
    return self->candidateLeaders.format;
}

- (void)setCandidateLeadersFormat:(NSString *)format
{
    self->candidateLeaders.format = format;
}

#pragma mark -
#pragma mark StateCandidates Methods

// TODO: DUPE
- (NSString *)stateCandidatesCycle
{
    return self->stateCandidates.cycle;
}

- (void)setStateCandidatesCycle:(NSString *)cycle
{
    self->stateCandidates.cycle = cycle;
}

- (NSString *)stateCandidatesState
{
    return self->stateCandidates.state;
}

-(void)setStateCandidatesState:(NSString *)state
{
    self->stateCandidates.state = state;
}

- (NSString *)chamber
{
    return self->stateCandidates.chamber;
}

- (void)setChamber:(NSString *)chamber
{
    self->stateCandidates.chamber = chamber;
}

- (NSString *)stateCandidatesFormat
{
    return self->stateCandidates.format;
}

// TODO: DUPE
- (void)setStateCandidatesFormat:(NSString *)format
{
    self->stateCandidates.format = format;
}

#pragma mark -
#pragma mark NewCandidates Methods

- (NSString *)newCandidatesCycle
{
    return self->newCandidates.cycle;
}

- (void)setNewCandidatesCycle:(NSString *)cycle
{
    self->newCandidates.cycle = cycle;
}

- (NSString *)newCandidatesFormat
{
    return self->newCandidates.format;
}

// TODO: DUPE
- (void)setNewCandidatesFormat:(NSString *)format
{
    self->newCandidates.format = format;
}

#pragma mark -
#pragma mark CommitteeSearch Methods

- (NSString *)committeeSearchCycle
{
    return self->committeeSearch.cycle;
}

- (void)setCommitteeSearchCycle:(NSString *)cycle
{
    self->committeeSearch.cycle = cycle;
}

- (NSString *)committeeSearchName
{
    return self->committeeSearch.name;
}

- (void)setCommitteeSearchName:(NSString *)name
{
    self->committeeSearch.name = name;
}

- (NSString *)committeeSearchFormat
{
    return self->committeeSearch.format;
}

// TODO: DUPE
- (void)setCommitteeSearchFormat:(NSString *)format
{
    self->committeeSearch.format = format;
}

#pragma mark -
#pragma mark CommitteeDetails Methods

- (NSString *)committeeDetailsCycle
{
    return self->committeeDetails.cycle;
}

- (void)setCommitteeDetailsCycle:(NSString *)cycle
{
    self->committeeDetails.cycle = cycle;
}

- (NSString *)committeeDetailsCommitteeId
{
    return self->committeeDetails.committeeId;
}

- (void)setCommitteeDetailsCommitteeId:(NSString *)committeeId
{
    self->committeeDetails.committeeId = committeeId;
}

- (NSString *)committeeDetailsFormat
{
    return self->committeeDetails.format;
}

// TODO: DUPE
- (void)setCommitteeDetailsFormat:(NSString *)format
{
    self->committeeDetails.format = format;
}

#pragma mark -
#pragma mark NewCommittee Methods  

- (NSString *)newCommitteeCycle
{
    return self->newCommittee.cycle;
}

- (void)setNewCommitteeCycle:(NSString *)cycle
{
    self->newCommittee.cycle = cycle;
}

- (NSString *)newCommitteeFormat
{
    return self->newCommittee.format;
}

// TODO: DUPE
- (void)setNewCommitteeFormat:(NSString *)format
{
    self->newCommittee.format = format;
}

#pragma mark -
#pragma CommitteeContributions Methods

- (NSString *)committeeContributionsCycle
{
    return self->committeeContributions.cycle;
}

- (void)setCommitteeContributionsCommitteeId:(NSString *)committeeId
{
    self->committeeContributions.committeeId = committeeId;
}

- (NSString *)committeeContributionsOffset
{
    return self->committeeContributions.offset;
}

- (void)setCommitteeContributionsOffset:(NSString *)offSet
{
    self->committeeContributions.offset = offSet;
}

- (NSString *)committeeContributionsFormat
{
    return self->committeeContributions.format;
}

// TODO: DUPE
- (void)setCommitteeContributionsFormat:(NSString *)format
{
    self->committeeContributions.format = format;
}

#pragma mark -
#pragma mark CommitteeContributionsTo Methods

- (NSString *)committeeContributionsToCycle
{
    return self->committeeContributionsTo.cycle;
}

- (void)setCommitteeContributionsToCycle:(NSString *)cycle
{
    self->committeeContributionsTo.cycle = cycle;
}

- (NSString *)committeeContributionsToCandidateId
{
    return self->committeeContributionsTo.candidateId;
}

- (void)setCommitteeContributionsToCandidateId:(NSString *)candidateId
{
    self->committeeContributionsTo.candidateId = candidateId;
}

- (NSString *)committeeContributionsToCommitteeId
{
    return self->committeeContributionsTo.committeeId;
}

- (void)setCommitteeContributionsToCommitteeId:(NSString *)committeeId
{
    self->committeeContributionsTo.committeeId = committeeId;
}

- (NSString *)committeeContributionsToFormat
{
    return self->committeeContributionsTo.format;
}

// TODO: DUPE
- (void)setCommitteeContributionsToFormat:(NSString *)format
{
    self->committeeContributionsTo.format = format;
}

#pragma mark -
#pragma mark CommitteeFilings Methods

- (NSString *)committeeFilingsCycle
{
    return self->committeeFilings.cycle;
}

- (void)setCommitteeFilingsCycle:(NSString *)cycle
{
    self->committeeFilings.cycle = cycle;
}

- (NSString *)committeeFilingsCommitteeId
{
    return self->committeeFilings.committeeId;
}

- (void)setCommitteeFilingsCommitteeId:(NSString *)committeeId
{
    self->committeeFilings.committeeId = committeeId;
}

- (NSString *)committeeFilingsFormat
{
    return self->committeeFilings.format;
}

- (void)setCommitteeFilingsFormat:(NSString *)format
{
    self->committeeFilings.format = format;
}

#pragma mark -
#pragma mark LeadershipCommittee Methods

- (NSString *)leadershipCommitteeCycle
{
    return self->leadershipCommittee.cycle;
}

- (void)setLeadershipCommitteeCycle:(NSString *)cycle
{
    self->leadershipCommittee.cycle = cycle;
}

- (NSString *)leadershipCommitteeFormat
{
    return self->leadershipCommittee.format;
}

- (void)setLeadershipCommitteeFormat:(NSString *)format
{
    self->leadershipCommittee.format = format;
}

#pragma mark -
#pragma mark ElectronicFilingsByDate Methods

- (NSString *)electronicFilingsByDateCycle
{
    return self->electronicFilingsByDate.cycle;
}

- (void)setElectronicFilingsByDateCycle:(NSString *)cycle
{
    self->electronicFilingsByDate.cycle = cycle;
}

- (NSString *)electronicFilingsByDateDate
{
    return self->electronicFilingsByDate.date;
}

- (void)setElectronicFilingsByDateDate:(NSString *)date
{
    self->electronicFilingsByDate.date = date;
}

- (NSString *)electronicFilingsByDateFormat
{
    return self->electronicFilingsByDate.format;
}

- (void)setElectronicFilingsByDateFormat:(NSString *)format
{
    self->electronicFilingsByDate.format = format;
}

#pragma mark -
#pragma mark FormTypes Methods

- (NSString *)formTypesCycle
{
    return self->formTypes.cycle;
}

- (void)formTypesCycle:(NSString *)cycle
{
    self->formTypes.cycle = cycle;
}

- (NSString *)formTypesFormat
{
    return self->formTypes.format;
}

- (void)formTypesFormat:(NSString *)format
{
    self->formTypes.format = format;
}

#pragma mark -
#pragma mark FilingsByType

- (NSString *)filingsByTypeFields
{
    return self->filingsByType.fields;
}

- (void)setFilingsByTypeFields:(NSString *)fields
{
    self->filingsByType.fields = fields;
}

- (NSString *)filingsByTypeFilingType
{
    return self->filingsByType.filingType;
}

- (void)setFilingsByTypeFilingType:(NSString *)filingType
{
    self->filingsByType.filingType = filingType;
}

- (NSString *)filingsByTypeFormat
{
    return self->filingsByType.format;
}

- (void)setFilingsByTypeFormat:(NSString *)format
{
    self->filingsByType.format = format;
}

#pragma mark -
#pragma mark PresCandidateTotals

- (NSString *)presCandidateTotalsCycle
{
    return self->presCandidateTotals.cycle;
}

- (void)setPresCandidateTotalsCycle:(NSString *)cycle
{
    self->presCandidateTotals.cycle = cycle;
}

- (NSString *)presCandidateTotalsFormat
{
    return self->presCandidateTotals.format;
}

- (void)setPresCandidateTotalsFormat:(NSString *)format
{
    self->presCandidateTotals.format = format;
}

#pragma mark -
#pragma mark _PresCandidateDetails

- (NSString *)presCandidateDetailsCycle
{
    return presCAndidateDetails.cycle;
}

- (void)setPresCAndidateDetailsCycle:(NSString *)cycle
{
    self->presCAndidateDetails.cycle = cycle;
}

- (NSString *)presCAndidateDetailsCandidateNameOrCommitteeId
{
    return self->presCAndidateDetails.candidateNameOrCommitteeId;
}

- (void)setPresCandidateDetailsCandidateNameOrCommitteeId:(NSString *)candidateNameOrCommitteeId
{
    self->presCAndidateDetails.candidateNameOrCommitteeId = candidateNameOrCommitteeId;
}

- (NSString *)presCandidateDetailsFormat
{
    return self->presCAndidateDetails.format;
}

- (void)setPresCandidateDetailsFormat:(NSString *)format
{
    self->presCAndidateDetails.format = format;
}

#pragma mark -
#pragma mark PresStateAndZipTotals

- (NSString *)presStateAndZipTotalsCycle
{
    return self->presStateAndZipTotals.cycle;
}

- (void)setPresStateAndZipTotalsCycle:(NSString *)cycle
{
    self->presStateAndZipTotals.cycle = cycle;
}

- (NSString *)presStateAndZipTotalsResourceType
{
    return self->presStateAndZipTotals.resourceType;
}

- (void)setPresStateAndZipTotalsResourceType:(NSString *)resourceType
{
    self->presStateAndZipTotals.resourceType = resourceType;
}

- (NSString *)presStateAndZipTotalsStateAbbr
{
    return self->presStateAndZipTotals.stateAbbr;
}

- (void)setPresStateAndZipTotalsStateAbbr:(NSString *)stateAbbr
{
    self->presStateAndZipTotals.stateAbbr = stateAbbr;
}

- (NSString *)presStateAndZipTotalsFormat
{
    return self->presStateAndZipTotals.format;
}

- (void)setPresStateAndZipTotalsFormat:(NSString *)format
{
    self->presStateAndZipTotals.format = format;
}

#pragma mark -
#pragma mark PresDonorInformation Methods

- (NSString *)presDonorInformationCycle
{
    return self->presDonorInformation.cycle;
}

- (void)setPresDonorInformationCycle:(NSString *)cycle
{
    self->presDonorInformation.cycle = cycle;
}

- (NSString *)presDonorInformationSearchParameter
{
    return self->presDonorInformation.searchParameter;
}

- (void)setPresDonorInformationSearchParameter:(NSString *)searchParameter
{
    self->presDonorInformation.searchParameter = searchParameter;
}

- (NSString *)presDonorInformationLastName
{
    return self->presDonorInformation.lastName;
}

- (void)setPresDonorInformationLastName:(NSString *)lastName
{
    self->presDonorInformation.lastName = lastName;
}

- (NSString *)presDonorInformationOffSet
{
    return self->presDonorInformation.offSet;
}

- (void)setPresDonorInformationOffSet:(NSString *)offSet
{
    self->presDonorInformation.offSet = offSet;
}

- (NSString *)presDonorInformationFormat
{
    return self->presDonorInformation.format;
}

- (void)setPresDonorInformationFormat:(NSString *)format
{
    self->presDonorInformation.format = format;
}

@end

@implementation NYTimesWrapper
@synthesize article, bestSeller, campaignFinance, apiKey;

- (id)initWithAPIKey:(NSString *)key
{
    self = [super init];
    if (self == nil)
    {
        return nil;
    }
    
    NSParameterAssert(key != nil || [key length] == 0);
    
    self.apiKey = key;
    
    return self;
}

#pragma mark -
#pragma Articles Methods

- (void)setFormat:(NSString *)string
{
    if (string)
    {
        self->article.format = string;
    }
}

- (NSString *)format
{
    return self->article.format;
}

- (void)setQuery:(NSString *)query
{
    if (query)
    {
        self->article.query = query;
    }
}

- (NSString *)query
{
    return self->article.query;
}

- (void)setFacets:(NSString *)facets
{
    if (facets)
    {
        self->article.facets = facets;
    }
}

- (NSString *)facets
{
    return self->article.facets;
}

- (void)setFields:(NSString *)fields
{
    if (fields)
    {
        self->article.fields = fields;
    }
}

- (NSString *)fields
{
    return self->article.fields;
}

- (void)setOffset:(NSString *)offset
{
    if (offset)
    {
        self->article.offset = offset;
    }
}

- (NSString *)offset
{
    return self->article.offset;
}

- (void)setRank:(NSString *)rank
{
    if (rank)
    {
        self->article.rank = rank;
    }
}

- (NSString *)rank
{
    return self->article.rank;
}

- (void)setStartDate:(NSString *)startDate
{
    if (startDate)
    {
        self->article.startDate = startDate;
    }
}

- (NSString *)startDate
{
    return self->article.startDate;
}

- (void)setEndDate:(NSString *)endDate
{
    if (endDate)
    {
        self->article.endDate = endDate;
    }
}

- (NSString *)endDate
{
    return self->article.endDate;
}

#pragma mark -
#pragma Best Sellers Methods

- (void)setListName:(NSString *)listName
{
    if (listName)
    {
        self->bestSeller.listName = listName;
    }
}

- (NSString *)listName
{
    return self->bestSeller.listName;
}

- (void)setDate:(NSString *)date
{
    if (date)
    {
        self->bestSeller.date = date;
    }
}

- (NSString *)date
{
    return self->bestSeller.date;
}

//NSString *offset;

- (void)setSortBy:(NSString *)sortBy
{
    if (sortBy)
    {
        self->bestSeller.sortBy = sortBy;
    }
}

- (NSString *)sortBy
{
    return self->bestSeller.sortBy;
}

- (void)setSortOrder:(NSString *)sortOrder
{
    if (sortOrder)
    {
        self->bestSeller.sortOrder = sortOrder;
    }
}

- (NSString *)sortOrder
{
    return self->bestSeller.sortOrder;
}

//NSString *format;

#pragma mark -
#pragma CampaignFinance Methods


@end



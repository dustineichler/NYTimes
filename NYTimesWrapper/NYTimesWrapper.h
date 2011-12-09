//
//  NYTimesWrapper.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/2/11.
//  Copyright (c) 2011. All rights reserved.
//

#import <Foundation/Foundation.h>

struct _CandidateSearch {
    NSString *cycle;
    NSString *searchParameter;
    NSString *lastName;
    NSString *firstName;
    NSString *offSet;
    NSString *format;
};
typedef struct _CandidateSearch candidateSearch;

struct _CandidateDetails {
    NSString *cycle;
    NSString *candidateId;
    NSString *format;
};
typedef struct _CandidateDetails candidateDetails;

struct _CandidateLeaders {
    NSString *cycle;
    NSString *category;
    NSString *format;
};
typedef struct _CandidateLeaders candidateLeaders;

// TODO: DWE: Need to add District when House is selected.
struct _StateCandidates {
    NSString *cycle;
    NSString *state;
    NSString *chamber;
    NSString *format;
};
typedef struct _StateCandidates stateCandidates;

struct _NewCandidates {
    NSString *cycle;
    NSString *format;
};
typedef struct _NewCandidates newCandidates;

struct _CommitteeSearch {
    NSString *cycle;
    NSString *name;
    NSString *format;
};
typedef struct _CommitteeSearch committeeSearch;

struct _CommitteeDetails {
    NSString *cycle;
    NSString *committeeId;
    NSString *format;
};
typedef struct _CommitteeDetails committeeDetails;

struct _NewCommittee {
    NSString *cycle;
    NSString *format;
};
typedef struct _NewCommittee newCommittee;    

struct _CommitteeContributions {
    NSString *cycle;
    NSString *committeeId;
    NSString *offset;
    NSString *format;
};
typedef struct _CommitteeContributions committeeContributions;

struct _CommitteeContributionsTo {
    NSString *cycle;
    NSString *candidateId;
    NSString *committeeId;
    NSString *format;
};
typedef struct _CommitteeContributionsTo committeeContributionsTo;

struct _CommitteeFilings {
    NSString *cycle;
    NSString *committeeId;
    NSString *format;
};
typedef struct _CommitteeFilings committeeFilings;

struct _LeadershipCommittee {
    NSString *cycle;
    NSString *format;
};
typedef struct _LeadershipCommittee leadershipCommittee;

struct _ElectronicFilingsByDate {
    NSString *cycle;
    NSString *date;
    NSString *format;
};
typedef struct _ElectronicFilingsByDate electronicFilingsByDate;

struct _FormTypes {
    NSString *cycle;
    NSString *format;
};
typedef struct _FormTypes formTypes;

struct _FilingsByType {
    NSString *fields;
    NSString *filingType;
    NSString *format;
};
typedef struct _FilingsByType filingsByType;

struct _PresCandidateTotals {
    NSString *cycle;
    NSString *format;
};
typedef struct _PresCandidateTotals presCandidateTotals;

struct _PresCAndidateDetails {
    NSString *cycle;
    NSString *candidateNameOrCommitteeId;
    NSString *format;
};
typedef struct _PresCAndidateDetails presCAndidateDetails;

struct _PresStateAndZipTotals {
    NSString *cycle;
    NSString *resourceType;
    NSString *stateAbbr;
    NSString *format;
};
typedef struct _PresStateAndZipTotals presStateAndZipTotals;

struct _PresDonorInformation {
    NSString *cycle;
    NSString *searchParameter;
    NSString *lastName;
    NSString *firstName;
    NSString *offSet;
    NSString *format;
};
typedef struct _PresDonorInformation presDonorInformation;

#pragma mark -
#pragma mark CampaignFinance

@interface _CampaignFinance : NSObject
{
    struct _CandidateSearch candidateSearch;
    struct _CandidateDetails candidateDetails;
    struct _CandidateLeaders candidateLeaders;
    struct _StateCandidates stateCandidates;
    struct _NewCandidates newCandidates;
    struct _CommitteeSearch committeeSearch;
    struct _CommitteeDetails committeeDetails;
    struct _NewCommittee newCommittee;
    struct _CommitteeContributions committeeContributions;
    struct _CommitteeContributionsTo committeeContributionsTo;
    struct _CommitteeFilings committeeFilings;
    struct _LeadershipCommittee leadershipCommittee;
    struct _ElectronicFilingsByDate electronicFilingsByDate;
    struct _FormTypes formTypes;
    struct _FilingsByType filingsByType;
    struct _PresCandidateTotals presCandidateTotals;
    struct _PresCAndidateDetails presCAndidateDetails;
    struct _PresStateAndZipTotals presStateAndZipTotals;
    struct _PresDonorInformation presDonorInformation;
}

@property struct _CandidateSearch candidateSearch;
@property struct _CandidateDetails candidateDetails;
@property struct _CandidateLeaders candidateLeaders;
@property struct _StateCandidates stateCandidates;
@property struct _NewCandidates newCandidates;
@property struct _CommitteeSearch committeeSearch;
@property struct _CommitteeDetails committeeDetails;
@property struct _NewCommittee newCommittee;
@property struct _CommitteeContributions committeeContributions;
@property struct _CommitteeContributionsTo committeeContributionsTo;
@property struct _CommitteeFilings committeeFilings;
@property struct _LeadershipCommittee leadershipCommittee;
@property struct _ElectronicFilingsByDate electronicFilingsByDate;
@property struct _FormTypes formTypes;
@property struct _FilingsByType filingsByType;
@property struct _PresCandidateTotals presCandidateTotals;
@property struct _PresCAndidateDetails presCAndidateDetails;
@property struct _PresStateAndZipTotals presStateAndZipTotals;
@property struct _PresDonorInformation presDonorInformation;

- (void)checkValuesOfStructsUsingBlock:(void (^)(int i, NSUInteger idx, BOOL *stop))block;

#pragma mark -
#pragma mark CandidateSearch

- (void)setCycle:(NSString *)cycle;
- (NSString *)cycle;
- (NSString *)searchParameter;
- (void)setSearchParameter:(NSString *)searchParameter;
- (NSString *)lastName;
- (void)setLastName:(NSString *)lastName;
- (NSString *)firstName;
- (void)setFirstName:(NSString *)firstName;
- (NSString *)offSet;
- (void)setOffSet:(NSString *)offset;
- (NSString *)format;
- (void)setFormat:(NSString *)format;

#pragma mark -
#pragma mark CandidateDetails

- (NSString *)candidateDetailsCycle;
- (void)setcandidateDetailsCycle:(NSString *)cycle;
- (NSString *)candidateId;
- (void)setCandidateId:(NSString *)candidateId;
- (NSString *)candidateDetailsFormat;

#pragma mark - 
#pragma mark CandidateLeaders

- (NSString *)candidateLeadersCycle;
- (void)setCAndidateLeadersCycle:(NSString *)cycle;
- (NSString *)candidateLeadersCategory;
- (void)setCandidateLeadersCategory:(NSString *)category;
- (NSString *)candidateLeadersFormat;
- (void)setCandidateLeadersFormat:(NSString *)format;

#pragma mark -
#pragma mark StateCandidates

- (NSString *)stateCandidatesCycle;
- (void)setStateCandidatesCycle:(NSString *)cycle;
- (NSString *)stateCandidatesState;
- (void)setStateCandidatesState:(NSString *)state;
- (NSString *)chamber;
- (void)setChamber:(NSString *)chamber;
- (NSString *)stateCandidatesFormat;
- (void)setStateCandidatesFormat:(NSString *)format;

#pragma mark -
#pragma mark NewCandidates

- (NSString *)newCandidatesCycle;
- (void)setNewCandidatesCycle:(NSString *)cycle;
- (NSString *)newCandidatesFormat;
- (void)setNewCandidatesFormat:(NSString *)format;

#pragma mark -
#pragma mark CommitteeSearch

- (NSString *)committeeSearchCycle;
- (void)setCommitteeSearchCycle:(NSString *)cycle;
- (NSString *)committeeSearchName;
- (void)setCommitteeSearchName:(NSString *)name;
- (NSString *)committeeSearchFormat;
- (void)setCommitteeSearchFormat:(NSString *)format;

#pragma mark -
#pragma mark CommitteeDetails

- (NSString *)committeeDetailsCycle;
- (NSString *)committeeDetailsCommitteeId;
- (void)setCommitteeDetailsCommitteeId:(NSString *)committeeId;
- (NSString *)committeeDetailsFormat;
- (void)setCommitteeDetailsFormat:(NSString *)format;

#pragma mark -
#pragma mark NewCommittee

- (NSString *)newCommitteeCycle;
- (void)setNewCommitteeCycle:(NSString *)cycle;
- (NSString *)newCommitteeFormat;
- (void)setNewCommitteeFormat:(NSString *)format;

#pragma mark -
#pragma CommitteeContributions

- (NSString *)committeeContributionsCycle;
- (void)setCommitteeContributionsCommitteeId:(NSString *)committeeId;
- (NSString *)committeeContributionsOffset;
- (void)setCommitteeContributionsOffset:(NSString *)offSet;
- (NSString *)committeeContributionsFormat;
- (void)setCommitteeContributionsFormat:(NSString *)format;

#pragma mark -
#pragma mark CommitteeContributionsTo

- (NSString *)committeeContributionsToCycle;
- (void)setCommitteeContributionsToCycle:(NSString *)cycle;
- (NSString *)committeeContributionsToCandidateId;
- (void)setCommitteeContributionsToCandidateId:(NSString *)candidateId;
- (NSString *)committeeContributionsToCommitteeId;
- (void)setCommitteeContributionsToCommitteeId:(NSString *)committeeId;
- (NSString *)committeeContributionsToFormat;
- (void)setCommitteeContributionsToFormat:(NSString *)format;

#pragma mark -
#pragma mark CommitteeFilings

- (NSString *)committeeFilingsCycle;
- (void)setCommitteeFilingsCycle:(NSString *)cycle;
- (NSString *)committeeFilingsCommitteeId;
- (void)setCommitteeFilingsCommitteeId:(NSString *)committeeId;
- (NSString *)committeeFilingsFormat;
- (void)setCommitteeFilingsFormat:(NSString *)format;

#pragma mark -
#pragma mark LeadershipCommittee

- (NSString *)leadershipCommitteeCycle;
- (void)setLeadershipCommitteeCycle:(NSString *)cycle;
- (NSString *)leadershipCommitteeFormat;
- (void)setLeadershipCommitteeFormat:(NSString *)format;

#pragma mark -
#pragma mark ElectronicFilingsByDate

- (NSString *)electronicFilingsByDateCycle;
- (void)setElectronicFilingsByDateCycle:(NSString *)cycle;
- (NSString *)electronicFilingsByDateDate;
- (void)setElectronicFilingsByDateDate:(NSString *)date;
- (NSString *)electronicFilingsByDateFormat;
- (void)setElectronicFilingsByDateFormat:(NSString *)format;

#pragma mark -
#pragma mark FormTypes

- (NSString *)formTypesCycle;
- (void)formTypesCycle:(NSString *)cycle;
- (NSString *)formTypesFormat;
- (void)formTypesFormat:(NSString *)format;

#pragma mark -
#pragma mark FilingsByType

- (NSString *)filingsByTypeFields;
- (void)setFilingsByTypeFields:(NSString *)fields;
- (NSString *)filingsByTypeFilingType;
- (void)setFilingsByTypeFilingType:(NSString *)filingType;
- (NSString *)filingsByTypeFormat;
- (void)setFilingsByTypeFormat:(NSString *)format;

#pragma mark -
#pragma mark PresCandidateTotals

- (NSString *)presCandidateTotalsCycle;
- (void)setPresCandidateTotalsCycle:(NSString *)cycle;
- (NSString *)presCandidateTotalsFormat;
- (void)setPresCandidateTotalsFormat:(NSString *)format;

#pragma mark -
#pragma mark _PresCandidateDetails

- (NSString *)presCandidateDetailsCycle;
- (void)setPresCAndidateDetailsCycle:(NSString *)cycle;
- (NSString *)presCAndidateDetailsCandidateNameOrCommitteeId;
- (void)setPresCandidateDetailsCandidateNameOrCommitteeId:(NSString *)candidateNameOrCommitteeId;
- (NSString *)presCandidateDetailsFormat;
- (void)setPresCandidateDetailsFormat:(NSString *)format;

#pragma mark -
#pragma mark PresStateAndZipTotals

- (NSString *)presStateAndZipTotalsCycle;
- (void)setPresStateAndZipTotalsCycle:(NSString *)cycle;
- (NSString *)presStateAndZipTotalsResourceType;
- (void)setPresStateAndZipTotalsResourceType:(NSString *)resourceType;
- (NSString *)presStateAndZipTotalsStateAbbr;
- (void)setPresStateAndZipTotalsStateAbbr:(NSString *)stateAbbr;
- (NSString *)presStateAndZipTotalsFormat;
- (void)setPresStateAndZipTotalsFormat:(NSString *)format;

#pragma mark -
#pragma mark PresDonorInformation

- (NSString *)presDonorInformationCycle;
- (void)setPresDonorInformationCycle:(NSString *)cycle;
- (NSString *)presDonorInformationSearchParameter;
- (void)setPresDonorInformationSearchParameter:(NSString *)searchParameter;
- (NSString *)presDonorInformationLastName;
- (void)setPresDonorInformationLastName:(NSString *)lastName;
- (NSString *)presDonorInformationOffSet;
- (void)setPresDonorInformationOffSet:(NSString *)offSet;
- (NSString *)presDonorInformationFormat;
- (void)setPresDonorInformationFormat:(NSString *)format;

@end

struct _ArticleStruct {
    NSString *format;
    NSString *query;
    NSString *facets;
    NSString *fields;
    NSString *offset;
    NSString *rank;
    NSString *startDate;
    NSString *endDate;
};
typedef struct _ArticleStruct article;

struct _BestSellerStruct {
    NSString *listName;
    NSString *date;
    NSString *offset;
    NSString *sortBy;
    NSString *sortOrder;
    NSString *format;
};
typedef struct _BestSellerStruct bestSeller;

#pragma mark -
#pragma mark NYTimesWrapper

@interface NYTimesWrapper : NSObject
{    
    NSString *apiKey;
    struct _ArticleStruct article;
    struct _BestSellerStruct bestSeller;
    
    _CampaignFinance *campaignFinance;
}

@property struct _ArticleStruct article;
@property struct _BestSellerStruct bestSeller;

@property (nonatomic, retain) _CampaignFinance *campaignFinance;

@property (nonatomic, retain) NSString *apiKey;

- (id)initWithAPIKey:(NSString *)key;

- (void)setFormat:(NSString *)string;
- (void)setQuery:(NSString *)query;
- (void)setFacets:(NSString *)facets;
- (void)setFields:(NSString *)fields;
- (void)setOffset:(NSString *)offset;
- (void)setRank:(NSString *)rank;
- (void)setStartDate:(NSString *)startDate;
- (void)setEndDate:(NSString *)endDate;

- (NSString *)format;
- (NSString *)query;
- (NSString *)facets;
- (NSString *)fields;
- (NSString *)offset;
- (NSString *)rank;
- (NSString *)startDate;
- (NSString *)endDate;

- (void)setListName:(NSString *)listName;
- (void)setDate:(NSString *)date;
//NSString *offset;
- (void)setSortBy:(NSString *)sortBy;
- (void)setSortOrder:(NSString *)sortOrder;
//NSString *format;

- (NSString *)listName;
- (NSString *)date;
- (NSString *)sortBy;
- (NSString *)sortOrder;

@end

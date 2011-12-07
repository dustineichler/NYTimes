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
struct _CandidateSearch candidateSearch;

struct _CandidateDetails {
    NSString *cycle;
    NSString *candidateId;
    NSString *format;
};
struct _CandidateDetails candidateDetails;

struct _CandidateLeaders {
    NSString *cycle;
    NSString *category;
    NSString *format;
};
struct _CandidateLeaders candidateLeaders;

struct _StateCandidates {
    NSString *cycle;
    NSString *state;
    NSString *chamber;
    NSString *format;
};
struct _StateCandidates stateCandidates;

struct _NewCandidates {
    NSString *cycle;
    NSString *format;
};
struct _NewCandidates newCandidates;

struct _CommitteeSearch {
    NSString *cycle;
    NSString *name;
    NSString *format;
};
struct _CommitteeSearch committeeSearch;

struct _CommitteeDetails {
    NSString *cycle;
    NSString *committeeId;
    NSString *format;
};
struct _CommitteeDetails committeeDetails;

struct _NewCommittee {
    NSString *cycle;
    NSString *format;
};
struct _NewCommittee newCommittee;    

struct _CommitteeContributions {
    NSString *cycle;
    NSString *committeeId;
    NSString *offset;
    NSString *format;
};
struct _CommitteeContributions committeeContributions;

struct _CommitteeContributionsTo {
    NSString *cycle;
    NSString *candidateId;
    NSString *committeeId;
    NSString *format;
};
struct _CommitteeContributionsTo committeeContributionsTo;

struct _CommitteeFilings {
    NSString *cycle;
    NSString *committeeId;
    NSString *format;
};
struct _CommitteeFilings committeeFilings;

struct _LeadershipCommittee {
    NSString *cycle;
    NSString *format;
};
struct _LeadershipCommittee leadershipCommittee;

struct _ElectronicFilingsByDate {
    NSString *cycle;
    NSString *date;
    NSString *format;
};
struct _ElectronicFilingsByDate electronicFilingsByDate;

struct _FormTypes {
    NSString *cycle;
    NSString *format;
};
struct _FormTypes formTypes;

struct _FilingsByType {
    NSString *fields;
    NSString *filingType;
    NSString *format;
};
struct _FilingsByType filingsByType;

struct _PresCandidateTotals {
    NSString *cycle;
    NSString *format;
};
struct _PresCandidateTotals presCandidateTotals;

struct _PresCAndidateDetails {
    NSString *cycle;
    NSString *candidateNameOrCommitteeId;
    NSString *format;
};
struct _PresCAndidateDetails presCAndidateDetails;

struct _PresStateAndZipTotals {
    NSString *cycle;
    NSString *resourceType;
    NSString *stateAbbr;
    NSString *format;
};
struct _PresStateAndZipTotals presStateAndZipTotals;

struct _PresDonorInformation {
    NSString *cycle;
    NSString *searchParameter;
    NSString *lastName;
    NSString *firstName;
    NSString *offSet;
    NSString *format;
};
struct _PresDonorInformation presDonorInformation;

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

struct _BestSellerStruct {
    NSString *listName;
    NSString *date;
    NSString *offset;
    NSString *sortBy;
    NSString *sortOrder;
    NSString *format;
};

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

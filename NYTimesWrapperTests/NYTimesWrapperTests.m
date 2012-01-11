//
//  NYTimesWrapperTests.m
//  NYTimesWrapperTests
//
//  Created by Dustin Eichler on 12/2/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesWrapperTests.h"
#import "SBJson.h"

#define ARTICLE_API_KEY @"e54e6d296ec5da4fc406da071676d50b:10:60749136"
#define BEST_SELLER_API_KEY @"9227495210144cc6ebf6de9b7ba2a3cf:17:60749136"
#define CAMPAIGN_FINANCE_API_KEY @"BLANK"

#define ARTICLE_SERVER_URL @"http://api.nytimes.com/svc/search/v1/article?"
#define BEST_SELLER_SERVER_URL @"http://api.nytimes.com/svc/books/v2/lists/"
#define CAMPAIGN_FINANCE_SERVER_URL @"BLANK"

@implementation NYTimesWrapperTests
@synthesize articles, bestSellers, campaignFinance, globalURL, receivedData;

- (void)setUp
{
    [super setUp];
    articles = [[NYTimesWrapper alloc] initWithAPIKey:ARTICLE_API_KEY];
}

// TODO: DWE: This needs to be moved into its own Articles Class, not NYTimesWrapper
- (void)testArticleGettersAndSetters
{    
    [articles setStartDate:@"20110102"];
    STAssertEqualObjects(@"20110102", articles.startDate, @"Should Accept Formatted Date");
    
    [articles setEndDate:@"20110202"];
    STAssertEqualObjects(@"20110202", articles.endDate, @"Should Accept Formatted Date");
    
    [articles setFacets:@"Facet1, Facet2, Facet3"];
    STAssertEqualObjects(@"Facet1+Facet2+Facet3", articles.facets, @"Should Equal, replace Commas and join with Plus sign");
    
    [articles setFacets:@"Facet1"];
    STAssertEqualObjects(@"Facet1", articles.facets, @"Should Equal, replace Commas and join with Plus sign");

    [articles setFields:@"Fields1, Fields2, Fields3"];
    STAssertEqualObjects(@"Fields1+Fields2+Fields3", articles.fields, @"Should Equal, replace Commas and join with Plus sign");
    
    [articles setFields:@"Fields1"];
    STAssertEqualObjects(@"Fields1", articles.fields, @"Should Equal, replace Commas and join with Plus sign");
    
    [articles setFormat:@"XML"];
    STAssertEqualObjects(@"xml", articles.format, @"Should Equal XML");
    
    [articles setFormat:@"JSON"];
    STAssertEqualObjects(@"json", articles.format, @"Should Equal JSON");
}

// TODO: DWE: This needs to be moved into its own BestSeller Class, not NYTimesWrapper
- (void)testBestSellerGettersAndSetters
{
    [articles setListName:@"List Name"];
    STAssertEqualObjects(@"List-Name", articles.listName, @"Should Equal, replace whitespame and join with hypens");
    
    [articles setListName:@"List"];    
    STAssertEqualObjects(@"List", articles.listName, @"Should Equal, replace whitespame and join with hypens");
    
    [articles setDate:@"20110102"];
    STAssertEqualObjects(@"20110102", articles.date, @"Should Accept Formatted Date");
    
    [articles setBestSellerOffset:@"20"];
    STAssertEqualObjects(@"20", articles.bestSellerOffset, @"Should be true and a positive multiple of 20");
    
    [articles setBestSellerOffset:@"25"];
    STAssertNil(articles.bestSellerOffset, @"Should be nil if not a multiple of 20");
    
    [articles setSortBy:@"BestSellers-Date"];
    STAssertEqualObjects(@"bestsellers", articles.sortBy, @"Should be equal");
    
    [articles setSortBy:@"Date"];
    STAssertEqualObjects(@"date", articles.sortBy, @"Should be equal");
    
    [articles setSortBy:@"ISBN"];
    STAssertEqualObjects(@"isbn", articles.sortBy, @"Should be equal");
    
    [articles setSortBy:@"List"];
    STAssertEqualObjects(@"list", articles.sortBy, @"Should be equal");
    
    [articles setSortBy:@"List-Name"];
    STAssertEqualObjects(@"list-name", articles.sortBy, @"Should be equal");
    
    [articles setSortBy:@"Published-Date"];
    STAssertEqualObjects(@"published-date", articles.sortBy, @"Should be equal");
    
    [articles setSortBy:@"Rank"];
    STAssertEqualObjects(@"rank", articles.sortBy, @"Should be equal");
    
    [articles setSortBy:@"Rank-Last-Week"];
    STAssertEqualObjects(@"rank-last-week", articles.sortBy, @"Should be equal");
    
    [articles setSortBy:@"Weeks-On-List"];
    STAssertEqualObjects(@"weeks-on-list", articles.sortBy, @"Should be equal");
    
    [articles setSortBy:@"Foobar"];
    STAssertNil(articles.sortBy, @"Should be bil, Foobar not a SortBy description");
    
    [articles setBestSellerFormat:@"XML"];
    STAssertEqualObjects(@"xml", articles.bestSellerFormat, @"Should be equal");
    
    [articles setBestSellerFormat:@"JSON"];
    STAssertEqualObjects(@"json", articles.bestSellerFormat, @"Should be equal");
    
//    [articles setBestSellerFormat:@"FooType"];
//    STAssertNil(articles.bestSellerFormat, @"Should be nil if type is incorrect");
}

- (void)testCampaignFinanceCandidateSearch
{
    [articles.campaignFinance setCandidateSearchCycle:@"20111223"];
    NSString *candidateSearchCycle = articles.campaignFinance.candidateSearchCycle;
    STAssertEqualObjects(@"20111223", candidateSearchCycle, @"Should Accept Formatted Date");
    
    [articles.campaignFinance setCandidateSearchLastName:@"Greene"];
    NSString *candidateSearchLastName = articles.campaignFinance.candidateSearchLastName;
    STAssertEqualObjects(@"Greene", candidateSearchLastName, @"Should be true and greater than 0");
    
    [articles.campaignFinance setCandidateSearchFormat:@"JSON"];
    NSString *candidateSearchFormat = articles.campaignFinance.candidateSearchFormat;
    STAssertEqualObjects(@"json", candidateSearchFormat, @"Should be valid format");
}

- (void)testCampaignFinanceCandidateDetails
{
    [articles.campaignFinance setCandidateDetailsCycle:@"20111223"];
    NSString *candidateDetailsCycle = articles.campaignFinance.candidateDetailsCycle;
    STAssertEqualObjects(@"20111223", candidateDetailsCycle, @"Should be valid date format");
    
    // TODO: DWE: This Needs to be either (P|H|S) + 9 Digits
    [articles.campaignFinance setCandidateDetailCandidateId:@"P100000000"];
    NSString *candidateDetailCandidateId = articles.campaignFinance.candidateDetailCandidateId;
    STAssertEqualObjects(@"P100000000", candidateDetailCandidateId, @"Should be 1 Character plus 9 digits");
    
    [articles.campaignFinance setCandidateDetailsFormat:@"JSON"];
    NSString *candidateDetailsFormat = articles.campaignFinance.candidateDetailsFormat;
    STAssertEqualObjects(@"JSON", candidateDetailsFormat, @"Should be valid format");
    
//    [articles.campaignFinance setCandidateDetailFormat:@"FOOJSON"];
//    NSString *candidateDetailsFormat2 = articles.campaignFinance.candidateDetailsFormat;
//    STAssertNil(candidateDetailsFormat2, @"Should be nil if neither format is XML or JSON");
}

- (void)testCampaignFinanceCandidateLeaders
{
    [articles.campaignFinance setCandidateLeadersCycle:@"20111223"];
    NSString *candidateLeadersCycle = articles.campaignFinance.candidateLeadersCycle;
    STAssertEqualObjects(@"20111223", candidateLeadersCycle, @"Should be valid date format");
    
    [articles.campaignFinance setCandidateLeadersCategory:@"Candidate Loan"];
    NSString *candidateLeadersCategory1 = articles.campaignFinance.candidateLeadersCategory;
    STAssertEqualObjects(@"candidate_loan", candidateLeadersCategory1, @"Should be valid category");
    
    [articles.campaignFinance setCandidateLeadersCategory:@"Contribution Total"];
    NSString *candidateLeadersCategory2 = articles.campaignFinance.candidateLeadersCategory;
    STAssertEqualObjects(@"contribution_total", candidateLeadersCategory2, @"Should be valid category");
    
    [articles.campaignFinance setCandidateLeadersCategory:@"Debts Owed"];
    NSString *candidateLeadersCategory3 = articles.campaignFinance.candidateLeadersCategory;
    STAssertEqualObjects(@"debts_owed", candidateLeadersCategory3, @"Should be valid category");
    
    [articles.campaignFinance setCandidateLeadersCategory:@"Disbursements Total"];
    NSString *candidateLeadersCategory4 = articles.campaignFinance.candidateLeadersCategory;
    STAssertEqualObjects(@"disbursements_total", candidateLeadersCategory4, @"Should be valid category");
    
    [articles.campaignFinance setCandidateLeadersCategory:@"End Cash"];
    NSString *candidateLeadersCategory5 = articles.campaignFinance.candidateLeadersCategory;
    STAssertEqualObjects(@"end_cash", candidateLeadersCategory5, @"Should be valid category");
    
    [articles.campaignFinance setCandidateLeadersCategory:@"Individual Total"];
    NSString *candidateLeadersCategory6 = articles.campaignFinance.candidateLeadersCategory;
    STAssertEqualObjects(@"individual_total", candidateLeadersCategory6, @"Should be valid category");
    
    [articles.campaignFinance setCandidateLeadersCategory:@"PAC Total"];
    NSString *candidateLeadersCategory7 = articles.campaignFinance.candidateLeadersCategory;
    STAssertEqualObjects(@"pac_total", candidateLeadersCategory7, @"Should be valid category");
    
    [articles.campaignFinance setCandidateLeadersCategory:@"Receipts Total"];
    NSString *candidateLeadersCategory8 = articles.campaignFinance.candidateLeadersCategory;
    STAssertEqualObjects(@"receipts_total", candidateLeadersCategory8, @"Should be valid category");
    
    [articles.campaignFinance setCandidateLeadersFormat:@"JSON"];
    NSString *candidateLeadersFormat = articles.campaignFinance.candidateLeadersFormat;
    STAssertEqualObjects(@"JSON", candidateLeadersFormat, @"Should be valid category");
}

- (void)testCampaignFinanceStateCandidates
{    
    [articles.campaignFinance setStateCandidatesCycle:@"20111223"];
    NSString *stateCandidatesCycle = articles.campaignFinance.stateCandidatesCycle;
    STAssertEqualObjects(@"20111223", stateCandidatesCycle, @"Should be date format");
    
    [articles.campaignFinance setStateCandidatesState:@"AZ"];
    NSString *stateCandidatesState1 = articles.campaignFinance.stateCandidatesState;
    STAssertEqualObjects(@"AZ", stateCandidatesState1, @"Should be two character US State");
    
    [articles.campaignFinance setStateCandidatesState:@"PA"];
    NSString *stateCandidatesState2 = articles.campaignFinance.stateCandidatesState;
    STAssertEqualObjects(@"PA", stateCandidatesState2, @"Should be two character US State");
    
    [articles.campaignFinance setStateCandidatesState:@"WY"];
    NSString *stateCandidatesState3 = articles.campaignFinance.stateCandidatesState;
    STAssertEqualObjects(@"WY", stateCandidatesState3, @"Should be two character US State");
    
    [articles.campaignFinance setStateCandidatesChamber:@"House"];
    NSString *stateCandidatesChamber1 = articles.campaignFinance.stateCandidatesChamber;
    STAssertEqualObjects(@"house", stateCandidatesChamber1, @"Should be either House or Senate");
    
//  [articles.campaignFinance setStateCandidatesChamber:@"Senate"];
//  NSString *stateCandidatesChamber2 = articles.campaignFinance.stateCandidatesChamber;
//  STAssertEqualObjects(@"Senate", stateCandidatesChamber2, @"Should be either House or Senate");
    
    [articles.campaignFinance setStateCandidatesFormat:@"JSON"];
    NSString *stateCandidatesFormat = articles.campaignFinance.stateCandidatesFormat;
    STAssertEqualObjects(@"JSON", stateCandidatesFormat, @"Should be valid format");
}

- (void)testCampaignFinanceNewCandidates
{    
    [articles.campaignFinance setNewCandidatesCycle:@"20111223"];
    NSString *newCandidatesCycle = articles.campaignFinance.newCandidatesCycle;
    STAssertEqualObjects(@"20111223", newCandidatesCycle, @"Should be date format");
    
    [articles.campaignFinance setNewCandidatesFormat:@"JSON"];
    NSString *newCandidatesFormat = articles.campaignFinance.newCandidatesFormat;
    STAssertEqualObjects(@"json", newCandidatesFormat, @"Should be valid format");
}

- (void)testCampaignFinanceCommitteeSearch
{
    [articles.campaignFinance setCommitteeSearchCycle:@"20111223"];
    NSString *committeeSearchCycle = articles.campaignFinance.committeeSearchCycle;
    STAssertEqualObjects(@"20111223", committeeSearchCycle, @"Should be date format");
    
    [articles.campaignFinance setCommitteeSearchName:@"medicare"];
    NSString *committeeSearchName = articles.campaignFinance.committeeSearchName;
    STAssertEqualObjects(@"medicare", committeeSearchName, @"Should be valid string and greater length greater than 0");
    
    [articles.campaignFinance setCommitteeSearchFormat:@"JSON"];
    NSString *committeeSearchFormat = articles.campaignFinance.committeeSearchFormat;
    STAssertEqualObjects(@"json", committeeSearchFormat, @"Should be valid format");
}

- (void)testCampaignFinanceCommitteeDetails
{    
    [articles.campaignFinance setCommitteeDetailsCycle:@"20111223"];
    NSString *committeeDetailsCycle = articles.campaignFinance.committeeDetailsCycle;
    STAssertEqualObjects(@"20111223", committeeDetailsCycle, @"Should be date format");
    
    // TODO: DWE: String must be C + 9 Digits
    [articles.campaignFinance setCommitteeDetailsCommitteeId:@"C100000000"];
    NSString *committeeDetailsCommitteeId = articles.campaignFinance.committeeDetailsCommitteeId;
    STAssertEqualObjects(@"C100000000", committeeDetailsCommitteeId, @"Should be a string containing C + 9 Digits");
    
    [articles.campaignFinance setCommitteeDetailsFormat:@"JSON"];
    NSString *committeeDetailsFormat = articles.campaignFinance.committeeDetailsFormat;
    STAssertEqualObjects(@"json", committeeDetailsFormat, @"Should be valid format");
}

- (void)testCampaignFinanceNewCommittee
{
    [articles.campaignFinance setNewCommitteeCycle:@"20111223"];
    NSString *newCommitteeCycle = articles.campaignFinance.newCommitteeCycle;
    STAssertEqualObjects(@"20111223", newCommitteeCycle, @"Should be valid date format");
    
    [articles.campaignFinance setNewCommitteeFormat:@"JSON"];
    NSString *newCommitteeFormat = articles.campaignFinance.newCommitteeFormat;
    STAssertEqualObjects(@"json", newCommitteeFormat, @"Should be valid format");
}

- (void)testCampaignFinanceCommitteeContributions
{    
    [articles.campaignFinance setCommitteeContributionsCycle:@"20111223"];
    NSString *committeeContributionsCycle = articles.campaignFinance.committeeContributionsCycle;
    STAssertEqualObjects(@"20111223", committeeContributionsCycle, @"Should be valid date format");
    
    // TODO: DWE: String must be C + 9 Digits
    [articles.campaignFinance setCommitteeContributionsCommitteeId:@"C100000000"];
    NSString *committeeContributionsCommitteeId = articles.campaignFinance.committeeContributionsCommitteeId;
    STAssertEqualObjects(@"C100000000", committeeContributionsCommitteeId, @"Should be a string containing C + 9 Digits");
    
    [articles.campaignFinance setCommitteeContributionsOffset:@"20"];
    NSString *committeeContributionsOffset = articles.campaignFinance.committeeContributionsOffset;
    STAssertEqualObjects(@"20", committeeContributionsOffset, @"Should be multiple of 20");

    [articles.campaignFinance setCommitteeContributionsFormat:@"JSON"];
    NSString *committeeContributionsFormat = articles.campaignFinance.committeeContributionsFormat;
    STAssertEqualObjects(@"json", committeeContributionsFormat, @"Should be valid format");
}

- (void)testCampaignFinanceCommitteeContributionsTo
{
    [articles.campaignFinance setCommitteeContributionsToCycle:@"20111223"];
    NSString *committeeContributionsToCycle = articles.campaignFinance.committeeContributionsToCycle;
    STAssertEqualObjects(@"20111223", committeeContributionsToCycle, @"Should be valid date format");
    
    // TODO: DWE: P | H | S + 9 digits
    [articles.campaignFinance setCommitteeContributionsToCandidateId:@"P100000000"];
    NSString *committeeContributionsToCandidateId = articles.campaignFinance.committeeContributionsToCandidateId;
    STAssertEqualObjects(@"P100000000", committeeContributionsToCandidateId, @"Should be a string containing (P|H|S) + 9 Digits");

    // TODO: DWE: String must be C + 9 Digits
    [articles.campaignFinance setCommitteeContributionsToCommitteeId:@"C100000000"];
    NSString *committeeContributionsToCommitteeId = articles.campaignFinance.committeeContributionsToCommitteeId;
    STAssertEqualObjects(@"C100000000", committeeContributionsToCommitteeId, @"Should be a string containing C + 9 Digits");
    
    [articles.campaignFinance setCommitteeContributionsToFormat:@"JSON"];
    NSString *committeeContributionsToFormat = articles.campaignFinance.committeeContributionsToFormat;
    STAssertEqualObjects(@"json", committeeContributionsToFormat, @"Should be valid format");
}

- (void)testCampaignFinanceCommitteeFilings
{
    [articles.campaignFinance setCommitteeFilingsCycle:@"20111223"];
    NSString *committeeFilingsCycle = articles.campaignFinance.committeeFilingsCycle;
    STAssertEqualObjects(@"20111223", committeeFilingsCycle, @"Should be valid date format");

    // TODO: DWE: C + 9 digits
    [articles.campaignFinance setCommitteeFilingsCommitteeId:@"C100000000"];
    NSString *committeeFilingsCommitteeId = articles.campaignFinance.committeeFilingsCommitteeId;
    STAssertEqualObjects(@"C100000000", committeeFilingsCommitteeId, @"Should be a string containing C + 9 Digits");
    
    [articles.campaignFinance setCommitteeFilingsFormat:@"JSON"];
    NSString *committeeFilingsFormat = articles.campaignFinance.committeeFilingsFormat;
    STAssertEqualObjects(@"json", committeeFilingsFormat, @"Should be a valid format");
}

- (void)testCampaignFinanceLeadershipCommittee
{
    [articles.campaignFinance setLeadershipCommitteeCycle:@"20111223"];
    NSString *leadershipCommitteeCycle = articles.campaignFinance.leadershipCommitteeCycle;
    STAssertEqualObjects(@"20111223", leadershipCommitteeCycle, @"Should be valid date format");

    [articles.campaignFinance setLeadershipCommitteeFormat:@"JSON"];
    NSString *leadershipCommitteeFormat = articles.campaignFinance.leadershipCommitteeFormat;
    STAssertEqualObjects(@"json", leadershipCommitteeFormat, @"Should be valid format");
}

- (void)testCampaignFinanceElectronicFilingsByDate
{
    [articles.campaignFinance setElectronicFilingsByDateCycle:@"20111223"];
    NSString *electronicFilingsByDateCycle = articles.campaignFinance.electronicFilingsByDateCycle;
    STAssertEqualObjects(@"20111223", electronicFilingsByDateCycle, @"Should be valid date format");

    [articles.campaignFinance setElectronicFilingsByDateDate:@"20111223"];
    NSString *electronicFilingsByDateDate = articles.campaignFinance.electronicFilingsByDateDate;
    STAssertEqualObjects(@"20111223", electronicFilingsByDateDate, @"Should be valid date format");
    
    [articles.campaignFinance setElectronicFilingsByDateFormat:@"JSON"];
    NSString *electronicFilingsByDateFormat = articles.campaignFinance.electronicFilingsByDateFormat;
    STAssertEqualObjects(@"json", electronicFilingsByDateFormat, @"Should be valid format");
}

- (void)testCampaignFinanceFormTypes
{
    [articles.campaignFinance setFormTypesCycle:@"20111223"];
    NSString *formTypesCycle = articles.campaignFinance.formTypesCycle;
    STAssertEqualObjects(@"20111223", formTypesCycle, @"Should be valid date format");
    
    [articles.campaignFinance setFormTypesFormat:@"JSON"];
    NSString *formTypesFormat = articles.campaignFinance.formTypesFormat;
    STAssertEqualObjects(@"json", formTypesFormat, @"Should be valid format");
}

- (void)testCampaignFinanceFilingsByType
{
    [articles.campaignFinance setFilingsByTypeCycle:@"20111223"];
    NSString *filingsByTypeCycle = articles.campaignFinance.filingsByTypeCycle;
    STAssertEqualObjects(@"20111223", filingsByTypeCycle, @"Should be valid date format");

    // TODO: DWE: F + integer
    [articles.campaignFinance setFilingsByTypeFilingType:@"F6"];
    NSString *filingsByTypeFilingType = articles.campaignFinance.filingsByTypeFilingType;
    STAssertEqualObjects(@"F6", filingsByTypeFilingType, @"Should be valid Character Integer format");

    [articles.campaignFinance setFilingsByTypeFormat:@"JSON"];
    NSString *filingsByTypeFormat = articles.campaignFinance.filingsByTypeFormat;
    STAssertEqualObjects(@"json", filingsByTypeFormat, @"Should be valid format");
}

- (void)testCampaignFinancePresCandidateTotals
{
    [articles.campaignFinance setPresCandidateTotalsCycle:@"20111223"];
    NSString *presCandidateTotalsCycle = articles.campaignFinance.presCandidateTotalsCycle;
    STAssertEqualObjects(@"20111223", presCandidateTotalsCycle, @"Should be valid date format");

    [articles.campaignFinance setPresCandidateTotalsFormat:@"JSON"];
    NSString *presCandidateTotalsFormat = articles.campaignFinance.presCandidateTotalsFormat;
    STAssertEqualObjects(@"json", presCandidateTotalsFormat, @"Should be valid format");
}

- (void)testCampaignFinancePresCandidateDetails
{
    [articles.campaignFinance setPresCandidateDetailsCycle:@"20111223"];
    NSString *presCandidateDetailsCycle = articles.campaignFinance.presCandidateDetailsCycle;
    STAssertEqualObjects(@"20111223", presCandidateDetailsCycle, @"Should be valid date format");
    
    // TODO: DWE: C + 9 digits OR {last-name}[,first-name]
    [articles.campaignFinance setPresCandidateDetailsCandidateNameOrCommitteeId:@""];
    NSString *presCAndidateDetailsCandidateNameOrCommitteeId = articles.campaignFinance.presCandidateDetailsCandidateNameOrCommitteeId;
    STAssertEqualObjects(@"", presCAndidateDetailsCandidateNameOrCommitteeId, @"Should be valid CandidateName or CommitteeId");
    
    [articles.campaignFinance setPresCandidateDetailsFormat:@"JSON"];
    NSString *presCandidateDetailsFormat = articles.campaignFinance.presCandidateDetailsFormat;
    STAssertEqualObjects(@"json", presCandidateDetailsFormat, @"Should be valid format");
}

- (void)testCampaignFinancePresStateAndZipTotals
{
    [articles.campaignFinance setPresStateAndZipTotalsCycle:@"20111223"];
    NSString *presStateAndZipTotalsCycle = articles.campaignFinance.presStateAndZipTotalsCycle;
    STAssertEqualObjects(@"20111223", presStateAndZipTotalsCycle, @"Should be valid date format");

    [articles.campaignFinance setPresStateAndZipTotalsResourceType:@"State"];
    NSString *presStateAndZipTotalsResourceType = articles.campaignFinance.presStateAndZipTotalsResourceType;
    STAssertEqualObjects(@"states", presStateAndZipTotalsResourceType, @"Should be either States or Zips");
 
    // TODO: DWE: State Abbr or ZIP
    [articles.campaignFinance setPresStateAndZipTotalsStateAbbr:@"AL"];
    NSString *presStateAndZipTotalsStateAbbr = articles.campaignFinance.presStateAndZipTotalsStateAbbr;
    STAssertEqualObjects(@"AL", presStateAndZipTotalsStateAbbr, @"Should be either States or Zips");
    
    [articles.campaignFinance setPresStateAndZipTotalsFormat:@"JSON"];
    NSString *presStateAndZipTotalsFormat = articles.campaignFinance.presStateAndZipTotalsFormat;
    STAssertEqualObjects(@"json", presStateAndZipTotalsFormat, @"Should be valid format");
}

- (void)testCampaignFinancePresDonorInformation
{
    [articles.campaignFinance setPresDonorInformationCycle:@"20111223"];
    NSString *presDonorInformationCycle = articles.campaignFinance.presDonorInformationCycle;
    STAssertEqualObjects(@"20111223", presDonorInformationCycle, @"Should be valid date format");

    [articles.campaignFinance setPresDonorInformationSearchParameter:@"LNAME"];
    NSString *presDonorInformationSearchParameter = articles.campaignFinance.presDonorInformationSearchParameter;
    STAssertEqualObjects(@"lname", presDonorInformationSearchParameter, @"Should be either LNAME or ZIP");

    [articles.campaignFinance setPresDonorInformationLastName:@"AnyLastName"];
    NSString *presDonorInformationLastName = articles.campaignFinance.presDonorInformationLastName;
    STAssertEqualObjects(@"AnyLastName", presDonorInformationLastName, @"Should be valid string and > 0");

    [articles.campaignFinance setPresDonorInformationZipCode:@"99999"];
    NSString *presDonorInformationZipCode = articles.campaignFinance.presDonorInformationZipCode;
    STAssertEqualObjects(@"99999", presDonorInformationZipCode, @"Should be 5 digit zipcode (string)");

    [articles.campaignFinance setPresDonorInformationOffSet:@"20"];
    NSString *presDonorInformationOffSet = articles.campaignFinance.presDonorInformationOffSet;
    STAssertEqualObjects(@"20", presDonorInformationOffSet, @"Should be true and a positive multiple of 20");

    [articles.campaignFinance setPresDonorInformationFormat:@"JSON"];
    NSString *presDonorInformationFormat = articles.campaignFinance.presDonorInformationFormat;
    STAssertEqualObjects(@"json", presDonorInformationFormat, @"Should be valid format");
}

- (void)testCommunityRecentComments
{
    [articles.community setCommunityRecentCommentsApiKey:@"API-KEY"];
    NSString *communityRecentCommentsApiKey = articles.community.communityRecentCommentsApiKey;
    STAssertEqualObjects(@"API-KEY", communityRecentCommentsApiKey, @"Should be valid string");
    
    [articles.community setCommunityRecentCommentsOffSet:@"25"];
    NSString *communityRecentCommentsOffSet = articles.community.communityRecentCommentsOffSet;
    STAssertEqualObjects(@"25", communityRecentCommentsOffSet, @"Should be a multiple of 25");
    
    [articles.community setCommunityRecentCommentsForceReplies:@"YES"];
    NSString *communityRecentCommentsForceReplies = articles.community.communityRecentCommentsForceReplies;
    STAssertEqualObjects(@"1", communityRecentCommentsForceReplies, @"Should be a 1 (YES) or 0 (NO)");
    
    [articles.community setCommunityRecentCommentsSort:@"NEWEST"];
    NSString *communityRecentCommentsSort = articles.community.communityRecentCommentsSort;
    STAssertEqualObjects(@"newest", communityRecentCommentsSort, @"Should be (newest|oldest|recommended|replied|editors-selection");
    
    [articles.community setCommunityRecentCommentsFormat:@"JSON"];
    NSString *communityRecentCommentsFormat = articles.community.communityRecentCommentsFormat;
    STAssertEqualObjects(@"json", communityRecentCommentsFormat, @"Should be valid format");
}

- (void)testCommunityRandomComments
{
    [articles.community setCommunityRandomCommentsApiKey:@"API-KEY"];
    NSString *communityRandomCommentsApiKey = articles.community.communityRandomCommentsApiKey;
    STAssertEqualObjects(@"API-KEY", communityRandomCommentsApiKey, @"Should be valid string");
    
    [articles.community setCommunityRandomCommentsFormat:@"JSON"];
    NSString *communityRandomCommentsFormat = articles.community.communityRandomCommentsFormat;
    STAssertEqualObjects(@"json", communityRandomCommentsFormat, @"Should be valid format");
}

- (void)testCommunityCommentsByDate
{
    [articles.community setCommunityCommentsByDateApiKey:@"API-KEY"];
    NSString *communityCommentsByDateApiKey = articles.community.communityCommentsByDateApiKey;
    STAssertEqualObjects(@"API-KEY", communityCommentsByDateApiKey, @"Should be valid string");
    
    [articles.community setCommunityCommentsByDateFormat:@"JSON"];
    NSString *communityCommentsByDateFormat = articles.community.communityCommentsByDateFormat;
    STAssertEqualObjects(@"json", communityCommentsByDateFormat, @"Should be valid format");

    [articles.community setCommunityCommentsByDateDate:@"20101130"];
    NSString *communityCommentsByDateDate = articles.community.communityCommentsByDateDate;
    STAssertEqualObjects(@"20101130", communityCommentsByDateDate, @"Should be valid date");
    
    [articles.community setCommunityCommentsByDateSort:@"REPLIED"];
    NSString *communityCommentsByDateSort = articles.community.communityCommentsByDateSort;
    STAssertEqualObjects(@"replied", communityCommentsByDateSort, @"Should be (newest|oldest|recommended|replied|editors-selection)");
}

- (void)testCommunityCommentsByUserID
{
    [articles.community setCommunityCommentsByUserIdApiKey:@"API-KEY"];
    NSString *communityCommentsByUserIdApiKey = articles.community.communityCommentsByUserIdApiKey;
    STAssertEqualObjects(@"API-KEY", communityCommentsByUserIdApiKey, @"Should be valid string");
  
    [articles.community setCommunityCommentsByUserIdUserId:@"56135867"];
    NSString *communityCommentsByUserIdUserId = articles.community.communityCommentsByUserIdUserId;
    STAssertEqualObjects(@"56135867", communityCommentsByUserIdUserId, @"Should be valid number e.g. 56135867");

    [articles.community setCommunityCommentsByUserIdOffSet:@"25"];
    NSString *communityCommentsByUserIdOffSet = articles.community.communityCommentsByUserIdOffSet;
    STAssertEqualObjects(@"25", communityCommentsByUserIdOffSet, @"Should be multiple of 25");

    [articles.community setCommunityCommentsByUserIdSort:@"REPLIED"];
    NSString *communityCommentsByUserIdSort = articles.community.communityCommentsByUserIdSort;
    STAssertEqualObjects(@"replied", communityCommentsByUserIdSort, @"Should be either (newest|oldest|recommended|replied|editors-selection)");

    [articles.community setCommunityCommentsByUserIdFormat:@"JSON"];
    NSString *communityCommentsByUserIdFormat = articles.community.communityCommentsByUserIdFormat;
    STAssertEqualObjects(@"json", communityCommentsByUserIdFormat, @"Should be valid format");
}

- (void)testCommunityCommentsByURL
{
    [articles.community setCommunityCommentsByURLMatchType:@"EXACT MATCH"];
    NSString *communityCommentsByURLMatchType = articles.community.communityCommentsByURLMatchType;
    STAssertEqualObjects(@"exact-match", communityCommentsByURLMatchType, @"Should be either (exact-match|closest-stem-match)");
    
    [articles.community setCommunityCommentsByURLUrlToMatch:@"http://www.google.com"];
    NSString *communityCommentsByURLUrlToMatch = articles.community.communityCommentsByURLUrlToMatch;
    STAssertEqualObjects(@"http%3A%2F%2Fwww.google.com", communityCommentsByURLUrlToMatch, @"Should be encoded url");

    [articles.community setCommunityCommentsByURLApiKey:@"API-KEY"];
    NSString *communityCommentsByURLApiKey = articles.community.communityCommentsByURLApiKey;
    STAssertEqualObjects(@"API-KEY", communityCommentsByURLApiKey, @"Should be valid API-KEY");

    [articles.community setCommunityCommentsByURLOffSet:@"25"];
    NSString *communityCommentsByURLOffSet = articles.community.communityCommentsByURLOffSet;
    STAssertEqualObjects(@"25", communityCommentsByURLOffSet, @"Should be multiple of 25");

    [articles.community setCommunityCommentsByURLSort:@"EDITORS SELECTION"];
    NSString *communityCommentsByURLSort = articles.community.communityCommentsByURLSort;
    STAssertEqualObjects(@"editors-selection", communityCommentsByURLSort, @"Should be either (newest|oldest|recommended|replied|editors-selection)");

    [articles.community setCommunityCommentsByURLFormat:@"JSON"];
    NSString *communityCommentsByURLFormat = articles.community.communityCommentsByURLFormat;
    STAssertEqualObjects(@"json", communityCommentsByURLFormat, @"Should be valid format");
}

- (void)testNYTimesArticlesConnection
{    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:ARTICLE_API_KEY];
    /**
        Required
     */
    [nytimes setQuery:@"Hackday"];
    [nytimes setApiKey:ARTICLE_API_KEY];
    /**
        Optional
     */
    [nytimes setStartDate:@"20110102"];
    [nytimes setEndDate:@"20110202"];
    [nytimes setFacets:@"Facet1, Facet2, Facet3"];
    [nytimes setFields:@"Fields1, Fields2, Fields3"];
    [nytimes setOffset:@"1"];
    [nytimes setRank:@"OLDEST"];
    [nytimes setFormat:@"JSON"];
    
    [NYTimesArticle asyncRequest:nytimes 
                         success:^(NSData *data, NSURLResponse *response){
                             NSLog(@"Results %@", data);
                         }failure:^(NSData *data, NSError *error){
                             NSLog(@"Errors %@", error);
                         } tag:@"articles"];
}

- (void)testNYTimesBestSellerConnection
{
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:ARTICLE_API_KEY];
    /**
     Required
     */
    [nytimes setListName:@"List Name"];
    /**
     Optional
     */
    [articles setDate:@"20110102"];
    [articles setBestSellerOffset:@"20"];
    [articles setSortBy:@"BestSellers-Date"];    
    [articles setBestSellerFormat:@"JSON"];
    
    [NYTimesBestSeller asyncRequest:nytimes
                            success:^(NSData *data, NSURLResponse *response){
                                NSLog(@"Results %@", data);
                            }failure:^(NSData *data, NSError *error){
                                NSLog(@"Errors %@", error);
                            }tag:@"bestsellers"];
}

- (void)testNYTimesCampaignFinanceConnection
{
    /**
        Candidate Search
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setCandidateSearchCycle:@"20111223"];
    [nytimes.campaignFinance setCandidateSearchLastName:@"Greene"];
    /**
     Optional
     */
    [nytimes.campaignFinance setCandidateSearchFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance candidate search"];
    
    /** 
        Candidate Details
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setCandidateDetailsCycle:@"20111223"];
    [nytimes.campaignFinance setCandidateDetailCandidateId:@"P100000000"];
    /**
     Optional
     */
    [nytimes.campaignFinance setCandidateDetailsFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance candidate details"];
    
    /** 
        Candidate Leaders
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setCandidateLeadersCycle:@"20111223"];
    [nytimes.campaignFinance setCandidateLeadersCategory:@"Candidate Loan"];
    /**
     Optional
     */
    [nytimes.campaignFinance setCandidateLeadersFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance candidate details"];
    
    /**
        State Candidates
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setStateCandidatesCycle:@"20111223"];
    [nytimes.campaignFinance setStateCandidatesState:@"AZ"];
    /**
     Optional
     */
    [nytimes.campaignFinance setStateCandidatesChamber:@"House"];
    [nytimes.campaignFinance setStateCandidatesFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance state candidates"];
    
    /** 
        New Candidates
     */

    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setNewCandidatesCycle:@"20111223"];
    /**
     Optional
     */
    [nytimes.campaignFinance setNewCandidatesFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance new candidates"];
    
    /** 
        Committee Search
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setCommitteeSearchCycle:@"20111223"];    
    [nytimes.campaignFinance setCommitteeSearchName:@"medicare"];
    /**
     Optional
     */
    [nytimes.campaignFinance setCommitteeSearchFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance committee search"];

    /** 
     Committee Details
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setCommitteeDetailsCycle:@"20111223"];
    [nytimes.campaignFinance setCommitteeDetailsCommitteeId:@"C100000000"];
    /**
     Optional
     */
    [nytimes.campaignFinance setCommitteeDetailsFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance committee details"];
    
    /** 
        New Committees
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setNewCommitteeCycle:@"20111223"];
    /**
     Optional
     */
    [nytimes.campaignFinance setNewCommitteeFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance new committees"];
    
    /** 
        Committee Contributions
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setCommitteeContributionsCycle:@"20111223"];
    [nytimes.campaignFinance setCommitteeContributionsCommitteeId:@"C100000000"];
    /**
     Optional
     */
    [nytimes.campaignFinance setCommitteeContributionsOffset:@"20"];
    [nytimes.campaignFinance setCommitteeContributionsFormat:@"JSON"];

    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance committee contributions"];
    
    /** 
        Committee Contributions
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setCommitteeContributionsCycle:@"20111223"];
    [nytimes.campaignFinance setCommitteeContributionsCommitteeId:@"C100000000"];
    /**
     Optional
     */
    [nytimes.campaignFinance setCommitteeContributionsOffset:@"20"];
    [nytimes.campaignFinance setCommitteeContributionsFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance committee contributions"];
    
    /** 
        Committee Contributions To
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setCommitteeContributionsToCycle:@"20111223"];
    [nytimes.campaignFinance setCommitteeContributionsToCandidateId:@"P100000000"];
    [nytimes.campaignFinance setCommitteeContributionsToCommitteeId:@"C100000000"];
    /**
     Optional
     */
    [nytimes.campaignFinance setCommitteeContributionsToFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance committee contributions to"];
    
    /** 
        Committee Filings
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setCommitteeFilingsCycle:@"20111223"];
    [nytimes.campaignFinance setCommitteeFilingsCommitteeId:@"C100000000"];
    /**
     Optional
     */
    
    [nytimes.campaignFinance setCommitteeFilingsFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance committee filings"];
    
    /** 
        Leadership Committees
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setLeadershipCommitteeCycle:@"20111223"];
    /**
     Optional
     */
    [nytimes.campaignFinance setLeadershipCommitteeFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance leadership committees"];
    
    /** 
        Electronic Filings by Date
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setElectronicFilingsByDateCycle:@"20111223"];
    [nytimes.campaignFinance setElectronicFilingsByDateDate:@"20111223"];
    /**
     Optional
     */
    [nytimes.campaignFinance setElectronicFilingsByDateFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance electronic filings by date"];
    
    /** 
        Form Types
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setFormTypesCycle:@"20111223"];
    /**
     Optional
     */
    [nytimes.campaignFinance setFormTypesFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance form types"];
    
    /** 
        Filings by Type
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setFilingsByTypeCycle:@"20111223"];
    /**
     Optional
     */
    [nytimes.campaignFinance setFilingsByTypeFilingType:@"F6"];
    [nytimes.campaignFinance setFilingsByTypeFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance filings by type"];
    
    /** 
        Pres. Candidate Totals
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setPresCandidateTotalsCycle:@"20111223"];
    /**
     Optional
     */
    [nytimes.campaignFinance setPresCandidateTotalsFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance pres. candidate totals"];
    
    /** 
        Pres. Candidate Details
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setPresCandidateDetailsCycle:@"20111223"];
    [nytimes.campaignFinance setPresCandidateDetailsCandidateNameOrCommitteeId:@"Foobar"];
    /**
     Optional
     */
    [nytimes.campaignFinance setPresCandidateDetailsFormat:@"JSON"];

    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance pres. candidate details"];
    
    /** 
        Pres. State/Zip Totals
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setPresStateAndZipTotalsCycle:@"20111223"];
    [nytimes.campaignFinance setPresStateAndZipTotalsResourceType:@"State"];
    [nytimes.campaignFinance setPresStateAndZipTotalsStateAbbr:@"AL"];
    /**
     Optional
     */
    [nytimes.campaignFinance setPresStateAndZipTotalsFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance pres. state/zip totals"];
    
    
    /** 
        Pres. Donor Information
     */
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
    /**
     Required
     */
    [nytimes.campaignFinance setPresDonorInformationCycle:@"20111223"];
    [nytimes.campaignFinance setPresDonorInformationSearchParameter:@"LNAME"];
    [nytimes.campaignFinance setPresDonorInformationLastName:@"AnyLastName"];
    [nytimes.campaignFinance setPresDonorInformationZipCode:@"99999"];
    /**
     Optional
     */
    [nytimes.campaignFinance setPresDonorInformationOffSet:@"20"];
    [nytimes.campaignFinance setPresDonorInformationFormat:@"JSON"];
    
    [NYTimesCampaignFinance asyncRequest:nytimes
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSLog(@"Results %@", data);
                                 }failure:^(NSData *data, NSError *error){
                                     NSLog(@"Errors %@", error);
                                 }tag:@"campaignfinance pres. donor information"];
    
}

- (void)tearDown
{
    [super tearDown];
    [articles release];
}

@end

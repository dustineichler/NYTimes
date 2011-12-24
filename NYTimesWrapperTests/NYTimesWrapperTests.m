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
    
    [articles setFormat:@"xml"];
    STAssertEqualObjects(@"xml", articles.format, @"Should Equal XML");
    
    [articles setFormat:@"json"];
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
    
    [articles setBestSellerFormat:@"xml"];
    STAssertEqualObjects(@"xml", articles.bestSellerFormat, @"Should be equal");
    
    [articles setBestSellerFormat:@"json"];
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
    
    [articles.campaignFinance setCandidateSearchFormat:@"json"];
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
    
//    [articles.campaignFinance setStateCandidatesChamber:@"Senate"];
//    NSString *stateCandidatesChamber2 = articles.campaignFinance.stateCandidatesChamber;
//    STAssertEqualObjects(@"Senate", stateCandidatesChamber2, @"Should be either House or Senate");
    
    [articles.campaignFinance setStateCandidatesFormat:@"JSON"];
    NSString *stateCandidatesFormat = articles.campaignFinance.stateCandidatesFormat;
    STAssertEqualObjects(@"JSON", stateCandidatesFormat, @"Should be valid format");
}

- (void)tearDown
{
    [super tearDown];
    [articles release];
}

@end

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

- (void)tearDown
{
    [super tearDown];
    [articles release];
}

@end

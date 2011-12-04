//
//  NYTimesWrapperTests.m
//  NYTimesWrapperTests
//
//  Created by Dustin Eichler on 12/2/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesWrapperTests.h"

@implementation NYTimesWrapperTests
@synthesize nytimes, globalURL, receivedData;

- (void)setUp
{
    [super setUp];
    // Set-up code here.
    
    nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"e54e6d296ec5da4fc406da071676d50b:10:60749136"];
}

//- (void)testFormat;
//{
//    STAssertNil([nytimes format], @"Should be nil");
//    [nytimes setFormat:@"JSON"];
//    STAssertNotNil([nytimes format], @"Should NOT be nil");
//}

- (void)testQuery
{
    STAssertNil([nytimes query], @"Should be nil");
    [nytimes setQuery:@"HackDay"];
    STAssertNotNil([nytimes query], @"Should NOT be nil");
}

- (void)testFacets
{
    STAssertNil([nytimes facets], @"Should be nil");
    [nytimes setFacets:@"Not Clue What this is."];
    STAssertNotNil([nytimes facets], @"Should NOT be nil");
}

- (void)testBeginDate
{
    STAssertNil([nytimes beginDate], @"Should be nil");
    [nytimes setBeginDate:@"20110130"];
    STAssertNotNil([nytimes beginDate], @"Should NOT be nil");
}

- (void)testEndDate
{
    STAssertNil([nytimes endDate], @"Should be nil");
    [nytimes setEndDate:@"20110230"];
    STAssertNotNil([nytimes endDate], @"Should NOT be nil");
}

- (void)testFields
{
    STAssertNil([nytimes fields], @"Should be nil");
    [nytimes setFields:@"No Sure what this means"];
    STAssertNotNil([nytimes fields], @"Should NOT be nil");
}

- (void)testOffset
{
    STAssertNil([nytimes offset], @"Should be nil");
    [nytimes setOffset:@"3"];
    STAssertNotNil([nytimes offset], @"Should NOT be nil");
}

- (void)testRank
{
    STAssertNil([nytimes rank], @"Should be nil");
    [nytimes setRank:@"Newest"];
    STAssertNotNil([nytimes rank], @"Should NOT be nil");
}

//- (void)testExceptions
//{
//    [nytimes setApiKey:nil];
////   STAssertThrows(nytimes.apiKey = nil, @"Should Throw Exception", @"foobar");
////   STAssertEquals(nytimes.apiKey, @"e54e6d296ec5da4fc406da071676d50b:10:60749136", @"Should match.");
//}
//
//- (void)testBuildURL
//{
//    NSString *url = [nytimes buildURL];
//    STAssertEqualObjects(url, @"http://api.nytimes.com/svc/search/v1/article?format=json&", @"Should be equal");
//}
//
//- (void)testBuildWithParams
//{
//    nytimes.query = @"HackDay";
//    NSString *url = [nytimes buildURL];
//    STAssertEqualObjects(url, @"http://api.nytimes.com/svc/search/v1/article?format=json&query=HackDay&", @"Should be equal");
//    
//    nytimes.facets = @"FacetsParam";
//    NSString *url2 = [nytimes buildURL];
//    STAssertEqualObjects(url2, @"http://api.nytimes.com/svc/search/v1/article?format=json&query=HackDay&facets=FacetsParam&", @"Should be equal");
//
//    nytimes.beginDate = @"11112233";
//    NSString *url3 = [nytimes buildURL];
//    STAssertEqualObjects(url3, @"http://api.nytimes.com/svc/search/v1/article?format=json&query=HackDay&facets=FacetsParam&begin_date=11112233&", @"Should be equal");
//    
//    nytimes.endDate = @"33332211";
//    NSString *url4 = [nytimes buildURL];
//    STAssertEqualObjects(url4, @"http://api.nytimes.com/svc/search/v1/article?format=json&query=HackDay&facets=FacetsParam&begin_date=11112233&end_date=33332211&", @"Should be equal");
//    
//    nytimes.fields = @"FieldsParam";
//    NSString *url5 = [nytimes buildURL];
//    STAssertEqualObjects(url5, @"http://api.nytimes.com/svc/search/v1/article?format=json&query=HackDay&facets=FacetsParam&begin_date=11112233&end_date=33332211&fields=FieldsParam&", @"Should be equal");
//    
//    nytimes.offset = @"3";
//    NSString *url6 = [nytimes buildURL];
//    STAssertEqualObjects(url6, @"http://api.nytimes.com/svc/search/v1/article?format=json&query=HackDay&facets=FacetsParam&begin_date=11112233&end_date=33332211&fields=FieldsParam&offset=3&", @"Should be equal");
//
////    nytimes.rank = @"Newest";
////    globalURL = [nytimes buildURL];
////    STAssertEqualObjects(globalURL, @"http://api.nytimes.com/svc/search/v1/article?format=json&query=HackDay&facets=FacetsParam&begin_date=11112233&end_date=33332211&fields=FieldsParam&offset=3&rank=Newest&", @"Should be equal");
//}

- (void)testAsyncResponse
{    
    NYTimesWrapper *ny = [[NYTimesWrapper alloc] initWithAPIKey:@"API_KEY"];
    
    [NYTimesArticle asyncRequest:ny 
                          success:^(NSData *data, NSURLResponse *resposne){
                              NSLog(@"-----------------success callback %@", data);
                          } failure:^(NSData *data, NSError *error){
                              NSLog(@"-----------------failure callback");
                          } tag:@"tag"];
}

- (void)tearDown
{
    [super tearDown];
    // Tear-down code here.

    [nytimes release];
}

@end

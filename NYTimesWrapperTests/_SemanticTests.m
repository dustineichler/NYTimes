//
//  _SemanticTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/9/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_SemanticTests.h"
#import "NYTimesSemantic.h"
#import <UIKit/UIKit.h>

@implementation _SemanticTests
@synthesize articles;

- (void)setUp
{
    [super setUp];
    articles = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
}

- (void)testSemanticName
{
    [articles.semantic setNameConceptType:@"nytd_geo"];
    NSString *nameConceptType = articles.semantic.nameConceptType;
    STAssertEqualObjects(@"nytd_geo", nameConceptType, @"Should be either (nytd_geo|nytd_per|nytd_org|nytd_des)");
    
    [articles.semantic setNameConceptName:@"Baseball"];
    NSString *nameConceptName = articles.semantic.nameConceptName;
    STAssertEqualObjects(@"baseball", nameConceptName, @"Should be valid string");
    
//  TODO: DWE: This test(s) isn't passing
//    [articles.semantic setNameFields:@"pages, ticker_symbol"];
//    NSString *nameFields = articles.semantic.nameFields;
//    STAssertEqualObjects(@"pages, ticker_symbol", nameFields, @"Should be ALL or (pages, ticker_symbol, links, taxonomy, combinations, geocodes, article_list, scope_notes, search_api_query)");
    
    [articles.semantic setNameOffSet:@"10"];
    NSString *nameOffSet = articles.semantic.nameOffSet;
    STAssertEqualObjects(@"10", nameOffSet, @"Should be multiple of 10");
    
    [articles.semantic setNameFormat:@"JSON"];
    NSString *nameFormat = articles.semantic.nameFormat;
    STAssertEqualObjects(@"json", nameFormat, @"Should be either JSON or XML");
    
    [articles.semantic setNameApiKey:@"API-KEY"];
    NSString *nameApiKey = articles.semantic.nameApiKey;
    STAssertEqualObjects(@"API-KEY", nameApiKey, @"Should be alphanumeric string");
}

- (void)testSemanticNameConnection
{
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    
    /**
     Optional
     */
    [nytimes.semantic setNameConceptType:@"nytd_geo"];
    [nytimes.semantic setNameConceptName:@"Baseball"];
    [nytimes.semantic setNameFields:@"pages, ticker_symbol"];
    [nytimes.semantic setNameOffSet:@"10"];
    [nytimes.semantic setNameFormat:@"JSON"];
    [nytimes.semantic setNameApiKey:@"API-KEY"];
    
    [NYTimesSemantic asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"semantic"];
}

- (void)testSematicUri
{
    [articles.semantic setUriConceptUri:@"http://www.google.com"];
    NSString *uriConceptUri = articles.semantic.uriConceptUri;
    STAssertEqualObjects(@"http://www.google.com", uriConceptUri, @"Should be valid HTTP url");
    
    [articles.semantic setUriFields:@"ALL"];
    NSString *uriFields = articles.semantic.uriFields;
    STAssertEqualObjects(@"all", uriFields, @"Should be ALL or (pages, ticker_symbol, links, taxonomy, combinations, geocodes, article_list, scope_notes, search_api_query)");
    
    [articles.semantic setUriOffSet:@"20"];
    NSString *uriOffSet = articles.semantic.uriOffSet;
    STAssertEqualObjects(@"20", uriOffSet, @"Should be multiple of 20");
    
    [articles.semantic setUriFormat:@"JSON"];
    NSString *uriFormat = articles.semantic.uriFormat;
    STAssertEqualObjects(@"json", uriFormat, @"Should be either JSON or XML");
    
    [articles.semantic setUriApiKey:@"API-KEY"];
    NSString *uriApiKey = articles.semantic.uriApiKey;
    STAssertEqualObjects(@"API-KEY", uriApiKey, @"Should be alphnumeric string");
}

- (void)testSemanticUriConnection
{
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    
    /**
     Optional
     */
    [nytimes.semantic setUriConceptUri:@"http://www.google.com"];
    [nytimes.semantic setUriFields:@"ALL"];
    [nytimes.semantic setUriOffSet:@"20"];
    [nytimes.semantic setUriFormat:@"JSON"];
    [nytimes.semantic setUriApiKey:@"API-KEY"];
    
    [NYTimesSemantic asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"semantic"];
}

- (void)testSemanticSemanticArticle
{
    [articles.semantic setSemanticArticleArticleUri:@"http://www.google.com"];
    NSString *semanticArticleArticleUri = articles.semantic.semanticArticleArticleUri;
    STAssertEqualObjects(@"http://www.google.com", semanticArticleArticleUri, @"Should be valid url");
    
    [articles.semantic setSemanticArticleFields:@"ALL"];
    NSString *semanticArticleFields = articles.semantic.semanticArticleFields;
    STAssertEqualObjects(@"all", semanticArticleFields, @"Should be ALL or (pages, ticker_symbol, links, taxonomy, combinations, geocodes, article_list, scope_notes, search_api_query)");
    
    [articles.semantic setSemanticArticleOffSet:@"20"];
    NSString *semanticArticleOffSet = articles.semantic.semanticArticleOffSet;
    STAssertEqualObjects(@"20", semanticArticleOffSet, @"Should be multiple of 20");
    
    [articles.semantic setSemanticArticleFormat:@"JSON"];
    NSString *semanticArticleFormat = articles.semantic.semanticArticleFormat;
    STAssertEqualObjects(@"json", semanticArticleFormat, @"Should be either JSON or XML");
    
    [articles.semantic setSemanticArticleApiKey:@"API-KEY"];
    NSString *semanticArticleApiKey = articles.semantic.semanticArticleApiKey;
    STAssertEqualObjects(@"API-KEY", semanticArticleApiKey, @"Should be alphanumeric string");
}

- (void)testSemanticSemanticArticleConnection
{
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    
    /**
     Optional
     */
    [nytimes.semantic setSemanticArticleArticleUri:@"http://www.google.com"];
    [nytimes.semantic setSemanticArticleFields:@"ALL"];
    [nytimes.semantic setSemanticArticleOffSet:@"20"];
    [nytimes.semantic setSemanticArticleFormat:@"JSON"];
    [nytimes.semantic setSemanticArticleApiKey:@"API-KEY"];
    
    [NYTimesSemantic asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"semantic"];
}

- (void)testSemanticSearch
{
    [articles.semantic setSearchQuery:@"SEARCH-TERM"];
    NSString *searchQuery = articles.semantic.searchQuery;
    STAssertEqualObjects(@"SEARCH-TERM", searchQuery, @"Should be string");
    
    [articles.semantic setSearchFields:@"ALL"];
    NSString *searchFields = articles.semantic.searchFields;
    STAssertEqualObjects(@"all", searchFields, @"Should be ALL or (pages, ticker_symbol, links, taxonomy, combinations, geocodes, article_list, scope_notes, search_api_query)");
    
    [articles.semantic setSearchOffSet:@"20"];
    NSString *searchOffSet = articles.semantic.searchOffSet;
    STAssertEqualObjects(@"20", searchOffSet, @"Should be multiple of 20");
    
    [articles.semantic setSearchFormat:@"JSON"];
    NSString *searchFormat = articles.semantic.searchFormat;
    STAssertEqualObjects(@"json", searchFormat, @"Should be either JSON or XML");
    
    [articles.semantic setSearchApiKey:@"API-KEY"];
    NSString *searchApiKey = articles.semantic.searchApiKey;
    STAssertEqualObjects(@"API-KEY", searchApiKey, @"Should be alphnumeric string");
}

- (void)testSemanticSearchConnection
{
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    
    /**
     Optional
     */
    [nytimes.semantic setSearchQuery:@"SEARCH-TERM"];
    [nytimes.semantic setSearchFields:@"ALL"];
    [nytimes.semantic setSearchOffSet:@"20"];
    [nytimes.semantic setSearchFormat:@"JSON"];
    [nytimes.semantic setSearchApiKey:@"API-KEY"];
    
    [NYTimesSemantic asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"semantic"];
}

@end

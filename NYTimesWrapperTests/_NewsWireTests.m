//
//  _NewsWireTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/9/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_NewsWireTests.h"
#import "NYTimesNewsWire.h"
#import <UIKit/UIKit.h>

@implementation _NewsWireTests
@synthesize articles;

- (void)setUp
{
    [super setUp];
    articles = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
}

- (void)testNewsWireRecentNews
{
    [articles.newsWire setRecentNewsSource:@"NYT"];
    NSString *recentNewsSource = articles.newsWire.recentNewsSource;
    STAssertEqualObjects(@"nyt", recentNewsSource, @"Should be either (all|nyt|iht)");
    
    // TODO: DWE: Get Sections List
    [articles.newsWire setRecentNewsSection:@"ALL"];
    NSString *recentNewsSection = articles.newsWire.recentNewsSection;
    STAssertEqualObjects(@"all", recentNewsSection, @"Should ALL by default");
    
    [articles.newsWire setRecentNewsTimePeriod:@"55"];
    NSString *recentNewsTimePeriod = articles.newsWire.recentNewsTimePeriod;
    STAssertEqualObjects(@"55", recentNewsTimePeriod, @"Should be integer, number of hours, 1-720");

    [articles.newsWire setRecentNewsLimit:@"15"];
    NSString *recentNewsLimit = articles.newsWire.recentNewsLimit;
    STAssertEqualObjects(@"15", recentNewsLimit, @"Should be integer, between 1-20");

    [articles.newsWire setRecentNewsOffSet:@"20"];
    NSString *recentNewsOffSet = articles.newsWire.recentNewsOffSet;
    STAssertEqualObjects(@"20", recentNewsOffSet, @"Should be integer, greater than 0");
    
    [articles.newsWire setRecentNewsFormat:@"JSON"];
    NSString *recentNewsFormat = articles.newsWire.recentNewsFormat;
    STAssertEqualObjects(@"json", recentNewsFormat, @"Should be either JSON or XML");
    
    [articles.newsWire setRecentNewsApiKey:@"API-KEY"];
    NSString *recentNewsApiKey = articles.newsWire.recentNewsApiKey;
    STAssertEqualObjects(@"API-KEY", recentNewsApiKey, @"Should be alphanumeric string");
}

- (void)testNewsWireRecentNewsConnection
{
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    
    /**
     Optional
     */
    [nytimes.newsWire setRecentNewsSource:@"NYT"];
    [nytimes.newsWire setRecentNewsSection:@"ALL"];
    [nytimes.newsWire setRecentNewsTimePeriod:@"55"];
    [nytimes.newsWire setRecentNewsLimit:@"15"];
    [nytimes.newsWire setRecentNewsOffSet:@"20"];
    [nytimes.newsWire setRecentNewsFormat:@"JSON"];
    [nytimes.newsWire setRecentNewsApiKey:@"API-KEY"];
    
    [NYTimesNewsWire asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"newswire"];
}

#pragma mark -
#pragma mark SpecificNewsItems

- (void)testNewsWireSpecificNewsItems
{
    [articles.newsWire setSpecificNewsItemsUrl:@"http://www.nytimes.com"];
    NSString *specificNewsItemsUrl = articles.newsWire.specificNewsItemsUrl;
    STAssertEqualObjects(@"http://www.nytimes.com", specificNewsItemsUrl, @"Should be valid url");
    
    [articles.newsWire setSpecificNewsItemsFormat:@"JSON"];
    NSString *specificNewsItemsFormat = articles.newsWire.specificNewsItemsFormat;
    STAssertEqualObjects(@"json", specificNewsItemsFormat, @"Should be either JSON or XML");
    
    [articles.newsWire setSpecificNewsItemsApiKey:@"API-KEY"];
    NSString *specificNewsItemsApiKey = articles.newsWire.specificNewsItemsApiKey;
    STAssertEqualObjects(@"API-KEY", specificNewsItemsApiKey, @"Should be alphanumeric string");
}

- (void)testNewsWireSpecificNewsItemsConnection
{
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    
    /**
     Optional
     */
    [nytimes.newsWire setSpecificNewsItemsUrl:@"http://www.nytimes.com"];
    [nytimes.newsWire setSpecificNewsItemsFormat:@"JSON"];
    [nytimes.newsWire setSpecificNewsItemsApiKey:@"API-KEY"];\
    
    [NYTimesNewsWire asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"newswire"];
}

@end
//
//  _MostPopularTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/6/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_MostPopularTests.h"
#import <UIKit/UIKit.h>

@implementation _MostPopularTests
@synthesize articles;

- (void)setUp
{
    [super setUp];
    articles = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
}

- (void)testMostPopular
{
    [articles.mostPopular setBaseResourceType:@"MOSTEMAILED"];
    NSString *baseResourceType = articles.mostPopular.baseResourceType;
    STAssertEqualObjects(@"mostemailed", baseResourceType, @"Should be either (mostemailed|mostshared|mostviewed)");
    
    [articles.mostPopular setBaseSection:@"ALL SECTIONS"];
    NSString *baseSection = articles.mostPopular.baseSection;
    STAssertEqualObjects(@"all-sections", baseSection, @"Should be either (all-sections| One or more section names, separated by semicolons)");
    
    [articles.mostPopular setBaseTimePeriod:@"7"];
    NSString *baseTimePeriod = articles.mostPopular.baseTimePeriod;
    STAssertEqualObjects(@"7", baseTimePeriod, @"Should be either (1 | 7 | 30), Corresponds to a day, a week or a month of content");
    
    [articles.mostPopular setBaseResourceType:@"MOSTSHARED"];
    [articles.mostPopular setBaseShareTypes:@"DIGG"];
    NSString *baseShareTypes = articles.mostPopular.baseShareTypes;
    STAssertEqualObjects(@"digg", baseShareTypes, @"Should be either (digg|email|facebook|mixx|myspace|permalink|timespeople|twitter|yahoobuzz)");
    
    [articles.mostPopular setBaseOffSet:@"40"];
    NSString *baseOffSet = articles.mostPopular.baseOffSet;
    STAssertEqualObjects(@"40", baseOffSet, @"Should be either (mostemailed|mostshared|mostviewed)");
    
    [articles.mostPopular setBaseFormat:@"JSON"];
    NSString *baseFormat = articles.mostPopular.baseFormat;
    STAssertEqualObjects(@"json", baseFormat, @"Should be either JSON or XML");
    
    [articles.mostPopular setBaseApiKey:@"API-KEY"];
    NSString *baseApiKey = articles.mostPopular.baseApiKey;
    STAssertEqualObjects(@"API-KEY", baseApiKey, @"Should be alphanumeric string");
}
@end

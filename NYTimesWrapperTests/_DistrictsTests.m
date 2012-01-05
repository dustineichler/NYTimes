//
//  _DistrictsTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_DistrictsTests.h"

#import <UIKit/UIKit.h>

@implementation _DistrictsTests
@synthesize articles;

- (void)setUp
{
    [super setUp];
    articles = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
}

- (void)testMainRequest
{
    [articles.districts setMainRequestApiKey:@"API-KEY"];
    NSString *mainRequestApiKey = articles.districts.mainRequestApiKey;
    STAssertEqualObjects(@"API-KEY", mainRequestApiKey, @"Should be alphanumeric string");
    
    [articles.districts setMainRequestLat:@"LAT-NUMBER"];
    NSString *mainRequestLat = articles.districts.mainRequestLat;
    STAssertEqualObjects(@"LAT-NUMBER", mainRequestLat, @"Should be alphanumeric string");
    
    [articles.districts setMainRequestLng:@"LNG-NUMBER"];
    NSString *mainRequestLng = articles.districts.mainRequestLng;
    STAssertEqualObjects(@"LNG-NUMBER", mainRequestLng, @"Should be alphanumeric string");
    
    [articles.districts setMainRequestFormat:@"JSON"];
    NSString *mainRequestFormat = articles.districts.mainRequestFormat;
    STAssertEqualObjects(@"json", mainRequestFormat, @"Should be either XML or JSON");
}

@end

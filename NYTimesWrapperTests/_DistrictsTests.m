//
//  _DistrictsTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_DistrictsTests.h"
#import "NYTimesDistricts.h"
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

- (void)testMainRequestConnection
{
    /**
        Main Request
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    
    /**
     Optional
     */
    [nytimes.districts setMainRequestApiKey:@"API-KEY"];
    [nytimes.districts setMainRequestLat:@"LAT-NUMBER"];
    [nytimes.districts setMainRequestLng:@"LNG-NUMBER"];
    [nytimes.districts setMainRequestFormat:@"JSON"];
    
    [NYTimesDistricts asyncRequest:nytimes
                           success:^(NSData *data, NSURLResponse *response){
                               NSLog(@"Results %@", data);
                           }failure:^(NSData *data, NSError *error){
                               NSLog(@"Errors %@", error);
                           }tag:@"districts main request"];
}

@end

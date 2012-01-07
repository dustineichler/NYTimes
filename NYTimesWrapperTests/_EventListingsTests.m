//
//  _EventListingsTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_EventListingsTests.h"
#import <UIKit/UIKit.h>

@implementation _EventListingsTests
@synthesize articles;

- (void)setUp
{
    [super setUp];
    articles = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
}

- (void)testMainRequest
{
    [articles.eventListings setMainRequestApiKey:@"API-KEY"];
    NSString *mainRequestApiKey = articles.eventListings.mainRequestApiKey;
    STAssertEqualObjects(@"API-KEY", mainRequestApiKey, @"Should be alphanumeric string");
    
    [articles.eventListings setMainRequestFormat:@"JSON"];
    NSString *mainRequestFormat = articles.eventListings.mainRequestFormat;
    STAssertEqualObjects(@"json", mainRequestFormat, @"Should be either XML or JSON");
    
    [articles.eventListings setMainRequestLl:@"40.756146,-73.99021"];
    NSString *mainRequestLl = articles.eventListings.mainRequestLl;
    STAssertEqualObjects(@"40.756146,-73.99021", mainRequestLl, @"Should be Two float values, separated by a comma");
    
    [articles.eventListings setMAinRequestRadius:@"800"];
    NSString *mainRequestRadius = articles.eventListings.mainRequestRadius;
    STAssertEqualObjects(@"800", mainRequestRadius, @"Should be positive integer, Default value is 1000");

//    [articles.eventListings setMainRequestSw:@"40.756146,-73.99021"];
//    [articles.eventListings setMainRequestNe:@"40.756146,-73.99021"];
//    NSString *mainRequestNe = articles.eventListings.mainRequestNe;
//    STAssertEqualObjects(@"40.756146,-73.99021", mainRequestNe, @"Should be Two float values, separated by a comma");
    
//    [articles.eventListings setMainRequestNe:@"40.756146,-73.99021"];
//    [articles.eventListings setMainRequestSw:@"40.756146,-73.99021"];
//    NSString *mainRequestSw = articles.eventListings.mainRequestSw;
//    STAssertEqualObjects(@"40.756146,-73.99021", mainRequestSw, @"Should be Two float values, separated by a comma");
    
//  Search keywords to perform a text search on the fields: web_description,
//  event_name and venue_name. 'AND' searches can be performed by wrapping 
//  query terms in quotes.
    
    [articles.eventListings setMAinRequestQuery:@"web_description"];
    NSString *mainRequestQuery = articles.eventListings.mainRequestQuery;
    STAssertEqualObjects(@"web_description", mainRequestQuery, @"If you do not specify a query, all results will be returned");
//    
//    [articles.eventListings setMAinRequestQuery:@"category=Theater"];
//    NSString *mainRequestQuery = articles.eventListings.mainRequestQuery;
//    STAssertEqualObjects(@"category=Theater", mainRequestQuery, @"Should be (category|subcategory|borough|neighborhood|times_pick|free|kid_friendly|last_chance|festival|long_running_show|previews_and_openings)");
    
    [articles.eventListings setMAinRequestDateRange:@"2011-12-01:2012-01-02"];
    NSString *mainRequestDateRange = articles.eventListings.mainRequestDateRange;
    STAssertEqualObjects(@"2011-12-01:2012-01-02", mainRequestDateRange, @"Should be Start date to end date in the following format: YYYY-MM-DD:YYYY-MM-DD");
    
    [articles.eventListings setMainRequestFacets:@"1"];
    NSString *mainRequestFacets = articles.eventListings.mainRequestFacets;
    STAssertEqualObjects(@"1", mainRequestFacets, @"Should be either 1 or 0");
    
    [articles.eventListings setMainRequestSort:@"ASC"];
    NSString *mainRequestSort = articles.eventListings.mainRequestSort;
    STAssertEqualObjects(@"asc", mainRequestSort, @"Should be either ASC or DESC");
    
    [articles.eventListings setMainRequestLimit:@"10"];
    NSString *mainRequestLimit = articles.eventListings.mainRequestLimit;
    STAssertEqualObjects(@"10", mainRequestLimit, @"Should be positive integer, Default value is 20");
    
    [articles.eventListings setMainRequestOffSet:@"20"];
    NSString *mainRequestOffSet = articles.eventListings.mainRequestOffSet;
    STAssertEqualObjects(@"20", mainRequestOffSet, @"Should be positive integer, Default value is 20");
}

@end

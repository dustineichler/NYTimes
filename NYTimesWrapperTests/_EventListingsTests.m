//
//  _EventListingsTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_EventListingsTests.h"
#import "NYTimesEventListings.h"
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

- (void)testMainRequestConnection
{
    /**
        Main Request
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.eventListings setMainRequestApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.eventListings setMainRequestLl:@"40.756146,-73.99021"];
    [nytimes.eventListings setMAinRequestRadius:@"800"];
    [nytimes.eventListings setMainRequestSw:@"40.756146,-73.99021"];
    [nytimes.eventListings setMainRequestNe:@"40.756146,-73.99021"];
    [nytimes.eventListings setMAinRequestQuery:@"category=Theater"];
    [nytimes.eventListings setMAinRequestDateRange:@"2011-12-01:2012-01-02"];
    [nytimes.eventListings setMainRequestFacets:@"1"];
    [nytimes.eventListings setMainRequestSort:@"ASC"];
    [nytimes.eventListings setMainRequestLimit:@"10"];
    [nytimes.eventListings setMainRequestOffSet:@"20"];
    [nytimes.eventListings setMainRequestFormat:@"JSON"];
    
    [NYTimesEventListings asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   
                                   NSString *string = [response.URL absoluteString];
                                   
                                   NSInteger apiKey = [string rangeOfString:@"api-key"].location == NSNotFound;
                                   NSString *_apiKey = [NSString stringWithFormat:@"%@", apiKey ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _apiKey, @"Should be either YES found or NO not found");
                                   
                                   NSInteger Ll = [string rangeOfString:@"ll"].location == NSNotFound;
                                   NSString *_Ll = [NSString stringWithFormat:@"%@", Ll ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _Ll, @"Should be either YES found or NO not found");
                                   
                                   NSInteger radius = [string rangeOfString:@"radius"].location == NSNotFound;
                                   NSString *_radius = [NSString stringWithFormat:@"%@", radius ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _radius, @"Should be either YES found or NO not found");
                                   
                                   NSInteger ne = [string rangeOfString:@"ne"].location == NSNotFound;
                                   NSString *_ne = [NSString stringWithFormat:@"%@", ne ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _ne, @"Should be either YES found or NO not found");
                                   
                                   NSInteger sw = [string rangeOfString:@"sw"].location == NSNotFound;
                                   NSString *_sw = [NSString stringWithFormat:@"%@", sw ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _sw, @"Should be either YES found or NO not found");
                                   
                                   NSInteger query = [string rangeOfString:@"query"].location == NSNotFound;
                                   NSString *_query = [NSString stringWithFormat:@"%@", query ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _query, @"Should be either YES found or NO not found");
                                   
                                   NSInteger range = [string rangeOfString:@"date_range"].location == NSNotFound;
                                   NSString *_range = [NSString stringWithFormat:@"%@", range ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _range, @"Should be either YES found or NO not found");
                                   
                                   NSInteger facets = [string rangeOfString:@"facets"].location == NSNotFound;
                                   NSString *_facets = [NSString stringWithFormat:@"%@", facets ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _facets, @"Should be either YES found or NO not found");
                                   
                                   NSInteger sort = [string rangeOfString:@"sort"].location == NSNotFound;
                                   NSString *_sort = [NSString stringWithFormat:@"%@", sort ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _sort, @"Should be either YES found or NO not found");
                                   
                                   NSInteger limit = [string rangeOfString:@"limit"].location == NSNotFound;
                                   NSString *_limit = [NSString stringWithFormat:@"%@", limit ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _limit, @"Should be either YES found or NO not found");
                                   
                                   NSInteger offset = [string rangeOfString:@"offset"].location == NSNotFound;
                                   NSString *_offset = [NSString stringWithFormat:@"%@", offset ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _offset, @"Should be either YES found or NO not found");
                                   
                                   NSInteger format = [string rangeOfString:@"listings.json"].location == NSNotFound;
                                   NSString *_format = [NSString stringWithFormat:@"%@", format ? @"NO" : @"YES"]; 
                                   STAssertEqualObjects(@"YES", _format, @"Should be either YES found or NO not found");
                                   
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"eventlistings main request"];
}

@end

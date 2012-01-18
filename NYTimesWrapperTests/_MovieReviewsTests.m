//
//  _MovieReviewsTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/6/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_MovieReviewsTests.h"
#import "NYTimesMovieReviews.h"
#import <UIKit/UIKit.h>

@implementation _MovieReviewsTests
@synthesize articles;

- (void)setUp
{
    [super setUp];
    articles = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
}

- (void)testMovieReviewsReviewsByKeyWord
{
    [articles.movieReviews setReviewsByKeyWordQuery:@"28 days later"];
    NSString *reviewsByKeyWordQuery = articles.movieReviews.reviewsByKeyWordQuery;
    STAssertEqualObjects(@"28+days+later", reviewsByKeyWordQuery, @"Should be joined by +");
    
    [articles.movieReviews setReviewsByKeyWordCriticsPick:@"YES"];
    NSString *reviewsByKeyWordCriticsPick = articles.movieReviews.reviewsByKeyWordCriticsPick;
    STAssertEqualObjects(@"Y", reviewsByKeyWordCriticsPick, @"Should be either YES or NO");
    
    [articles.movieReviews setReviewsByKeyWordThousandBest:@"YES"];
    NSString *reviewsByKeyWordThousandBest = articles.movieReviews.reviewsByKeyWordThousandBest;
    STAssertEqualObjects(@"Y", reviewsByKeyWordThousandBest, @"Should be either YES or NO");
    
    [articles.movieReviews setReviewsByKeyWordDvd:@"NO"];
    NSString *reviewsByKeyWordDvd = articles.movieReviews.reviewsByKeyWordDvd;
    STAssertEqualObjects(@"N", reviewsByKeyWordDvd, @"Should be either YES or NO");
    
    [articles.movieReviews setReviewsByKeyWordReviewer:@"Manohla Dargis"];
    NSString *reviewsByKeyWordReviewer = articles.movieReviews.reviewsByKeyWordReviewer;
    STAssertEqualObjects(@"manohla-dargis", reviewsByKeyWordReviewer, @"Should be joined by dashes");
    
    [articles.movieReviews setReviewsByKeyWordPublicationDate:@"2012-01-02"];
    NSString *reviewsByKeyWordPublicationDate = articles.movieReviews.reviewsByKeyWordPublicationDate;
    STAssertEqualObjects(@"2012-01-02", reviewsByKeyWordPublicationDate, @"Should be YYYY-MM-DD format");
    
    [articles.movieReviews setReviewsByKeyWordOpeningDate:@"2012-01-02"];
    NSString *reviewsByKeyWordOpeningDate = articles.movieReviews.reviewsByKeyWordOpeningDate;
    STAssertEqualObjects(@"2012-01-02", reviewsByKeyWordOpeningDate, @"Should be YYYY-MM-DD format");
    
    [articles.movieReviews setReviewsByKeyWordOffSet:@"40"];
    NSString *reviewsByKeyWordOffSet = articles.movieReviews.reviewsByKeyWordOffSet;
    STAssertEqualObjects(@"40", reviewsByKeyWordOffSet, @"Should be multiple of 20");
    
    [articles.movieReviews setReviewsByKeyWordOrder:@"BY TITLE"];
    NSString *reviewsByKeyWordOrder = articles.movieReviews.reviewsByKeyWordOrder;
    STAssertEqualObjects(@"by-title", reviewsByKeyWordOrder, @"Should be either (by-title|by-publication-date|by-opening-date|by-dvd-release-date)");
    
    [articles.movieReviews setReviewsByKeyWordFormat:@"JSON"];
    NSString *reviewsByKeyWordFormat = articles.movieReviews.reviewsByKeyWordFormat;
    STAssertEqualObjects(@"json", reviewsByKeyWordFormat, @"Should be either JSON or XML");
    
    [articles.movieReviews setReviewsByKeyWordApiKey:@"API-KEY"];
    NSString *reviewsByKeyWordApiKey = articles.movieReviews.reviewsByKeyWordApiKey;
    STAssertEqualObjects(@"API-KEY", reviewsByKeyWordApiKey, @"Should be alphanumeric string");
}

- (void)testMovieReviewsByKeywordConnection
{
    /**
        Main Request
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.movieReviews setReviewsByKeyWordApiKey:@"API-KEY"];
    /**
     Optional
     */
    
    [nytimes.movieReviews setReviewsByKeyWordQuery:@"28 days later"];
    [nytimes.movieReviews setReviewsByKeyWordCriticsPick:@"YES"];    
    [nytimes.movieReviews setReviewsByKeyWordThousandBest:@"YES"];
    [nytimes.movieReviews setReviewsByKeyWordDvd:@"NO"];
    [nytimes.movieReviews setReviewsByKeyWordReviewer:@"Manohla Dargis"];
    [nytimes.movieReviews setReviewsByKeyWordPublicationDate:@"2012-01-02"];
    [nytimes.movieReviews setReviewsByKeyWordOpeningDate:@"2012-01-02"];
    [nytimes.movieReviews setReviewsByKeyWordOffSet:@"40"];
    [nytimes.movieReviews setReviewsByKeyWordOrder:@"BY TITLE"];
    [nytimes.movieReviews setReviewsByKeyWordFormat:@"JSON"];
    
    [NYTimesMovieReviews asyncRequest:nytimes
                              success:^(NSData *data, NSURLResponse *response){
                                  
                                  NSString *string = [response.URL absoluteString];
                                  
                                  NSInteger query = [string rangeOfString:@"query"].location == NSNotFound;
                                  NSString *_query = [NSString stringWithFormat:@"%@", query ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _query, @"Should be either YES found or NO not found");
                                  
                                  NSInteger critics = [string rangeOfString:@"critics-pick"].location == NSNotFound;
                                  NSString *_critics = [NSString stringWithFormat:@"%@", critics ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _critics, @"Should be either YES found or NO not found");
                                  
                                  NSInteger thousandBest = [string rangeOfString:@"thousand-best"].location == NSNotFound;
                                  NSString *_thousandBest = [NSString stringWithFormat:@"%@", thousandBest ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _thousandBest, @"Should be either YES found or NO not found");
                                  
                                  NSInteger dvd = [string rangeOfString:@"dvd"].location == NSNotFound;
                                  NSString *_dvd = [NSString stringWithFormat:@"%@", dvd ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _dvd, @"Should be either YES found or NO not found");
                                  
                                  NSInteger reviewer = [string rangeOfString:@"reviewer"].location == NSNotFound;
                                  NSString *_reviewer = [NSString stringWithFormat:@"%@", reviewer ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _reviewer, @"Should be either YES found or NO not found");
                                  
                                  NSInteger pubDate = [string rangeOfString:@"publication-date"].location == NSNotFound;
                                  NSString *_pubDate = [NSString stringWithFormat:@"%@", pubDate ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _pubDate, @"Should be either YES found or NO not found");
                                  
                                  NSInteger openingDate = [string rangeOfString:@"opening-date"].location == NSNotFound;
                                  NSString *_openingDate = [NSString stringWithFormat:@"%@", openingDate ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _openingDate, @"Should be either YES found or NO not found");
                                  
                                  NSInteger offset = [string rangeOfString:@"offset"].location == NSNotFound;
                                  NSString *_offset = [NSString stringWithFormat:@"%@", offset ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _offset, @"Should be either YES found or NO not found");
                                  
                                  NSInteger order = [string rangeOfString:@"order"].location == NSNotFound;
                                  NSString *_order = [NSString stringWithFormat:@"%@", order ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _order, @"Should be either YES found or NO not found");
                                  
                                  NSInteger format = [string rangeOfString:@"json"].location == NSNotFound;
                                  NSString *_format = [NSString stringWithFormat:@"%@", format ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _format, @"Should be either YES found or NO not found");
                                  
                              }failure:^(NSData *data, NSError *error){
                                  NSLog(@"Errors %@", error);
                              }tag:@"moviereviews by keywords"];
}

- (void)testMovieReviewsReviewsAndNYTCriticsPicks
{
    [articles.movieReviews setReviewsAndNYTCriticsPicksResourceType:@"DVD PICKS"];
    NSString *reviewsAndNYTCriticsPicksResourceType = articles.movieReviews.reviewsAndNYTCriticsPicksResourceType;
    STAssertEqualObjects(@"dvd-picks", reviewsAndNYTCriticsPicksResourceType, @"Should be either (all|picks|dvd-picks)");
    
    [articles.movieReviews setReviewsAndNYTCriticsPicksOffSet:@"40"];
    NSString *reviewsAndNYTCriticsPicksOffSet = articles.movieReviews.reviewsAndNYTCriticsPicksOffSet;
    STAssertEqualObjects(@"40", reviewsAndNYTCriticsPicksOffSet, @"Should be multiple of 20");
    
    [articles.movieReviews setReviewsAndNYTCriticsPicksOrder:@"BY TITLE"];
    NSString *reviewsAndNYTCriticsPicksOrder = articles.movieReviews.reviewsAndNYTCriticsPicksOrder;
    STAssertEqualObjects(@"by-title", reviewsAndNYTCriticsPicksOrder, @"Should be (by-title|by-publication-date|by-opening-date |by-dvd-release-date)");
    
    [articles.movieReviews setReviewsAndNYTCriticsPicksFormat:@"JSON"];
    NSString *reviewsAndNYTCriticsPicksFormat = articles.movieReviews.reviewsAndNYTCriticsPicksFormat;
    STAssertEqualObjects(@"json", reviewsAndNYTCriticsPicksFormat, @"Should be either JSON or XML");
    
    [articles.movieReviews setReviewsAndNYTCriticsPicksApiKey:@"API-KEY"];
    NSString *reviewsAndNYTCriticsPicksApiKey = articles.movieReviews.reviewsAndNYTCriticsPicksApiKey;
    STAssertEqualObjects(@"API-KEY", reviewsAndNYTCriticsPicksApiKey, @"Should be alphanumeric string");
}

- (void)testMovieReviewsReviewsAndNYTCriticsPicksConnection
{
    /**
        Main Request
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.movieReviews setReviewsAndNYTCriticsPicksApiKey:@"API-KEY"];
    /**
     Optional
     */
    
    [nytimes.movieReviews setReviewsAndNYTCriticsPicksResourceType:@"DVD PICKS"];
    [nytimes.movieReviews setReviewsAndNYTCriticsPicksOffSet:@"40"];
    [nytimes.movieReviews setReviewsAndNYTCriticsPicksOrder:@"BY TITLE"];
    [nytimes.movieReviews setReviewsAndNYTCriticsPicksFormat:@"JSON"];

    [NYTimesMovieReviews asyncRequest:nytimes
                              success:^(NSData *data, NSURLResponse *response){
                                  
                                  NSString *string = [response.URL absoluteString];
                                  
                                  NSInteger resource = [string rangeOfString:@"dvd-picks"].location == NSNotFound;
                                  NSString *_resource = [NSString stringWithFormat:@"%@", resource ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _resource, @"Should be either YES found or NO not found");
                                  
                                  NSInteger offset = [string rangeOfString:@"offset"].location == NSNotFound;
                                  NSString *_offset = [NSString stringWithFormat:@"%@", offset ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _offset, @"Should be either YES found or NO not found");
                                  
                                  NSInteger order = [string rangeOfString:@"order"].location == NSNotFound;
                                  NSString *_order = [NSString stringWithFormat:@"%@", order ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _order, @"Should be either YES found or NO not found");
                                  
                                  NSInteger format = [string rangeOfString:@"json"].location == NSNotFound;
                                  NSString *_format = [NSString stringWithFormat:@"%@", format ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _format, @"Should be either YES found or NO not found");
                                  
                              }failure:^(NSData *data, NSError *error){
                                  NSLog(@"Errors %@", error);
                              }tag:@"moviereviews reviews and nytimes critics picks"];
}

- (void)testMovieReviewsReviewsByReviewers
{
    [articles.movieReviews setReviewsByReviewerCriticsPick:@"YES"];
    NSString *reviewsByReviewerCriticsPick = articles.movieReviews.reviewsByReviewerCriticsPick;
    STAssertEqualObjects(@"Y", reviewsByReviewerCriticsPick, @"Should be ");
    
    [articles.movieReviews setReviewsByReviewerReviewerName:@"Manohla Dargis"];
    NSString *reviewsByReviewerReviewerName = articles.movieReviews.reviewsByReviewerReviewerName;
    STAssertEqualObjects(@"manohla-dargis", reviewsByReviewerReviewerName, @"Should be joined by dashes");
    
    [articles.movieReviews setReviewsByReviewerOffSet:@"40"];
    NSString *reviewsByReviewerOffSet = articles.movieReviews.reviewsByReviewerOffSet;
    STAssertEqualObjects(@"40", reviewsByReviewerOffSet, @"Should be multiple of 20");
    
    [articles.movieReviews setReviewsByReviewerOrder:@"BY TITLE"];
    NSString *reviewsByReviewerOrder = articles.movieReviews.reviewsByReviewerOrder;
    STAssertEqualObjects(@"by-title", reviewsByReviewerOrder, @"Should be either (by-title|by-publication-date|by-opening-date|by-dvd-release-date)");
    
    [articles.movieReviews setReviewsByReviewerFormat:@"JSON"];
    NSString *reviewsByReviewerFormat = articles.movieReviews.reviewsByReviewerFormat;
    STAssertEqualObjects(@"json", reviewsByReviewerFormat, @"Should be either JSON or XML");
    
    [articles.movieReviews setReviewsByReviewerApiKey:@"API-KEY"];
    NSString *reviewsByReviewerApiKey = articles.movieReviews.reviewsByReviewerApiKey;
    STAssertEqualObjects(@"API-KEY", reviewsByReviewerApiKey, @"Should be alphanumeric string");
}

- (void)testMovieReviewsReviewsByReviewersConnection
{
    /**
        Main Request
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.movieReviews setReviewsByReviewerApiKey:@"API-KEY"];
    /**
     Optional
     */
    
    [nytimes.movieReviews setReviewsByReviewerCriticsPick:@"YES"];
    [nytimes.movieReviews setReviewsByReviewerReviewerName:@"Manohla Dargis"];
    [nytimes.movieReviews setReviewsByReviewerOffSet:@"40"];
    [nytimes.movieReviews setReviewsByReviewerOrder:@"BY TITLE"];
    [nytimes.movieReviews setReviewsByReviewerFormat:@"JSON"];

    [NYTimesMovieReviews asyncRequest:nytimes
                              success:^(NSData *data, NSURLResponse *response){
                                  
                                  NSString *string = [response.URL absoluteString];
                                  
                                  NSInteger critics = [string rangeOfString:@"critics-pick"].location == NSNotFound;
                                  NSString *_critics = [NSString stringWithFormat:@"%@", critics ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _critics, @"Should be either YES found or NO not found");
                                  
                                  NSInteger reviewer = [string rangeOfString:@"reviewer"].location == NSNotFound;
                                  NSString *_reviewer = [NSString stringWithFormat:@"%@", reviewer ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _reviewer, @"Should be either YES found or NO not found");
                                  
                                  NSInteger offset = [string rangeOfString:@"offset"].location == NSNotFound;
                                  NSString *_offset = [NSString stringWithFormat:@"%@", offset ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _offset, @"Should be either YES found or NO not found");
                                  
                                  NSInteger order = [string rangeOfString:@"order"].location == NSNotFound;
                                  NSString *_order = [NSString stringWithFormat:@"%@", order ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _order, @"Should be either YES found or NO not found");
                                  
                                  NSInteger format = [string rangeOfString:@"json"].location == NSNotFound;
                                  NSString *_format = [NSString stringWithFormat:@"%@", format ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _format, @"Should be either YES found or NO not found");
                                  
                              }failure:^(NSData *data, NSError *error){
                                  NSLog(@"Errors %@", error);
                              }tag:@"moviereviews reviews by reviewers"];
}

- (void)testMovieReviewsReviewerDetails
{
    [articles.movieReviews setReviewerDetailsResourceType:@"FULL TIME"];
    NSString *reviewerDetailsResourceType = articles.movieReviews.reviewerDetailsResourceType;
    STAssertEqualObjects(@"full-time", reviewerDetailsResourceType, @"Should be either (all | full-time | part-time | reviewer | [reviewer-name])"); 
    
    [articles.movieReviews setReviewerDetailsFormat:@"JSON"];
    NSString *reviewerDetailsFormat = articles.movieReviews.reviewerDetailsFormat;
    STAssertEqualObjects(@"json", reviewerDetailsFormat, @"Should be either JSON or XML");
    
    [articles.movieReviews setReviewerDetailsApiKey:@"API-KEY"];
    NSString *reviewerDetailsApiKey = articles.movieReviews.reviewerDetailsApiKey;
    STAssertEqualObjects(@"API-KEY", reviewerDetailsApiKey, @"Should be alphanumeric string"); 
}

- (void)testMovieReviewsReviewerDetailsConnection
{
    /**
        Main Request
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.movieReviews setReviewerDetailsApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.movieReviews setReviewerDetailsResourceType:@"FULL TIME"];
    [nytimes.movieReviews setReviewerDetailsFormat:@"JSON"];
    
    [NYTimesMovieReviews asyncRequest:nytimes
                              success:^(NSData *data, NSURLResponse *response){
                                  
                                  NSString *string = [response.URL absoluteString];
                                  
                                  NSInteger apiKey = [string rangeOfString:@"api-key"].location == NSNotFound;
                                  NSString *_apiKey = [NSString stringWithFormat:@"%@", apiKey ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _apiKey, @"Should be either YES found or NO not found");
                                  
                                  NSInteger resource = [string rangeOfString:@"full-time"].location == NSNotFound;
                                  NSString *_resouce = [NSString stringWithFormat:@"%@", resource ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _resouce, @"Should be either YES found or NO not found");
                                  
                                  NSInteger format = [string rangeOfString:@"json"].location == NSNotFound;
                                  NSString *_format = [NSString stringWithFormat:@"%@", format ? @"NO" : @"YES"]; 
                                  STAssertEqualObjects(@"YES", _format, @"Should be either YES found or NO not found");
                                  
                              }failure:^(NSData *data, NSError *error){
                                  NSLog(@"Errors %@", error);
                              }tag:@"moviereviews reviews by reviewers"];
}


@end

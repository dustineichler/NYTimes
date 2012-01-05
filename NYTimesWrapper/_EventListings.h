//
//  _EventListings.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

struct _Listing {
    NSString *ll;
    NSString *radius;
    NSString *ne;
    NSString *sw;
    NSString *query;
    NSString *filters;
    NSString *dateRange;
    NSString *facets;
    NSString *sort;
    NSString *limit;
    NSString *offSet;
    NSString *apiKey;
    NSString *format;
};
//typedef struct _Listing mainRequest;

@interface _EventListings : NSObject
{
    struct _Listing mainRequest;
}

@property struct _Listing mainRequest;

- (NSString *)mainRequestLl;
- (void)setMainRequestLl:(NSString *)ll;
- (NSString *)mainRequestRadius;
- (void)setMAinRequestRadius:(NSString *)radius;
- (NSString *)mainRequestNe;
- (void)setMainRequestNe:(NSString *)ne;
- (NSString *)mainRequestSw;
- (void)setMainRequestSw:(NSString *)sw;
- (NSString *)mainRequestQuery;
- (void)setMAinRequestQuery:(NSString *)query;
- (NSString *)mainRequestFilters;
- (void)setMainRequestFilters:(NSString *)filters;
- (NSString *)mainRequestDateRange;
- (void)setMAinRequestDateRange:(NSString *)dateRange;
- (NSString *)mainRequestFacets;
- (void)setMainRequestFacets:(NSString *)facets;
- (NSString *)mainRequestSort;
- (void)setMainRequestSort:(NSString *)sort;
- (NSString *)mainRequestLimit;
- (void)setMainRequestLimit:(NSString *)limit;
- (NSString *)mainRequestOffSet;
- (void)setMainRequestOffSet:(NSString *)offSet;
- (NSString *)mainRequestApiKey;
- (void)setMainRequestApiKey:(NSString *)apiKey;
- (NSString *)mainRequestFormat;
- (void)setMainRequestFormat:(NSString *)format;

@end

//
//  _EventListings.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_EventListings.h"

@implementation _EventListings
@synthesize mainRequest;

- (NSString *)mainRequestLl
{
    return self->mainRequest.ll;
}

- (void)setMainRequestLl:(NSString *)ll
{
    if (ll && [ll length] > 0)
    {
        self->mainRequest.ll = ll;
    }
}

- (NSString *)mainRequestRadius
{
    return self->mainRequest.radius;
}

- (void)setMAinRequestRadius:(NSString *)radius
{
    int _radius = [radius intValue];
    
    if ([self mainRequestLl] && _radius > 0)
    {
        self->mainRequest.radius = radius;
    } else {
        NSLog(@"--Error: LL is Required with Radius");
    }
}

- (NSString *)mainRequestNe
{
    return self->mainRequest.ne;
}

- (void)setMainRequestNe:(NSString *)ne
{
    int _ne = [ne intValue];
    
    if ([self mainRequestSw] && _ne > 0)
    {
        self->mainRequest.ne = ne;
    }
}

- (NSString *)mainRequestSw
{
    return self->mainRequest.sw;
}

- (void)setMainRequestSw:(NSString *)sw
{
    int _sw = [sw intValue];
    
    if ([self mainRequestNe] && _sw > 0)
    {
        self->mainRequest.sw = sw;
    } else {
        NSLog(@"--Error: NE is Required with SW");
    }
}

- (NSString *)mainRequestQuery
{
    return self->mainRequest.query;
}

- (void)setMAinRequestQuery:(NSString *)query
{
    if (query && [query length] > 0)
    {
        self->mainRequest.query = query;
    }
}

- (NSString *)mainRequestFilters
{
    return self->mainRequest.filters;
}

- (void)setMainRequestFilters:(NSString *)filters
{
    self->mainRequest.filters = filters;
}

- (NSString *)mainRequestDateRange
{
    return self->mainRequest.dateRange;
}

- (void)setMAinRequestDateRange:(NSString *)dateRange
{
    if (dateRange && [dateRange length] > 0)
    {
        self->mainRequest.dateRange = dateRange;
    }
}

- (NSString *)mainRequestFacets
{
    return self->mainRequest.facets;
}

- (void)setMainRequestFacets:(NSString *)facets
{
    if (facets == @"1" || facets == @"0")
    {
        self->mainRequest.facets = facets;
    }
}

- (NSString *)mainRequestSort
{
    return self->mainRequest.sort;
}

- (void)setMainRequestSort:(NSString *)sort
{
    if (sort == @"ASC") {
        self->mainRequest.sort = @"asc";
    } else if (sort == @"DESC") {
        self->mainRequest.sort = @"desc";
    }
}

- (NSString *)mainRequestLimit
{
    if (self->mainRequest.limit) {
        return self->mainRequest.limit;
    } else {
        return @"20";
    }
}

- (void)setMainRequestLimit:(NSString *)limit
{
    if (limit && [limit length] > 0)
    {
        self->mainRequest.limit = limit;
    }
}

- (NSString *)mainRequestOffSet
{
    if (self->mainRequest.offSet) {
        return self->mainRequest.offSet;
    } else {
        return @"20";
    }
}

- (void)setMainRequestOffSet:(NSString *)offSet
{
    int _offset = [offSet intValue];
    
    if (_offset % 20 == 0) {
        self->mainRequest.offSet = offSet;
    } else {
        NSLog(@"--Error: Offset must be multiple of 20");
    }
}

- (NSString *)mainRequestApiKey
{
    return self->mainRequest.apiKey;
}

- (void)setMainRequestApiKey:(NSString *)apiKey
{
    self->mainRequest.apiKey = apiKey;
}

- (NSString *)mainRequestFormat
{
    return self->mainRequest.format;
}

- (void)setMainRequestFormat:(NSString *)format
{
    if (format == @"XML") {
        self->mainRequest.format = @"xml";        
    } else if (format == @"JSON") {
        self->mainRequest.format = @"json";
    }
}

@end

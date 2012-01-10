//
//  _NewsWire.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/9/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_NewsWire.h"

@implementation _NewsWire
@synthesize recentNews, specificNewsItems;

#pragma mark -
#pragma mark RecentNews

- (NSString *)recentNewsSource
{
    return self->recentNews.source;
}

- (void)setRecentNewsSource:(NSString *)source
{
    if (source == @"ALL") {
        self->recentNews.source = @"all";
    } else if (source == @"NYT") {
        self->recentNews.source = @"nyt";    
    } else if (source == @"IHT") {
        self->recentNews.source = @"iht";
    }
}

- (NSString *)recentNewsSection
{
    return self->recentNews.section;
}

- (void)setRecentNewsSection:(NSString *)section
{
    if (section && [section length] > 0)
    {
        self->recentNews.section = @"all";
    }
}

- (NSString *)recentNewsTimePeriod
{
    return self->recentNews.timePeriod;
}

- (void)setRecentNewsTimePeriod:(NSString *)timePeriod
{
    int _timePeriod = [timePeriod intValue];
    
    if (_timePeriod > 0 && _timePeriod <= 720)
    {
        self->recentNews.timePeriod = timePeriod;
    }
}

- (NSString *)recentNewsLimit
{
    return self->recentNews.limit;
}

- (void)setRecentNewsLimit:(NSString *)limit
{
    int _limit = [limit intValue];
    
    if (_limit > 0 && _limit <= 20)
    {
        self->recentNews.limit = limit;
    }
}

- (NSString *)recentNewsOffSet
{
    return self->recentNews.offSet;
}

- (void)setRecentNewsOffSet:(NSString *)offSet
{
    int _offSet = [offSet intValue];
    
    if (_offSet > 0)
    {
        self->recentNews.offSet = offSet;
    }
}

- (NSString *)recentNewsFormat
{
    return self->recentNews.format;
}

- (void)setRecentNewsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->recentNews.format = @"xml";
    } else if (format == @"JSON") {
        self->recentNews.format = @"json";
    }
}

- (NSString *)recentNewsApiKey
{
    return self->recentNews.apiKey;
}

- (void)setRecentNewsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->recentNews.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark SpecificNewsItems

- (NSString *)specificNewsItemsUrl
{
    return self->specificNewsItems.url;
}

- (void)setSpecificNewsItemsUrl:(NSString *)url
{
    BOOL result = [[url lowercaseString] hasPrefix:@"http://"];
    
    if (result)
    {
        self->specificNewsItems.url = url;
    }
}

- (NSString *)specificNewsItemsFormat
{
    return self->specificNewsItems.format;
}

- (void)setSpecificNewsItemsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->specificNewsItems.format = @"xml";
    } else if (format == @"JSON") {
        self->specificNewsItems.format = @"json";
    }
}

- (NSString *)specificNewsItemsApiKey
{
    return self->specificNewsItems.apiKey;
}

- (void)setSpecificNewsItemsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->specificNewsItems.apiKey = apiKey;
    }
}

@end

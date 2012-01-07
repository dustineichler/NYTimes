//
//  _MostPopular.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/6/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_MostPopular.h"

@implementation _MostPopular
@synthesize base;

- (NSString *)baseResourceType
{
    return self->base.resourceType;
}

- (void)setBaseResourceType:(NSString *)resourceType
{
    if (resourceType == @"MOSTEMAILED") {
        self->base.resourceType = @"mostemailed";
    } else if (resourceType == @"MOSTSHARED") {
        self->base.resourceType = @"mostshared";    
    } else if (resourceType == @"MOSTVIEWED") {
        self->base.resourceType = @"mostviewed";
    }
}

- (NSString *)baseSection
{
    return self->base.section;
}

- (void)setBaseSection:(NSString *)section
{
    if (section == @"ALL SECTIONS") {
        self->base.section = @"all-sections";
    } else {
        self->base.section = section;
    }
}

- (NSString *)baseTimePeriod
{
    return self->base.timePeriod;
}

- (void)setBaseTimePeriod:(NSString *)timePeriod
{
    if (timePeriod == @"1") {
        self->base.timePeriod = timePeriod;
    } else if (timePeriod == @"7") {
        self->base.timePeriod = timePeriod;    
    } else if (timePeriod == @"30") {
        self->base.timePeriod = timePeriod;
    }
}

- (NSString *)baseShareTypes
{
    return self->base.shareTypes;
}

- (void)setBaseShareTypes:(NSString *)shareTypes
{
    if ([self baseResourceType] == @"mostshared")
    {
        if (shareTypes == @"DIGG") {
            self->base.shareTypes = [shareTypes lowercaseString];
        } else if (shareTypes == @"EMAIL") {
            self->base.shareTypes = [shareTypes lowercaseString];
        } else if (shareTypes == @"FACEBOOK") {
            self->base.shareTypes = [shareTypes lowercaseString];
        } else if (shareTypes == @"MIXX") {
            self->base.shareTypes = [shareTypes lowercaseString];
        } else if (shareTypes == @"MYSPACE") {
            self->base.shareTypes = [shareTypes lowercaseString];
        } else if (shareTypes == @"PERMALINK") {
            self->base.shareTypes = [shareTypes lowercaseString];
        } else if (shareTypes == @"TIMESPEOPLE") {
            self->base.shareTypes = [shareTypes lowercaseString];
        } else if (shareTypes == @"TWITTER") {
            self->base.shareTypes = [shareTypes lowercaseString];
        } else if (shareTypes == @"YAHOOBUZZ") {
            self->base.shareTypes = [shareTypes lowercaseString];
        }
    } else {
        NSLog(@"--Error: MostShared ResourceType is required.");
    }
}

- (NSString *)baseOffSet
{
    return self->base.offSet;
}

- (void)setBaseOffSet:(NSString *)offSet
{
    int _offSet = [offSet intValue];
    
    if (_offSet % 20 == 0)
    {
        self->base.offSet = offSet;
    }
}

- (NSString *)baseFormat
{
    return self->base.format;
}

- (void)setBaseFormat:(NSString *)format
{
    if (format == @"JSON") {
        self->base.format = @"json";
    } else if (format == @"XML") {
        self->base.format = @"xml";
    }
}

- (NSString *)baseApiKey
{
    return self->base.apiKey;
}

- (void)setBaseApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->base.apiKey = apiKey;
    }
}

@end

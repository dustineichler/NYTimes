//
//  _Districts.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_Districts.h"

@implementation _Districts
@synthesize mainRequest;

- (NSString *)mainRequestLat
{
    return self->mainRequest.lat;
}

- (void)setMainRequestLat:(NSString *)lat
{
    if (lat && [lat length] > 0)
    {
        self->mainRequest.lat = lat;
    }
}

- (NSString *)mainRequestLng
{
    return self->mainRequest.lng;
}

- (void)setMainRequestLng:(NSString *)lng
{
    if (lng && [lng length] > 0)
    {
        self->mainRequest.lng = lng;
    }
}

- (NSString *)mainRequestApiKey
{
    return self->mainRequest.apiKey;
}

- (void)setMainRequestApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->mainRequest.apiKey = apiKey;
    }
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

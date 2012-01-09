//
//  _MovieReviews.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/6/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_MovieReviews.h"

@implementation _MovieReviews
@synthesize reviewsByKeyWord, reviewsAndNYTCriticsPicks, reviewsByReviewer, reviewerDetails;

#pragma mark -
#pragma mark ReviewsByKeyword

- (NSString *)reviewsByKeyWordQuery
{
    return self->reviewsByKeyWord.query;
}

- (void)setReviewsByKeyWordQuery:(NSString *)query
{
    if (query && [query length] > 0)
    {
        NSArray *escapedUrlString = [query componentsSeparatedByString:@" "];
        self->reviewsByKeyWord.query = [escapedUrlString componentsJoinedByString:@"+"];
    }
}

- (NSString *)reviewsByKeyWordCriticsPick
{
    return self->reviewsByKeyWord.criticsPick;
}

- (void)setReviewsByKeyWordCriticsPick:(NSString *)criticsPick
{
    if (criticsPick == @"YES") {
        self->reviewsByKeyWord.criticsPick = @"Y";
    } else if (criticsPick == @"NO") {
        self->reviewsByKeyWord.criticsPick = @"N";
    }
}

- (NSString *)reviewsByKeyWordThousandBest
{
    return self->reviewsByKeyWord.thousandBest;
}

- (void)setReviewsByKeyWordThousandBest:(NSString *)thousandBest
{
    if (thousandBest == @"YES") {
        self->reviewsByKeyWord.thousandBest = @"Y";
    } else if (thousandBest == @"NO") {
        self->reviewsByKeyWord.thousandBest = @"N";
    }
}

- (NSString *)reviewsByKeyWordDvd
{
    return self->reviewsByKeyWord.dvd;
}

- (void)setReviewsByKeyWordDvd:(NSString *)dvd
{
    if (dvd == @"YES") {
        self->reviewsByKeyWord.dvd = @"Y";
    } else if (dvd == @"NO") {
        self->reviewsByKeyWord.dvd = @"N";
    }
}

- (NSString *)reviewsByKeyWordReviewer
{
    return self->reviewsByKeyWord.reviewer;
}

- (void)setReviewsByKeyWordReviewer:(NSString *)reviewer
{
    if (reviewer && [reviewer length] > 0)
    {
        NSArray *escapedUrlString = [[reviewer lowercaseString] componentsSeparatedByString:@" "];
        self->reviewsByKeyWord.reviewer = [escapedUrlString componentsJoinedByString:@"-"];
    }
}

- (NSString *)reviewsByKeyWordPublicationDate
{
    return self->reviewsByKeyWord.publicationDate;
}

- (void)setReviewsByKeyWordPublicationDate:(NSString *)publicationDate
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *_publicationDate = [formatter dateFromString:publicationDate];
    
    NSString *result = [formatter stringFromDate:_publicationDate];
    
    if (result)
    {
        self->reviewsByKeyWord.publicationDate = result;
    }
}

- (NSString *)reviewsByKeyWordOpeningDate
{
    return self->reviewsByKeyWord.openingDate;
}

- (void)setReviewsByKeyWordOpeningDate:(NSString *)openingDate
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *_openingDate = [formatter dateFromString:openingDate];
    
    NSString *result = [formatter stringFromDate:_openingDate];
    
    if (result)
    {
        self->reviewsByKeyWord.openingDate = result;
    }
}

- (NSString *)reviewsByKeyWordOffSet
{
    return self->reviewsByKeyWord.offSet;
}

- (void)setReviewsByKeyWordOffSet:(NSString *)offSet
{
    int _offSet = [offSet intValue];
    
    if (_offSet % 20 == 0)
    {
        self->reviewsByKeyWord.offSet = offSet;
    }
}

- (NSString *)reviewsByKeyWordOrder
{
    return self->reviewsByKeyWord.order;
}

- (void)setReviewsByKeyWordOrder:(NSString *)order
{
    if (order == @"BY TITLE") {
        self->reviewsByKeyWord.order = @"by-title";
    } else if (order == @"BY PUBLICATION DATE") {
        self->reviewsByKeyWord.order = @"by-publication-date";
    } else if (order == @"BY OPENING DATE") {
        self->reviewsByKeyWord.order = @"by-opening-date";
    } else if (order == @"BY DVD RELEASE DATE") {
        self->reviewsByKeyWord.order = @"by-dvd-release-date";
    }
}

- (NSString *)reviewsByKeyWordFormat
{
    return self->reviewsByKeyWord.format;
}

- (void)setReviewsByKeyWordFormat:(NSString *)format
{
    if (format == @"XML") {
        self->reviewsByKeyWord.format = @"xml";
    } else if (format == @"JSON") {
        self->reviewsByKeyWord.format = @"json";
    }
}

- (NSString *)reviewsByKeyWordApiKey
{
    return self->reviewsByKeyWord.apiKey;
}

- (void)setReviewsByKeyWordApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->reviewsByKeyWord.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark ReviewsAndNYTCriticsPicks

- (NSString *)reviewsAndNYTCriticsPicksResourceType
{
    return self->reviewsAndNYTCriticsPicks.resourceType;
}

- (void)setReviewsAndNYTCriticsPicksResourceType:(NSString *)resourceType
{
    if (resourceType == @"ALL") {
        self->reviewsAndNYTCriticsPicks.resourceType = @"all";
    } else if (resourceType == @"PICKS") {
        self->reviewsAndNYTCriticsPicks.resourceType = @"picks";    
    } else if (resourceType == @"DVD PICKS") {
        self->reviewsAndNYTCriticsPicks.resourceType = @"dvd-picks";
    }
}

- (NSString *)reviewsAndNYTCriticsPicksOffSet
{
    return self->reviewsAndNYTCriticsPicks.offSet;
}

- (void)setReviewsAndNYTCriticsPicksOffSet:(NSString *)offSet
{
    int _offSet = [offSet intValue];
    
    if (_offSet % 20 == 0)
    {
        self->reviewsAndNYTCriticsPicks.offSet = offSet;
    }
}

- (NSString *)reviewsAndNYTCriticsPicksOrder
{
    return self->reviewsAndNYTCriticsPicks.order;
}

- (void)setReviewsAndNYTCriticsPicksOrder:(NSString *)order
{
    if (order == @"BY TITLE") {
        self->reviewsAndNYTCriticsPicks.order = @"by-title";
    } else if (order == @"BY PUBLICATION DATE") {
        self->reviewsAndNYTCriticsPicks.order = @"by-publication-date";
    } else if (order == @"BY OPENING DATE") {
        self->reviewsAndNYTCriticsPicks.order = @"by-opening-date";    
    } else if (order == @"BY DVD RELEASE DATE") {
        self->reviewsAndNYTCriticsPicks.order = @"by-dvd-release-date";
    }
}

- (NSString *)reviewsAndNYTCriticsPicksFormat
{
    return self->reviewsAndNYTCriticsPicks.format;
}

- (void)setReviewsAndNYTCriticsPicksFormat:(NSString *)format
{
    if (format == @"XML") {
        self->reviewsAndNYTCriticsPicks.format = @"xml";
    } else if (format == @"JSON") {
        self->reviewsAndNYTCriticsPicks.format = @"json";
    }
}

- (NSString *)reviewsAndNYTCriticsPicksApiKey
{
    return self->reviewsAndNYTCriticsPicks.apiKey;
}

- (void)setReviewsAndNYTCriticsPicksApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->reviewsAndNYTCriticsPicks.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark ReviewsByReviewer

- (NSString *)reviewsByReviewerReviewerName
{
    return self->reviewsByReviewer.reviewerName;
}

- (void)setReviewsByReviewerReviewerName:(NSString *)reviewerName
{
    if (reviewerName && [reviewerName length] > 0)
    {
        NSArray *escapedUrlString = [[reviewerName lowercaseString] componentsSeparatedByString:@" "];
        self->reviewsByReviewer.reviewerName = [escapedUrlString componentsJoinedByString:@"-"];
    }
}

- (NSString *)reviewsByReviewerCriticsPick
{
    return self->reviewsByReviewer.criticsPick;
}

- (void)setReviewsByReviewerCriticsPick:(NSString *)criticsPick
{
    if (criticsPick == @"YES") {
        self->reviewsByReviewer.criticsPick = @"Y";
    } else if (criticsPick == @"NO") {
        self->reviewsByReviewer.criticsPick = @"N";
    }
}

- (NSString *)reviewsByReviewerOffSet
{
    return self->reviewsByReviewer.offSet;
}

- (void)setReviewsByReviewerOffSet:(NSString *)offSet
{
    int _offSet = [offSet intValue];
    
    if (_offSet % 20 == 0)
    {
        self->reviewsByReviewer.offSet = offSet;
    }
}

- (NSString *)reviewsByReviewerFormat
{
    return self->reviewsByReviewer.format;
}

- (void)setReviewsByReviewerFormat:(NSString *)format
{
    if (format == @"XML") {
        self->reviewsByReviewer.format = @"xml";
    } else if (format == @"JSON") {
        self->reviewsByReviewer.format = @"json";
    }
}

- (NSString *)reviewsByReviewerOrder
{    
    return self->reviewsByReviewer.order;
}

- (void)setReviewsByReviewerOrder:(NSString *)order
{
    if (order == @"BY TITLE") {
        self->reviewsByReviewer.order = @"by-title";
    } else if (order == @"BY PUBLICATION DATE") {
        self->reviewsByReviewer.order = @"by-publication-date";
    } else if (order == @"BY OPENING DATE") {
        self->reviewsByReviewer.order = @"by-opening-date";
    } else if (order == @"BY DVD RELEASE DATE") {
        self->reviewsByReviewer.order = @"by-dvd-release-date";
    }
}

- (NSString *)reviewsByReviewerApiKey
{
    return self->reviewsByReviewer.apiKey;
}

- (void)setReviewsByReviewerApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->reviewsByReviewer.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark ReviewerDetails

- (NSString *)reviewerDetailsResourceType
{
    return self->reviewerDetails.resourceType;
}

- (void)setReviewerDetailsResourceType:(NSString *)resourceType
{
    if (resourceType == @"ALL") {
        self->reviewerDetails.resourceType = @"all";
    } else if (resourceType == @"FULL TIME") {
        self->reviewerDetails.resourceType = @"full-time";
    } else if (resourceType == @"PART TIME") {
        self->reviewerDetails.resourceType = @"part-time";
    } else if (resourceType == @"REVIEWER") {
        self->reviewerDetails.resourceType = @"reviewer";
    } else {
        self->reviewerDetails.resourceType = resourceType;
    }
}

- (NSString *)reviewerDetailsFormat
{
    return self->reviewerDetails.format;
}

- (void)setReviewerDetailsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->reviewerDetails.format = @"xml";
    } else if (format == @"JSON") {
        self->reviewerDetails.format = @"json";
    }
}

- (NSString *)reviewerDetailsApiKey
{
    return self->reviewerDetails.apiKey;
}

- (void)setReviewerDetailsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->reviewerDetails.apiKey = apiKey;
    }
}

@end

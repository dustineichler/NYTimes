//
//  _MovieReviews.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/6/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

struct _ReviewsByKeyword {
    NSString *query;
    NSString *criticsPick;
    NSString *thousandBest;
    NSString *dvd;
    NSString *reviewer;
    NSString *publicationDate;
    NSString *openingDate;
    NSString *offSet;
    NSString *order;
    NSString *format;
    NSString *apiKey;
};
typedef struct _ReviewsByKeyword reviewsByKeyWord;

struct _ReviewsAndNYTCriticsPicks {
    NSString *resourceType;
    NSString *offSet;
    NSString *order;
    NSString *format;
    NSString *apiKey;
};
typedef struct _ReviewsAndNYTCriticsPicks reviewsAndNYTCriticsPicks;

struct _ReviewsByReviewer {
    NSString *reviewerName;
    NSString *criticsPick;
    NSString *offSet;
    NSString *order;
    NSString *format;
    NSString *apiKey;
};
typedef struct _ReviewsByReviewer reviewsByReviewer;

struct _ReviewerDetails {
    NSString *resourceType;
    NSString *format;
    NSString *apiKey;
};
typedef struct _ReviewerDetails reviewerDetails;

@interface _MovieReviews : NSObject
{
    struct _ReviewsByKeyword reviewsByKeyWord;
    struct _ReviewsAndNYTCriticsPicks reviewsAndNYTCriticsPicks;
    struct _ReviewsByReviewer reviewsByReviewer;
    struct _ReviewerDetails reviewerDetails;
}

@property struct _ReviewsByKeyword reviewsByKeyWord;
@property struct _ReviewsAndNYTCriticsPicks reviewsAndNYTCriticsPicks;
@property struct _ReviewsByReviewer reviewsByReviewer;
@property struct _ReviewerDetails reviewerDetails;

#pragma mark -
#pragma mark ReviewsByKeyword

- (NSString *)reviewsByKeyWordQuery;
- (void)setReviewsByKeyWordQuery:(NSString *)query;
- (NSString *)reviewsByKeyWordCriticsPick;
- (void)setReviewsByKeyWordCriticsPick:(NSString *)criticsPick;
- (NSString *)reviewsByKeyWordThousandBest;
- (void)setReviewsByKeyWordThousandBest:(NSString *)thousandBest;
- (NSString *)reviewsByKeyWordDvd;
- (void)setReviewsByKeyWordDvd:(NSString *)dvd;
- (NSString *)reviewsByKeyWordReviewer;
- (void)setReviewsByKeyWordReviewer:(NSString *)reviewer;
- (NSString *)reviewsByKeyWordPublicationDate;
- (void)setReviewsByKeyWordPublicationDate:(NSString *)publicationDate;
- (NSString *)reviewsByKeyWordOpeningDate;
- (void)setReviewsByKeyWordOpeningDate:(NSString *)openingDate;
- (NSString *)reviewsByKeyWordOffSet;
- (void)setReviewsByKeyWordOffSet:(NSString *)offSet;
- (NSString *)reviewsByKeyWordOrder;
- (void)setReviewsByKeyWordOrder:(NSString *)order;
- (NSString *)reviewsByKeyWordFormat;
- (void)setReviewsByKeyWordFormat:(NSString *)format;
- (NSString *)reviewsByKeyWordApiKey;
- (void)setReviewsByKeyWordApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark ReviewsAndNYTCriticsPicks

- (NSString *)reviewsAndNYTCriticsPicksResourceType;
- (void)setReviewsAndNYTCriticsPicksResourceType:(NSString *)resourceType;
- (NSString *)reviewsAndNYTCriticsPicksOffSet;
- (void)setReviewsAndNYTCriticsPicksOffSet:(NSString *)offSet;
- (NSString *)reviewsAndNYTCriticsPicksOrder;
- (void)setReviewsAndNYTCriticsPicksOrder:(NSString *)order;
- (NSString *)reviewsAndNYTCriticsPicksFormat;
- (void)setReviewsAndNYTCriticsPicksFormat:(NSString *)format;
- (NSString *)reviewsAndNYTCriticsPicksApiKey;
- (void)setReviewsAndNYTCriticsPicksApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark ReviewsByReviewer

- (NSString *)reviewsByReviewerReviewerName;
- (void)setReviewsByReviewerReviewerName:(NSString *)reviewerName;
- (NSString *)reviewsByReviewerCriticsPick;
- (void)setReviewsByReviewerCriticsPick:(NSString *)criticsPick;
- (NSString *)reviewsByReviewerOffSet;
- (void)setReviewsByReviewerOffSet:(NSString *)offSet;
- (NSString *)reviewsByReviewerOrder;
- (void)setReviewsByReviewerOrder:(NSString *)order;
- (NSString *)reviewsByReviewerFormat;
- (void)setReviewsByReviewerFormat:(NSString *)format;
- (NSString *)reviewsByReviewerApiKey;
- (void)setReviewsByReviewerApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark ReviewerDetails

- (NSString *)reviewerDetailsResourceType;
- (void)setReviewerDetailsResourceType:(NSString *)resourceType;
- (NSString *)reviewerDetailsFormat;
- (void)setReviewerDetailsFormat:(NSString *)format;
- (NSString *)reviewerDetailsApiKey;
- (void)setReviewerDetailsApiKey:(NSString *)apiKey;

@end

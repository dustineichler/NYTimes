//
//  _NewsWire.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/9/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

struct _RecentNews {
    NSString *source;
    NSString *section;
    NSString *timePeriod;
    NSString *limit;
    NSString *offSet;
    NSString *format;
    NSString *apiKey;
};
typedef struct _RecentNews recentNews;

struct _SpecificNewsItems {
    NSString *url;
    NSString *format;
    NSString *apiKey;
};
typedef struct _SpecificNewsItems specificNewsItems;

@interface _NewsWire : NSObject
{
    struct _RecentNews recentNews;
    struct _SpecificNewsItems specificNewsItems;
}

@property struct _RecentNews recentNews;
@property struct _SpecificNewsItems specificNewsItems;

#pragma mark -
#pragma mark RecentNews

- (NSString *)recentNewsSource;
- (void)setRecentNewsSource:(NSString *)source;
- (NSString *)recentNewsSection;
- (void)setRecentNewsSection:(NSString *)section;
- (NSString *)recentNewsTimePeriod;
- (void)setRecentNewsTimePeriod:(NSString *)timePeriod;
- (NSString *)recentNewsLimit;
- (void)setRecentNewsLimit:(NSString *)limit;
- (NSString *)recentNewsOffSet;
- (void)setRecentNewsOffSet:(NSString *)offSet;
- (NSString *)recentNewsFormat;
- (void)setRecentNewsFormat:(NSString *)format;
- (NSString *)recentNewsApiKey;
- (void)setRecentNewsApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark SpecificNewsItems

- (NSString *)specificNewsItemsUrl;
- (void)setSpecificNewsItemsUrl:(NSString *)url;
- (NSString *)specificNewsItemsFormat;
- (void)setSpecificNewsItemsFormat:(NSString *)format;
- (NSString *)specificNewsItemsApiKey;
- (void)setSpecificNewsItemsApiKey:(NSString *)apiKey;

@end

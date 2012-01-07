//
//  _MostPopular.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/6/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

struct _Base {
    NSString *resourceType;
    NSString *section;
    NSString *timePeriod;
    NSString *shareTypes;
    NSString *offSet;
    NSString *format;
    NSString *apiKey;
};
typedef struct _Base base;

@interface _MostPopular : NSObject
{
    struct _Base base;
}

@property struct _Base base;

- (NSString *)baseResourceType;
- (void)setBaseResourceType:(NSString *)resourceType;
- (NSString *)baseSection;
- (void)setBaseSection:(NSString *)section;
- (NSString *)baseTimePeriod;
- (void)setBaseTimePeriod:(NSString *)timePeriod;
- (NSString *)baseShareTypes;
- (void)setBaseShareTypes:(NSString *)shareTypes;
- (NSString *)baseOffSet;
- (void)setBaseOffSet:(NSString *)offSet;
- (NSString *)baseFormat;
- (void)setBaseFormat:(NSString *)format;
- (NSString *)baseApiKey;
- (void)setBaseApiKey:(NSString *)apiKey;

@end

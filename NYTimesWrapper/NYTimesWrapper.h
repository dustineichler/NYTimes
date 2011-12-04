//
//  NYTimesWrapper.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/2/11.
//  Copyright (c) 2011. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NYTimesWrapper : NSObject
{
    NSString *format;
    NSString *query;
    NSString *facets;
    NSString *beingDate;
    NSString *endDate;
    NSString *fields;
    NSString *offset;
    NSString *rank;
    NSString *apiKey;
}

@property (nonatomic, retain) NSString *format;
@property (nonatomic, retain) NSString *query;
@property (nonatomic, retain) NSString *facets;
@property (nonatomic, retain) NSString *beginDate;
@property (nonatomic, retain) NSString *endDate;
@property (nonatomic, retain) NSString *fields;
@property (nonatomic, retain) NSString *offset;
@property (nonatomic, retain) NSString *rank;
@property (nonatomic, retain) NSString *apiKey;

- (id)initWithAPIKey:(NSString *)key;

@end

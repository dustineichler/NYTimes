//
//  NYTimesWrapper.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/2/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesWrapper.h"

@implementation NYTimesWrapper
@synthesize format, query, facets, beginDate, endDate, fields, offset, rank, apiKey;

- (id)initWithAPIKey:(NSString *)key
{
    self = [super init];
    if (self == nil)
    {
        return nil;
    }
    
    NSParameterAssert(key != nil || [key length] == 0);
    
    self.apiKey = key;
    
    return self;
}

@end

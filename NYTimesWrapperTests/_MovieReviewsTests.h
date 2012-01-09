//
//  _MovieReviewsTests.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/6/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "NYTimesWrapper.h"

@interface _MovieReviewsTests : SenTestCase
{
    NYTimesWrapper *articles;
}

@property (nonatomic, retain) NYTimesWrapper *articles;

@end

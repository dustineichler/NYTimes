//
//  _RealEstateTests.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/8/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "NYTimesWrapper.h"

@interface _RealEstateTests : SenTestCase
{
    NYTimesWrapper *articles;
}

@property (nonatomic, retain) NYTimesWrapper *articles;

@end

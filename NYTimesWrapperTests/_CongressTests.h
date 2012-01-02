//
//  _CongressTests.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/1/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "NYTimesWrapper.h"

@interface _CongressTests : SenTestCase
{
    NYTimesWrapper *articles;
}

@property (nonatomic, retain) NYTimesWrapper *articles;

@end

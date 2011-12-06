//
//  NYTimesWrapperTests.h
//  NYTimesWrapperTests
//
//  Created by Dustin Eichler on 12/2/11.
//  Copyright (c) 2011. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "NYTimesWrapper.h"
#import "NYTimesArticle.h"
#import "NYTimesBestSeller.h"

@interface NYTimesWrapperTests : SenTestCase
{
    NYTimesWrapper *articles;
    NYTimesWrapper *bestSellers;
    NSURL *globalURL;
    NSData *receivedData;
}

@property (nonatomic, retain) NYTimesWrapper *articles;
@property (nonatomic, retain) NYTimesWrapper *bestSellers;
@property (nonatomic, retain) NSURL *globalURL;
@property (nonatomic, retain) NSData *receivedData;

@end

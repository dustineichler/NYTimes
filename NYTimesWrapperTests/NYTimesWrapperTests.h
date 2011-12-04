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

@interface NYTimesWrapperTests : SenTestCase
{
    NYTimesWrapper *nytimes;
    NSURL *globalURL;
    NSData *receivedData;
}

@property (nonatomic, retain) NYTimesWrapper *nytimes;
@property (nonatomic, retain) NSURL *globalURL;
@property (nonatomic, retain) NSData *receivedData;

@end

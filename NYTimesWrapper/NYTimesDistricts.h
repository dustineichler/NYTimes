//
//  NYTimesDistricts.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "NYTimesWrapperBase.h"

@interface NYTimesDistricts : NYTimesWrapperBase
{
    NSString *tag;
}
@property (nonatomic, retain) NSString *tag;

+ (void)asyncRequest:(NSObject *)obj 
             success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
             failure:(NYTImesErrorBlock)failureBlock_ 
                 tag:(NSString *)t;
@end

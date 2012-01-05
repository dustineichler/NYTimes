//
//  _Districts.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/4/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

struct _MainRequest {
    NSString *lat;
    NSString *lng;
    
    NSString *apiKey;
    NSString *format;
};
typedef struct _MainRequest mainRequest;

@interface _Districts : NSObject
{
    struct _MainRequest mainRequest;
}

@property struct _MainRequest mainRequest;

- (NSString *)mainRequestLat;
- (void)setMainRequestLat:(NSString *)lat;
- (NSString *)mainRequestLng;
- (void)setMainRequestLng:(NSString *)lng;
- (NSString *)mainRequestApiKey;
- (void)setMainRequestApiKey:(NSString *)apiKey;
- (NSString *)mainRequestFormat;
- (void)setMainRequestFormat:(NSString *)format;

@end

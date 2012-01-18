//
//  NYTimesRealEstate.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/8/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "NYTimesRealEstate.h"

#define SERVER_URL @"http://api.nytimes.com/svc/real-estate/v2/"

@implementation NYTimesRealEstate
@synthesize tag;

+ (void)asyncRequest:(NSObject *)obj 
             success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
             failure:(NYTImesErrorBlock)failureBlock_ 
                 tag:(NSString *)t
{
    [super asyncRequest:obj 
                success:(NYTimesNSURLConnectionSuccessBlock)successBlock_ 
                failure:(NYTImesErrorBlock)failureBlock_];
}

+ (NSString *)buildURLwithObj:(NYTimesWrapper *)obj
{
    NSMutableString *params = [NSMutableString stringWithFormat:@"%@", @""];
    
    if (obj.realEstate.listingsPercentilesApiKey && obj.realEstate.listingsPercentilesDateRange 
        && obj.realEstate.listingsPercentilesGeoExtentLevel && obj.realEstate.listingsPercentilesGeoExtentValue 
        && obj.realEstate.listingsPercentilesPercentValues)
    {
        if (obj.realEstate.listingsPercentilesPercentValues)
        {
            [params appendFormat:@"listings/percentile/%@", obj.realEstate.listingsPercentilesPercentValues];
        }
        
        if (obj.realEstate.listingsPercentilesFormat)
        {
            [params appendFormat:@".%@?", obj.realEstate.listingsPercentilesFormat];
        }
        
        if (obj.realEstate.listingsPercentilesDateRange)
        {
            [params appendFormat:@"&date-range=%@", obj.realEstate.listingsPercentilesDateRange];
        }
        
        if (obj.realEstate.listingsPercentilesGeoExtentLevel)
        {
            [params appendFormat:@"&geo-extent-level=%@", obj.realEstate.listingsPercentilesGeoExtentLevel];
        }
        
        if (obj.realEstate.listingsPercentilesGeoExtentValue)
        {
            [params appendFormat:@"&geo-extent-value=%@", obj.realEstate.listingsPercentilesGeoExtentValue];
        }
        
        if (obj.realEstate.listingsPercentilesBedrooms)
        {
            [params appendFormat:@"&bedrooms=%@", obj.realEstate.listingsPercentilesBedrooms];
        }
        
        if (obj.realEstate.listingsPercentilesBuildingTypeId)
        {
            [params appendFormat:@"&building-type-id=%@", obj.realEstate.listingsPercentilesBuildingTypeId];
        }
        
        if (obj.realEstate.listingsPercentilesApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.realEstate.listingsPercentilesApiKey];
        }
    }
    
    if (obj.realEstate.listingsCountsDateRange && obj.realEstate.listingsCountsGeoExtentLevel 
        && obj.realEstate.listingsCountsGeoExtentValue && obj.realEstate.listingsCountsGeoSummaryLevel)
    {
        if (obj.realEstate.listingsCountsFormat)
        {
            [params appendFormat:@"listings/count.%@?", obj.realEstate.listingsCountsFormat];
        }
        
        if (obj.realEstate.listingsCountsDateRange)
        {
            [params appendFormat:@"&date-range=%@", obj.realEstate.listingsCountsDateRange];
        }
        
        if (obj.realEstate.listingsCountsGeoExtentLevel)
        {
            [params appendFormat:@"&geo-extent-level=%@", obj.realEstate.listingsCountsGeoExtentLevel];
        }
        
        if (obj.realEstate.listingsCountsGeoExtentValue)
        {
            [params appendFormat:@"&geo-extent-value=%@", obj.realEstate.listingsCountsGeoExtentValue];
        }
        
        if (obj.realEstate.listingsCountsGeoSummaryLevel)
        {
            [params appendFormat:@"&geo-summary-level=%@", obj.realEstate.listingsCountsGeoSummaryLevel];
        }
        
        if (obj.realEstate.listingsCountsBedrooms)
        {
            [params appendFormat:@"&bedrooms=%@", obj.realEstate.listingsCountsBedrooms];
        }
        
        if (obj.realEstate.listingsCountsBuildingBuiltYear)
        {
            [params appendFormat:@"&building-built-year=%@", obj.realEstate.listingsCountsBuildingBuiltYear];
        }
        
        if (obj.realEstate.listingsCountsBuildingTypeId)
        {
            [params appendFormat:@"&building-type-id=%@", obj.realEstate.listingsCountsBuildingTypeId];
        }
        
        if (obj.realEstate.listingsCountsLoft)
        {
            [params appendFormat:@"&loft=%@", obj.realEstate.listingsCountsLoft];
        }
        
        if (obj.realEstate.listingsCountsApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.realEstate.listingsCountsApiKey];
        }
    }
    
    if (obj.realEstate.salesPercentilesApiKey && obj.realEstate.salesPercentilesPercentileValue 
        && obj.realEstate.salesPercentilesDateRange && obj.realEstate.salesPercentilesGeoExtentLevel 
        && obj.realEstate.salesPercentilesGeoExtentValue) 
    {
        if (obj.realEstate.salesPercentilesPercentileValue)
        {
            [params appendFormat:@"sales/percentile/%@", obj.realEstate.salesPercentilesGeoExtentValue];
        }
        
        if (obj.realEstate.salesPercentilesFormat)
        {
            [params appendFormat:@".%@?", obj.realEstate.salesPercentilesFormat];
        }
        
        if (obj.realEstate.salesPercentilesDateRange)
        {
            [params appendFormat:@"&date-range=%@", obj.realEstate.salesPercentilesDateRange];
        }
        
        if (obj.realEstate.salesPercentilesGeoExtentLevel)
        {
            [params appendFormat:@"&geo-extent-level=%@", obj.realEstate.salesPercentilesGeoExtentLevel];
        }
        
        if (obj.realEstate.salesPercentilesGeoExtentValue)
        {
            [params appendFormat:@"&geo-extent-value=%@", obj.realEstate.salesPercentilesGeoExtentValue];
        }
        
        if (obj.realEstate.salesPercentilesBuildingTypeId)
        {
            [params appendFormat:@"&building-type-id=%@", obj.realEstate.salesPercentilesBuildingTypeId];
        }
        
        if (obj.realEstate.salesPercentilesApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.realEstate.salesPercentilesApiKey];
        }
    }
    
    if (obj.realEstate.salesCountsApiKey && obj.realEstate.salesCountsDateRange 
        && obj.realEstate.salesCountsGeoExtentLevel && obj.realEstate.salesCountsGeoExtentValue 
        && obj.realEstate.salesCountsGeoSummaryLevel) 
    {
        if (obj.realEstate.salesCountsFormat)
        {
            [params appendFormat:@"sales/count.%@?", obj.realEstate.salesCountsFormat];
        }
        
        if (obj.realEstate.salesCountsDateRange)
        {
            [params appendFormat:@"&date-range=%@", obj.realEstate.salesCountsDateRange];
        }
        
        if (obj.realEstate.salesCountsGeoExtentLevel)
        {
            [params appendFormat:@"&geo-extent-level=%@", obj.realEstate.salesCountsGeoExtentLevel];
        }
        
        if (obj.realEstate.salesCountsGeoExtentValue)
        {
            [params appendFormat:@"&geo-extent-value=%@", obj.realEstate.salesCountsGeoExtentValue];
        }
        
        if (obj.realEstate.salesCountsGeoSummaryLevel)
        {
            [params appendFormat:@"&geo-summary-level=%@", obj.realEstate.salesCountsGeoSummaryLevel];
        }
        
        if (obj.realEstate.salesCountsBuildingBuiltYear)
        {
            [params appendFormat:@"&building-built-year=%@", obj.realEstate.salesCountsBuildingBuiltYear];
        }
        
        if (obj.realEstate.salesCountsBuildingTypeId)
        {
            [params appendFormat:@"&building-type-id=%@", obj.realEstate.salesCountsBuildingTypeId];
        }
        
        if (obj.realEstate.salesCountsApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.realEstate.salesCountsApiKey];
        }
    }
    
    return [NSString stringWithFormat:@"%@%@", SERVER_URL, params];
}

@end

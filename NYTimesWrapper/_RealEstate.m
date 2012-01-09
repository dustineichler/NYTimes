//
//  _RealEstate.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/8/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_RealEstate.h"

@implementation _RealEstate
@synthesize listingsPercentiles, listingsCounts, salesPercentiles, salesCount;

#pragma mark -
#pragma mark ListingsPercentiles

- (NSString *)listingsPercentilesDateRange
{
    return self->listingsPercentiles.dateRange;
}

- (void)setListingsPercentilesDateRange:(NSString *)dateRange
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *_dateRange = [formatter dateFromString:dateRange];
    
    NSString *result = [formatter stringFromDate:_dateRange];
    
    if (result)
    {
        self->listingsPercentiles.dateRange = result;
    }
}

- (NSString *)listingsPercentilesGeoExtentLevel
{
    return self->listingsPercentiles.geoExtentLevel;
}

- (void)setListingsPercentilesGeoExtentLevel:(NSString *)geoExtentLevel
{
    if (geoExtentLevel == @"BOROUGH") {
        self->listingsPercentiles.geoExtentLevel = @"borough";
    } else if (geoExtentLevel == @"NEIGHBORHOOD") {
        self->listingsPercentiles.geoExtentLevel = @"neighborhood";    
    } else if (geoExtentLevel == @"ZIP") {
        self->listingsPercentiles.geoExtentLevel = @"zip";
    }
}

- (NSString *)listingsPercentilesGeoExtentValue
{
    return self->listingsPercentiles.geoExtentValue;
}

- (void)setListingsPercentilesGeoExtentValue:(NSString *)geoExtentValue
{
    if (geoExtentValue && [geoExtentValue length] > 0)
    {
        self->listingsPercentiles.geoExtentValue = geoExtentValue;
    }
}

- (NSString *)listingsPercentilesGeoSummaryLevel
{
    return self->listingsPercentiles.geoSummaryLevel;
}

- (void)setListingsPercentilesGeoSummaryLevel:(NSString *)geoSummaryLevel
{
    if (geoSummaryLevel == @"BOROUGH") {
        self->listingsPercentiles.geoSummaryLevel = @"borough";
    } else if (geoSummaryLevel == @"NEIGHBORHOOD") {
        self->listingsPercentiles.geoSummaryLevel = @"neighborhood";    
    } else if (geoSummaryLevel == @"ZIP") {
        self->listingsPercentiles.geoSummaryLevel = @"zip";
    }
}

- (NSString *)listingsPercentilesPercentValues
{
    return self->listingsPercentiles.percentileValue;
}

- (void)setListingsPercentilesPercentValues:(NSString *)percentValues
{
    self->listingsPercentiles.percentileValue = percentValues;
}

- (NSString *)listingsPercentilesBedrooms
{
    return self->listingsPercentiles.bedrooms;
}

- (void)setListingsPercentilesBedrooms:(NSString *)bedrooms
{
    int _bedrooms = [bedrooms intValue];
    
    if (_bedrooms > 0)
    {
        self->listingsPercentiles.bedrooms = bedrooms;
    }
}

- (NSString *)listingsPercentilesBuildingBuiltYear
{
    return self->listingsPercentiles.buildingBuiltYear;
}

- (void)setListingsPercentilesBuildingBuiltYear:(NSString *)buildingBuiltYear
{
    if (buildingBuiltYear && [buildingBuiltYear length] > 0)
    {
        self->listingsPercentiles.buildingBuiltYear = buildingBuiltYear;
    }
}

- (NSString *)listingsPercentilesBuildingTypeId
{
    return self->listingsPercentiles.buildingTypeId;
}

- (void)setListingsPercentilesBuildingTypeId:(NSString *)buildingTypeId
{
    if (buildingTypeId && [buildingTypeId length] > 0)
    {
        self->listingsPercentiles.buildingTypeId = buildingTypeId;
    }
}

- (NSString *)listingsPercentilesLoft
{
    return self->listingsPercentiles.loft;
}

- (void)setListingsPercentilesLoft:(NSString *)loft
{
    if (loft == @"YES") {
        self->listingsPercentiles.loft = @"Y";
    } else if (loft == @"NO") {
        self->listingsPercentiles.loft = @"N";
    }
}

- (NSString *)listingsPercentilesFormat
{
    return self->listingsPercentiles.format;
}

- (void)setListingsPercentilesFormat:(NSString *)format
{
    if (format == @"XML") {
        self->listingsPercentiles.format = @"xml";
    } else if (format == @"JSON") {
        self->listingsPercentiles.format = @"json";
    }
}

- (NSString *)listingsPercentilesApiKey
{
    return self->listingsPercentiles.apiKey;
}

- (void)setListingsPercentilesApiKey:(NSString *)apiKey
{
    self->listingsPercentiles.apiKey = apiKey;
}

#pragma mark -
#pragma mark ListingsCounts

- (NSString *)listingsCountsDateRange
{
    return self->listingsCounts.dateRange;
}

- (void)setListingsCountsDateRange:(NSString *)dateRange
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *_dateRange = [formatter dateFromString:dateRange];
    
    NSString *result = [formatter stringFromDate:_dateRange];
    
    if (result)
    {
        self->listingsCounts.dateRange = result;
    }
}

- (NSString *)listingsCountsGeoExtentLevel
{
    return self->listingsCounts.geoExtentLevel;
}

- (void)setListingsCountsGeoExtentLevel:(NSString *)geoExtentLevel
{
    if (geoExtentLevel == @"BOROUGH") {
        self->listingsCounts.geoExtentLevel = @"borough";
    } else if (geoExtentLevel == @"NEIGHBORHOOD") {
        self->listingsCounts.geoExtentLevel = @"neighborhood";    
    } else if (geoExtentLevel == @"ZIP") {
        self->listingsCounts.geoExtentLevel = @"zip";
    }
}

- (NSString *)listingsCountsGeoExtentValue
{
    return self->listingsCounts.geoExtentValue;
}

- (void)setListingsCountsGeoExtentValue:(NSString *)geoExtentValue
{
    self->listingsCounts.geoExtentValue = geoExtentValue;
}

- (NSString *)listingsCountsGeoSummaryLevel
{
    return self->listingsCounts.geoSummaryLevel;
}

- (void)setListingsCountsGeoSummaryLevel:(NSString *)geoSummaryLevel
{
    if (geoSummaryLevel == @"BOROUGH") {
        self->listingsCounts.geoSummaryLevel = @"borough";
    } else if (geoSummaryLevel == @"NEIGHBORHOOD") {
        self->listingsCounts.geoSummaryLevel = @"neighborhood";
    } else if (geoSummaryLevel == @"ZIP") {
        self->listingsCounts.geoSummaryLevel = @"zip";
    }
}

- (NSString *)listingsCountsBedrooms
{
    return self->listingsCounts.bedrooms;
}

- (void)setListingsCountsBedrooms:(NSString *)bedrooms
{
    int _bedrooms = [bedrooms intValue];
    
    if (_bedrooms > 0)
    {
        self->listingsCounts.bedrooms = bedrooms;
    }
}

- (NSString *)listingsCountsBuildingBuiltYear
{
    return self->listingsCounts.buildingBuiltYear;
}

- (void)setListingsCountsBuildingBuiltYear:(NSString *)buildingBuiltYear
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyy"];
    
    NSDate *_buildingBuiltYear = [formatter dateFromString:buildingBuiltYear];
    
    NSString *result = [formatter stringFromDate:_buildingBuiltYear];
    
    if (result)
    {
        self->listingsCounts.buildingBuiltYear = result;
    }
}

- (NSString *)listingsCountsBuildingTypeId
{
    return self->listingsCounts.buildingTypeId;
}

- (void)setListingsCountsBuildingTypeId:(NSString *)buildingTypeId
{
    int _buildingTypeId = [buildingTypeId intValue];
    
    if (_buildingTypeId > 0)
    {
        self->listingsCounts.buildingTypeId = buildingTypeId;
    }
}

- (NSString *)listingsCountsLoft
{
    return self->listingsCounts.loft;
}

- (void)setListingsCountsLoft:(NSString *)loft
{
    if (loft == @"YES") {
        self->listingsCounts.loft = @"Y";
    } else if (loft == @"NO") {
        self->listingsCounts.loft = @"N";
    }
}

- (NSString *)listingsCountsFormat
{
    return self->listingsCounts.format;
}

- (void)setListingsCountsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->listingsCounts.format = @"xml";
    } else if (format == @"JSON") {
        self->listingsCounts.format = @"json";
    }
}

- (NSString *)listingsCountsApiKey
{
    return self->listingsCounts.apiKey;
}

- (void)setListingsCountsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->listingsCounts.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark SalesPercentiles

- (NSString *)salesPercentilesGeoExtentLevel
{
    return self->salesPercentiles.geoExtentLevel;
}

- (void)setSalesPercentilesGeoExtentLevel:(NSString *)geoExtentLevel
{
    if (geoExtentLevel == @"BOROUGH") {
        self->salesPercentiles.geoExtentLevel = @"borough";
    } else if (geoExtentLevel == @"NEIGHBORHOOD") {
        self->salesPercentiles.geoExtentLevel = @"neighborhood";
    } else if (geoExtentLevel == @"ZIP") {
        self->salesPercentiles.geoExtentLevel = @"zip";
    }
}

- (NSString *)salesPercentilesGeoExtentValue
{
    return self->salesPercentiles.geoExtentValue;
}

- (void)setSalesPercentilesGeoExtentValue:(NSString *)geoExtentValue
{
    if (geoExtentValue && [geoExtentValue length] > 0)
    {
        self->salesPercentiles.geoExtentValue = geoExtentValue;
    }
}

- (NSString *)salesPercentilesPercentileValue
{
    return self->salesPercentiles.percentileValue;
}

- (void)setSalesPercentilesPercentileValue:(NSString *)percentileValue
{
    int _percentileValue = [percentileValue intValue];
    
    if (_percentileValue > 0)
    {
        self->salesPercentiles.percentileValue = percentileValue;
    }
}

- (NSString *)salesPercentilesBuildingTypeId
{
    return self->salesPercentiles.buildingTypeId;
}

- (void)setSalesPercentilesBuildingTypeId:(NSString *)buildingTypeId
{
    int _buildingTypeId = [buildingTypeId intValue];
    
    if (_buildingTypeId > 0)
    {
        self->salesPercentiles.buildingTypeId = buildingTypeId;
    }
}

- (NSString *)salesPercentilesDateRange
{
    return self->salesPercentiles.dateRange;
}

- (void)setSalesPercentilesDateRange:(NSString *)dateRange
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *_dateRange = [formatter dateFromString:dateRange];
    
    NSString *result = [formatter stringFromDate:_dateRange];
    
    if (result)
    {
        self->salesPercentiles.dateRange = result;
    }
}

- (NSString *)salesPercentilesFormat
{
    return self->salesPercentiles.format;
}

- (void)setSalesPercentilesFormat:(NSString *)format
{
    if (format == @"XML") {
        self->salesPercentiles.format = @"xml";
    } else if (format == @"JSON") {
        self->salesPercentiles.format = @"json";
    }
}

- (NSString *)salesPercentilesApiKey
{
    return self->salesPercentiles.apiKey;
}

- (void)setSalesPercentilesApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->salesPercentiles.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark SalesCounts

- (NSString *)salesCountsDateRange
{
    return self->salesCount.dateRange;
}

- (void)setSalesCountsDateRange:(NSString *)dateRange
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *_dateRange = [formatter dateFromString:dateRange];
    
    NSString *result = [formatter stringFromDate:_dateRange];
    
    if (result)
    {
        self->salesCount.dateRange = result;
    }
}

- (NSString *)salesCountsGeoExtentLevel
{
    return self->salesCount.geoExtentLevel;
}

- (void)setSalesCountsGeoExtentLevel:(NSString *)geoExtentLevel
{
    if (geoExtentLevel == @"BOROUGH") {
        self->salesCount.geoExtentLevel = @"borough";
    } else if (geoExtentLevel == @"NEIGHBORHOOD") {
        self->salesCount.geoExtentLevel = @"neighborhood";
    } else if (geoExtentLevel == @"ZIP") {
        self->salesCount.geoExtentLevel = @"zip";
    }
}

- (NSString *)salesCountsGeoExtentValue
{
    return self->salesCount.geoExtentValue;
}

- (void)setSalesCountGeoExtentValue:(NSString *)geoExtentValue
{
    if (geoExtentValue && [geoExtentValue length] > 0)
    {
        self->salesCount.geoExtentValue = geoExtentValue;
    }
}

- (NSString *)salesCountsGeoSummaryLevel
{
    return self->salesCount.geoSummaryLevel;
}

- (void)setSalesCountsGeoSummaryLevel:(NSString *)geoSummaryLevel
{
    if (geoSummaryLevel == @"BOROUGH") {
        self->salesCount.geoSummaryLevel = @"borough";
    } else if (geoSummaryLevel == @"NEIGHBORHOOD") {
        self->salesCount.geoSummaryLevel = @"neighborhood";
    } else if (geoSummaryLevel == @"ZIP") {
        self->salesCount.geoSummaryLevel = @"zip";
    }
}

- (NSString *)salesCountsBuildingBuiltYear
{
    return self->salesCount.buildingBuiltYear;
}

- (void)setSalesCountsBuildingBuiltYear:(NSString *)buildingBuiltYear
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyy"];
    
    NSDate *_buildingBuiltYear = [formatter dateFromString:buildingBuiltYear];
    
    NSString *result = [formatter stringFromDate:_buildingBuiltYear];
    
    if (result)
    {
        self->salesCount.buildingBuiltYear = result;
    }
}

- (NSString *)salesCountsBuildingTypeId
{
    return self->salesCount.buildingTypeId;
}
- (void)setSalesCountsBuildingTypeId:(NSString *)buildingTypeId
{
    int _buildingTypeId = [buildingTypeId intValue];
    
    if (_buildingTypeId > 0)
    {
        self->salesCount.buildingTypeId = buildingTypeId;
    }
}

- (NSString *)salesCountsFormat
{
    return self->salesCount.format;
}

- (void)setSalesCountsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->salesCount.format = @"xml";
    } else if (format == @"JSON") {
        self->salesCount.format = @"json";
    }
}

- (NSString *)salesCountsApiKey
{
    return self->salesCount.apiKey;
}

- (void)setSalesCountsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->salesCount.apiKey = apiKey;
    }
}

@end

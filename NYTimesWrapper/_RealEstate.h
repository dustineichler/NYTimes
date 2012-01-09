//
//  _RealEstate.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/8/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

struct _ListingsPercentiles {
    NSString *dateRange;
    NSString *geoExtentLevel;
    NSString *geoExtentValue;
    NSString *percentileValue;
    NSString *geoSummaryLevel;
    NSString *buildingBuiltYear;
    NSString *loft;
    NSString *bedrooms;
    NSString *buildingTypeId;
    NSString *format;
    NSString *apiKey;
};
typedef struct _ListingsPercentiles listingsPercentiles;

struct _ListingsCounts {
    NSString *dateRange;
    NSString *geoExtentLevel;
    NSString *geoExtentValue;
    NSString *geoSummaryLevel;
    NSString *bedrooms;
    NSString *buildingBuiltYear;
    NSString *buildingTypeId;
    NSString *loft;
    NSString *format;
    NSString *apiKey;
};
typedef struct _ListingsCounts listingsCounts;

struct _SalesPercentiles {
    NSString *geoExtentLevel;
    NSString *geoExtentValue;
    NSString *percentileValue;
    NSString *buildingTypeId;
    NSString *dateRange;
    NSString *format;
    NSString *apiKey;
};
typedef struct _SalesPercentiles salesPercentiles;

struct _SalesCounts {
    NSString *dateRange;
    NSString *geoExtentLevel;
    NSString *geoExtentValue;
    NSString *geoSummaryLevel;
    NSString *buildingBuiltYear;
    NSString *buildingTypeId;
    NSString *format;
    NSString *apiKey;
};
typedef struct _SalesCounts salesCount;

@interface _RealEstate : NSObject
{
    struct _ListingsPercentiles listingsPercentiles;
    struct _ListingsCounts listingsCounts;
    struct _SalesPercentiles salesPercentiles;
    struct _SalesCounts salesCount;
}

@property struct _ListingsPercentiles listingsPercentiles;
@property struct _ListingsCounts listingsCounts;
@property struct _SalesPercentiles salesPercentiles;
@property struct _SalesCounts salesCount;

#pragma mark -
#pragma mark ListingsPercentiles

- (NSString *)listingsPercentilesDateRange;
- (void)setListingsPercentilesDateRange:(NSString *)dateRange;
- (NSString *)listingsPercentilesGeoExtentLevel;
- (void)setListingsPercentilesGeoExtentLevel:(NSString *)geoExtentLevel;
- (NSString *)listingsPercentilesGeoExtentValue;
- (void)setListingsPercentilesGeoExtentValue:(NSString *)geoExtentValue;
- (NSString *)listingsPercentilesGeoSummaryLevel;
- (void)setListingsPercentilesGeoSummaryLevel:(NSString *)geoSummaryLevel;
- (NSString *)listingsPercentilesPercentValues;
- (void)setListingsPercentilesPercentValues:(NSString *)percentValues;
- (NSString *)listingsPercentilesBedrooms;
- (void)setListingsPercentilesBedrooms:(NSString *)bedrooms;
- (NSString *)listingsPercentilesBuildingBuiltYear;
- (void)setListingsPercentilesBuildingBuiltYear:(NSString *)buildingBuiltYear;
- (NSString *)listingsPercentilesBuildingTypeId;
- (void)setListingsPercentilesBuildingTypeId:(NSString *)buildingTypeId;
- (NSString *)listingsPercentilesLoft;
- (void)setListingsPercentilesLoft:(NSString *)loft;
- (NSString *)listingsPercentilesFormat;
- (void)setListingsPercentilesFormat:(NSString *)format;
- (NSString *)listingsPercentilesApiKey;
- (void)setListingsPercentilesApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark ListingsCounts

- (NSString *)listingsCountsDateRange;
- (void)setListingsCountsDateRange:(NSString *)dateRange;
- (NSString *)listingsCountsGeoExtentLevel;
- (void)setListingsCountsGeoExtentLevel:(NSString *)geoExtentLevel;
- (NSString *)listingsCountsGeoExtentValue;
- (void)setListingsCountsGeoExtentValue:(NSString *)geoExtentValue;
- (NSString *)listingsCountsGeoSummaryLevel;
- (void)setListingsCountsGeoSummaryLevel:(NSString *)geoSummaryLevel;
- (NSString *)listingsCountsBedrooms;
- (void)setListingsCountsBedrooms:(NSString *)bedrooms;
- (NSString *)listingsCountsBuildingBuiltYear;
- (void)setListingsCountsBuildingBuiltYear:(NSString *)buildingBuiltYear;
- (NSString *)listingsCountsBuildingTypeId;
- (void)setListingsCountsBuildingTypeId:(NSString *)buildingTypeId;
- (NSString *)listingsCountsLoft;
- (void)setListingsCountsLoft:(NSString *)loft;
- (NSString *)listingsCountsFormat;
- (void)setListingsCountsFormat:(NSString *)format;
- (NSString *)listingsCountsApiKey;
- (void)setListingsCountsApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark SalesPercentiles

- (NSString *)salesPercentilesGeoExtentLevel;
- (void)setSalesPercentilesGeoExtentLevel:(NSString *)geoExtentLevel;
- (NSString *)salesPercentilesGeoExtentValue;
- (void)setSalesPercentilesGeoExtentValue:(NSString *)geoExtentValue;
- (NSString *)salesPercentilesPercentileValue;
- (void)setSalesPercentilesPercentileValue:(NSString *)percentileValue;
- (NSString *)salesPercentilesBuildingTypeId;
- (void)setSalesPercentilesBuildingTypeId:(NSString *)buildingTypeId;
- (NSString *)salesPercentilesDateRange;
- (void)setSalesPercentilesDateRange:(NSString *)dateRange;
- (NSString *)salesPercentilesFormat;
- (void)setSalesPercentilesFormat:(NSString *)format;
- (NSString *)salesPercentilesApiKey;
- (void)setSalesPercentilesApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark SalesCounts

- (NSString *)salesCountsDateRange;
- (void)setSalesCountsDateRange:(NSString *)dateRange;
- (NSString *)salesCountsGeoExtentLevel;
- (void)setSalesCountsGeoExtentLevel:(NSString *)geoExtentLevel;
- (NSString *)salesCountsGeoExtentValue;
- (void)setSalesCountGeoExtentValue:(NSString *)geoExtentValue;
- (NSString *)salesCountsGeoSummaryLevel;
- (void)setSalesCountsGeoSummaryLevel:(NSString *)geoSummaryLevel;
- (NSString *)salesCountsBuildingBuiltYear;
- (void)setSalesCountsBuildingBuiltYear:(NSString *)buildingBuiltYear;
- (NSString *)salesCountsBuildingTypeId;
- (void)setSalesCountsBuildingTypeId:(NSString *)buildingTypeId;
- (NSString *)salesCountsFormat;
- (void)setSalesCountsFormat:(NSString *)format;
- (NSString *)salesCountsApiKey;
- (void)setSalesCountsApiKey:(NSString *)apiKey;

@end
//
//  _RealEstateTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/8/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_RealEstateTests.h"
#import <UIKit/UIKit.h>

@implementation _RealEstateTests
@synthesize articles;

- (void)setUp
{
    [super setUp];
    articles = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
}

- (void)testRealEstateListingsPercentiles
{
    [articles.realEstate setListingsPercentilesDateRange:@"2012-01-02"];
    NSString *listingsPercentilesDateRange = articles.realEstate.listingsPercentilesDateRange;
    STAssertEqualObjects(@"2012-01-02", listingsPercentilesDateRange, @"Should be either YYYY-MM-DD");
    
    [articles.realEstate setListingsPercentilesGeoExtentLevel:@"BOROUGH"];
    NSString *listingsPercentilesGeoExtentLevel = articles.realEstate.listingsPercentilesGeoExtentLevel;
    STAssertEqualObjects(@"borough", listingsPercentilesGeoExtentLevel, @"Should be (borough|neighborhood|zip)");
    
    [articles.realEstate setListingsPercentilesGeoExtentValue:@"NYC-Borough"];
    NSString *listingsPercentilesGeoExtentValue = articles.realEstate.listingsPercentilesGeoExtentValue;
    STAssertEqualObjects(@"NYC-Borough", listingsPercentilesGeoExtentValue, @"Should be string");
    
    [articles.realEstate setListingsPercentilesGeoSummaryLevel:@"ZIP"];
    NSString *listingsPercentilesGeoSummaryLevel = articles.realEstate.listingsPercentilesGeoSummaryLevel;
    STAssertEqualObjects(@"zip", listingsPercentilesGeoSummaryLevel, @"Should be either (borough|neighborhood|zip)");
    
    [articles.realEstate setListingsPercentilesLoft:@"YES"];
    NSString *listingsPercentilesLoft = articles.realEstate.listingsPercentilesLoft;
    STAssertEqualObjects(@"Y", listingsPercentilesLoft, @"Should be either YES or NO");
    
    [articles.realEstate setListingsPercentilesBedrooms:@"3"];
    NSString *listingsPercentilesBedrooms = articles.realEstate.listingsPercentilesBedrooms;
    STAssertEqualObjects(@"3", listingsPercentilesBedrooms, @"Should be positive integer");
    
    [articles.realEstate setListingsPercentilesBuildingTypeId:@"Condo"];
    NSString *listingsPercentilesBuildingTypeId = articles.realEstate.listingsPercentilesBuildingTypeId;
    STAssertEqualObjects(@"Condo", listingsPercentilesBuildingTypeId, @"Should limit the results to a type of building");
    
    [articles.realEstate setListingsPercentilesBuildingBuiltYear:@"1999"];
    NSString *listingsPercentilesBuildingBuiltYear = articles.realEstate.listingsPercentilesBuildingBuiltYear;
    STAssertEqualObjects(@"1999", listingsPercentilesBuildingBuiltYear, @"Should limit the results by the year the property was built");
    
    [articles.realEstate setListingsPercentilesFormat:@"JSON"];
    NSString *listingsPercentilesFormat = articles.realEstate.listingsPercentilesFormat;
    STAssertEqualObjects(@"json", listingsPercentilesFormat, @"Should be either JSON or XML");
}

//struct _ListingsCounts {
//    NSString *dateRange;
//    NSString *geoExtentLevel;
//    NSString *geoExtentValue;
//    NSString *geoSummaryLevel;
//    NSString *bedrooms;
//    NSString *buildingBuiltYear;
//    NSString *buildingTypeId;
//    NSString *loft;
//    NSString *format;
//    NSString *apiKey;
//};
//typedef struct _ListingsCounts listingsCounts;

- (void)testRealEstateListingsCounts
{
    [articles.realEstate setListingsCountsDateRange:@"2012-01-02"];
    NSString *listingsCountsDateRange = articles.realEstate.listingsCountsDateRange;
    STAssertEqualObjects(@"2012-01-02", listingsCountsDateRange, @"Should be valid date format");
    
    [articles.realEstate setListingsCountsGeoExtentLevel:@"BOROUGH"];
    NSString *listingsCountsGeoExtentLevel = articles.realEstate.listingsCountsGeoExtentLevel;
    STAssertEqualObjects(@"borough", listingsCountsGeoExtentLevel, @"Should be either (borough|neighborhood|zip)");
    
    [articles.realEstate setListingsCountsGeoExtentValue:@"NYC-Borough"];
    NSString *listingsCountsGeoExtentValue = articles.realEstate.listingsCountsGeoExtentValue;
    STAssertEqualObjects(@"NYC-Borough", listingsCountsGeoExtentValue, @"Should be string value");
    
    [articles.realEstate setListingsCountsGeoSummaryLevel:@"ZIP"];
    NSString *listingsCountsGeoSummaryLevel = articles.realEstate.listingsCountsGeoSummaryLevel;
    STAssertEqualObjects(@"zip", listingsCountsGeoSummaryLevel, @"Should be either (borough|neightborhood|zip)");
    
    [articles.realEstate setListingsCountsBedrooms:@"2"];
    NSString *listingsCountsBedrooms = articles.realEstate.listingsCountsBedrooms;
    STAssertEqualObjects(@"2", listingsCountsBedrooms, @"Should be positive interger");
    
    [articles.realEstate setListingsCountsBuildingBuiltYear:@"1999"];
    NSString *listingsCountsBuildingBuiltYear = articles.realEstate.listingsCountsBuildingBuiltYear;
    STAssertEqualObjects(@"1999", listingsCountsBuildingBuiltYear, @"Should be valid YYYY format");
    
    [articles.realEstate setListingsCountsBuildingTypeId:@"34"];
    NSString *listingsCountsBuildingTypeId = articles.realEstate.listingsCountsBuildingTypeId;
    STAssertEqualObjects(@"34", listingsCountsBuildingTypeId, @"Should be positive integer");
    
    [articles.realEstate setListingsCountsLoft:@"NO"];
    NSString *listingsCountsLoft = articles.realEstate.listingsCountsLoft;
    STAssertEqualObjects(@"N", listingsCountsLoft, @"Should be either YES or NO");
    
    [articles.realEstate setListingsCountsFormat:@"JSON"];
    NSString *listingsCountsFormat = articles.realEstate.listingsCountsFormat;
    STAssertEqualObjects(@"json", listingsCountsFormat, @"Should be either JSON or XML");
    
    [articles.realEstate setListingsCountsApiKey:@"API-KEY"];
    NSString *listingsCountsApiKey = articles.realEstate.listingsCountsApiKey;
    STAssertEqualObjects(@"API-KEY", listingsCountsApiKey, @"Should be alphanumeric string");
}

- (void)testRealEstateSalesPercentiles
{
    [articles.realEstate setSalesPercentilesGeoExtentLevel:@"ZIP"];
    NSString *salesPercentilesGeoExtentLevel = articles.realEstate.salesPercentilesGeoExtentLevel;
    STAssertEqualObjects(@"zip", salesPercentilesGeoExtentLevel, @"Should be either (borough|neightborhood|zip)");
    
    [articles.realEstate setSalesPercentilesGeoExtentValue:@"zip"];
    NSString *salesPercentilesGeoExtentValue = articles.realEstate.salesPercentilesGeoExtentValue;
    STAssertEqualObjects(@"zip", salesPercentilesGeoExtentValue, @"Should be valid string");
    
    [articles.realEstate setSalesPercentilesPercentileValue:@"3"];
    NSString *salesPercentilesPercentileValue = articles.realEstate.salesPercentilesPercentileValue;
    STAssertEqualObjects(@"3", salesPercentilesPercentileValue, @"Should be positive integer");
    
    [articles.realEstate setSalesPercentilesBuildingTypeId:@"30"];
    NSString *salesPercentilesBuildingTypeId = articles.realEstate.salesPercentilesBuildingTypeId;
    STAssertEqualObjects(@"30", salesPercentilesBuildingTypeId, @"Should be positive integer");
    
    [articles.realEstate setSalesPercentilesDateRange:@"1999-01-02"];
    NSString *salesPercentilesDateRange = articles.realEstate.salesPercentilesDateRange;
    STAssertEqualObjects(@"1999-01-02", salesPercentilesDateRange, @"Should be valid date format");
    
    [articles.realEstate setSalesPercentilesFormat:@"JSON"];
    NSString *salesPercentilesFormat = articles.realEstate.salesPercentilesFormat;
    STAssertEqualObjects(@"json", salesPercentilesFormat, @"Should be either JSON or XML");
    
    [articles.realEstate setSalesPercentilesApiKey:@"API-KEY"];
    NSString *salesPercentilesApiKey = articles.realEstate.salesPercentilesApiKey;
    STAssertEqualObjects(@"API-KEY", salesPercentilesApiKey, @"Should be alphanumeric string");
}

#pragma mark -
#pragma mark SalesCounts

- (void)testRealEstateSalesCounts
{
    [articles.realEstate setSalesCountsDateRange:@"1999-01-02"];
    NSString *salesCountsDateRange = articles.realEstate.salesCountsDateRange;
    STAssertEqualObjects(@"1999-01-02", salesCountsDateRange, @"Should be valid date format");
    
    [articles.realEstate setSalesCountsGeoExtentLevel:@"NEIGHBORHOOD"];
    NSString *salesCountsGeoExtentLevel = articles.realEstate.salesCountsGeoExtentLevel;
    STAssertEqualObjects(@"neighborhood", salesCountsGeoExtentLevel, @"Should be either (borough|neighborhood|zip)");
    
    [articles.realEstate setSalesCountGeoExtentValue:@"neighborhood"];
    NSString *salesCountsGeoExtentValue = articles.realEstate.salesCountsGeoExtentValue;
    STAssertEqualObjects(@"neighborhood", salesCountsGeoExtentValue, @"Should be valid string");
    
    [articles.realEstate setSalesCountsGeoSummaryLevel:@"ZIP"];
    NSString *salesCountsGeoSummaryLevel = articles.realEstate.salesCountsGeoSummaryLevel;
    STAssertEqualObjects(@"zip", salesCountsGeoSummaryLevel, @"Should be either (borough|neighborhood|zip)");
    
    [articles.realEstate setSalesCountsBuildingBuiltYear:@"1999"];
    NSString *salesCountsBuildingBuiltYear = articles.realEstate.salesCountsBuildingBuiltYear;
    STAssertEqualObjects(@"1999", salesCountsBuildingBuiltYear, @"Should be valid YEAR format");
    
    [articles.realEstate setSalesCountsBuildingTypeId:@"30"];
    NSString *salesCountsBuildingTypeId = articles.realEstate.salesCountsBuildingTypeId;
    STAssertEqualObjects(@"30", salesCountsBuildingTypeId, @"Should be positive integer");
    
    [articles.realEstate setSalesCountsFormat:@"JSON"];
    NSString *salesCountsFormat = articles.realEstate.salesCountsFormat;
    STAssertEqualObjects(@"json", salesCountsFormat, @"Should be either JSON or XML");
    
    [articles.realEstate setSalesCountsApiKey:@"API-KEY"];
    NSString *salesCountsApiKey = articles.realEstate.salesCountsApiKey;
    STAssertEqualObjects(@"API-KEY", salesCountsApiKey, @"Should be alphanumeric string");
}

















@end

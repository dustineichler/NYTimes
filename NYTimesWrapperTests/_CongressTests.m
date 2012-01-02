//
//  _CongressTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/1/12.
//  Copyright (c) 2012 All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_CongressTests.h"

@implementation _CongressTests
@synthesize articles;

- (void)setUp
{
    [super setUp];
    articles = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
}

- (void)testMembersOfCongress
{
    [articles.congress setMembersOfCongressChamber:@"SENATE"];
    [articles.congress setMembersOfCongressCongressNumber:@"102"];
    NSString *membersOfCongressCongressNumber = articles.congress.membersOfCongressCongressNumber;
    STAssertEqualObjects(@"102", membersOfCongressCongressNumber, @"Should be either 102–112 HOR or 80–112 SEN");
    
    [articles.congress setMembersOfCongressChamber:@"HOUSE"];
    NSString *membersOfCongressChamber = articles.congress.membersOfCongressChamber;
    STAssertEqualObjects(@"house", membersOfCongressChamber, @"Should be either either HOUSE or SENATE");
    
    [articles.congress setMembersOfCongressState:@"CA"];
    NSString *membersOfCongressState = articles.congress.membersOfCongressState;
    STAssertEqualObjects(@"CA", membersOfCongressState, @"Should be within the 50 continential states");
    
    [articles.congress setMembersOfCongressChamber:@"HOUSE"];
    [articles.congress setMembersOfCongressDistrict:@"DISTRICT-NUMBER"];
    NSString *membersOfCongressDistrict = articles.congress.membersOfCongressDistrict;
    STAssertEqualObjects(@"DISTRICT-NUMBER", membersOfCongressDistrict, @"Should be valid district number and specified only if HOUSE Chamber is selected first");
    
    [articles.congress setMembersOfCongressFormat:@"JSON"];
    NSString *membersOfCongressFormat = articles.congress.membersOfCongressFormat;
    STAssertEqualObjects(@"json", membersOfCongressFormat, @"Should be valid either XML or JSON");
    
    [articles.congress setMembersOfCongressApiKey:@"API-KEY"];
    NSString *membersOfCongressApiKey = articles.congress.membersOfCongressApiKey;
    STAssertEqualObjects(@"API-KEY", membersOfCongressApiKey, @"Should be valid string");
}

- (void)testMemberBiosAndRoles
{
    [articles.congress setMemberBiosAndRolesMemberId:@"Member-ID-Foo"];
    NSString *memberBiosAndRolesMemberId = articles.congress.memberBiosAndRolesMemberId;
    STAssertEqualObjects(@"Member-ID-Foo", memberBiosAndRolesMemberId, @"Should be valid Alphanumeric string");
    
    [articles.congress setMemberBiosAndRolesFormat:@"JSON"];
    NSString *memberBiosAndRolesFormat = articles.congress.memberBiosAndRolesFormat;
    STAssertEqualObjects(@"json", memberBiosAndRolesFormat, @"Should be valid either XML or JSON");
    
    [articles.congress setMemberBiosAndRolesApiKey:@"API-KEY"];
    NSString *memberBiosAndRolesApiKey = articles.congress.memberBiosAndRolesApiKey;
    STAssertEqualObjects(@"API-KEY", memberBiosAndRolesApiKey, @"Should be valid Alphanumeric API KEY");
}

- (void)testNewMembers
{
    [articles.congress setNewMembersFormat:@"JSON"];
    NSString *newMembersFormat = articles.congress.newMembersFormat;
    STAssertEqualObjects(@"json", newMembersFormat, @"Should be valid either XML or JSON");
    
    [articles.congress setNewMembersApiKey:@"API-KEY"];
    NSString *newMembersApiKey = articles.congress.newMembersApiKey;
    STAssertEqualObjects(@"API-KEY", newMembersApiKey, @"Should be valid Alphanumeric API KEY");
}

- (void)testCurrentMembersByStateAndDistrict
{
    [articles.congress setCurrentMembersByStateAndDistrictChamber:@"HOUSE"];
    NSString *currentMembersByStateAndDistrictChamber = articles.congress.currentMembersByStateAndDistrictChamber;
    STAssertEqualObjects(@"house", currentMembersByStateAndDistrictChamber, @"Should be valid either HOUSE or SENATE");
    
    [articles.congress setCurrentMembersByStateAndDistrictState:@"NJ"];
    NSString *currentMembersByStateAndDistrictState = articles.congress.currentMembersByStateAndDistrictState;
    STAssertEqualObjects(@"NJ", currentMembersByStateAndDistrictState, @"Should be continential US state");
    
    [articles.congress setCurrentMembersByStateAndDistrictChamber:@"HOUSE"];
    [articles.congress setCurrentMembersByStateAndDistrictDistrict:@"DISTRICT-NUMBER"];
    NSString *currentMembersByStateAndDistrictDistrict = articles.congress.currentMembersByStateAndDistrictDistrict;
    STAssertEqualObjects(@"DISTRICT-NUMBER", currentMembersByStateAndDistrictDistrict, @"Should be valid district number and specified only if HOUSE Chamber is selected first");
    
    [articles.congress setCurrentMembersByStateAndDistrictForamt:@"JSON"];
    NSString *currentMembersByStateAndDistrictFormat = articles.congress.currentMembersByStateAndDistrictFormat;
    STAssertEqualObjects(@"json", currentMembersByStateAndDistrictFormat, @"Should be either JSON or XML");
    
    [articles.congress setCurrentMembersByStateAndDistrictApiKey:@"API-KEY"];
    NSString *currentMembersByStateAndDistrictApiKey = articles.congress.currentMembersByStateAndDistrictApiKey;
    STAssertEqualObjects(@"API-KEY", currentMembersByStateAndDistrictApiKey, @"Should be alphanumeric string");
}

- (void)testMembersLeavingOffice
{
    [articles.congress setMembersLeavingOfficeCongressNumber:@"111"];
    NSString *membersLeavingOfficeCongressNumber = articles.congress.membersLeavingOfficeCongressNumber;
    STAssertEqualObjects(@"111", membersLeavingOfficeCongressNumber, @"Should be either (111|112)");
    
    [articles.congress setMembersLeavingOfficeChamber:@"SENATE"];
    NSString *membersLeavingOfficeChamber = articles.congress.membersLeavingOfficeChamber;
    STAssertEqualObjects(@"senate", membersLeavingOfficeChamber, @"Should be either SENATE or HOUSE");
    
    [articles.congress setMembersLeavingOfficeFormat:@"JSON"];
    NSString *membersLeavingOfficeFormat = articles.congress.membersLeavingOfficeFormat;
    STAssertEqualObjects(@"json", membersLeavingOfficeFormat, @"Should be either JSON or XML");
    
    [articles.congress setMembersLeavingOfficeApiKey:@"API-KEY"];
    NSString *membersLeavingOfficeApiKey = articles.congress.membersLeavingOfficeApiKey;
    STAssertEqualObjects(@"API-KEY", membersLeavingOfficeApiKey, @"Should be valid alphanumeric string");
}

- (void)setMemberVotePositions
{
    [articles.congress setMemberVotePositionsApiKey:@"API-KEY"];
    NSString *memberVotePositionsApiKey = articles.congress.memberVotePositionsApiKey;
    STAssertEqualObjects(@"API-KEY", memberVotePositionsApiKey, @"Should be valid alphanumeric string");
    
    [articles.congress setMemberVotePositionsMemberId:@"MemberId"];
    NSString *memberVotePositionsMemberId = articles.congress.memberVotePositionsMemberId;
    STAssertEqualObjects(@"MemberId", memberVotePositionsMemberId, @"Should be valid alphanumeric string");
    
    [articles.congress setMemberVotePositionsFormat:@"JSON"];
    NSString *memberVotePositionsFormat = articles.congress.memberVotePositionsFormat;
    STAssertEqualObjects(@"json", memberVotePositionsFormat, @"Should be either XML or JSON");
}

- (void)testMemberVoteComparison
{
    [articles.congress setMemberVoteComparisonFirstMemberId:@"FirstId"];
    NSString *memberVoteComparisonFirstMemberId = articles.congress.memberVoteComparisonFirstMemberId;
    STAssertEqualObjects(@"firstid", memberVoteComparisonFirstMemberId, @"Should be valid Alphanumeric string");
    
    [articles.congress setMemberVoteComparisonSecondMemberId:@"SecondId"];
    NSString *memberVoteComparisonSecondMemberId = articles.congress.memberVoteComparisonSecondMemberId;
    STAssertEqualObjects(@"secondid", memberVoteComparisonSecondMemberId, @"Should be valid Alphanumeric string");
    
    [articles.congress setMemberVoteComparisonChamber:@"HOUSE"];
    [articles.congress setMemberVoteComparisonCongressNumber:@"105"];
    NSString *memberVoteComparisonCongressNumber = articles.congress.memberVoteComparisonCongressNumber;
    STAssertEqualObjects(@"105", memberVoteComparisonCongressNumber, @"Should be Senate: 101–112 or House: 102–112");
    
    [articles.congress setMemberVoteComparisonChamber:@"HOUSE"];
    NSString *memberVoteComparisonChamber = articles.congress.memberVoteComparisonChamber;
    STAssertEqualObjects(@"house", memberVoteComparisonChamber, @"Should be either HOUSE or SENATE");
    
    [articles.congress setMemberVoteComparisonFormat:@"JSON"];
    NSString *memberVoteComparisonFormat = articles.congress.memberVoteComparisonFormat;
    STAssertEqualObjects(@"json", memberVoteComparisonFormat, @"Should be either JSON or XML");
    
    [articles.congress setMemberVoteComparisonApiKey:@"API-KEY"];
    NSString *memberVoteComparisonApiKey = articles.congress.memberVoteComparisonApiKey;
    STAssertEqualObjects(@"API-KEY", memberVoteComparisonApiKey, @"Should be valid alphanumeric string");
}

- (void)testBillsCosponsoredByAMember
{
    [articles.congress setBillsCosponsoredByAMemberMemberId:@"MEMBER-ID"];
    NSString *billsCosponsoredByAMemberMemberId = articles.congress.billsCosponsoredByAMemberMemberId;
    STAssertEqualObjects(@"member-id", billsCosponsoredByAMemberMemberId, @"Should be valid Alphanumeric string");
    
    [articles.congress setBillsCosponsoredByAMemberType:@"COSPONSORED"];
    NSString *billsCosponsoredByAMemberType = articles.congress.billsCosponsoredByAMemberType;
    STAssertEqualObjects(@"cosponsored", billsCosponsoredByAMemberType, @"Should be either COSPONSORED or WITHDRAWN");
    
    [articles.congress setBillsCosponsoredByAMemberFormat:@"JSON"];
    NSString *billsCosponsoredByAMemberFormat = articles.congress.billsCosponsoredByAMemberFormat;
    STAssertEqualObjects(@"json", billsCosponsoredByAMemberFormat, @"Should be either XML or JSON");
    
    [articles.congress setBillsCosponsoredByAMemberApiKey:@"API-KEY"];
    NSString *billsCosponsoredByAMemberApiKey = articles.congress.billsCosponsoredByAMemberApiKey;
    STAssertEqualObjects(@"API-KEY", billsCosponsoredByAMemberApiKey, @"Should be alphanumeric string");
}












@end

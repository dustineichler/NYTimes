//
//  _CongressTests.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/1/12.
//  Copyright (c) 2012 All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_CongressTests.h"
#import "NYTimesCongress.h"

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

- (void)testMembersOfCongressConnection
{
    /** 
        Members of Congress
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setMembersOfCongressCongressNumber:@"102"];
    [nytimes.congress setMembersOfCongressChamber:@"SENATE"];
    [nytimes.congress setMembersOfCongressApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setMembersOfCongressState:@"CA"];
    [nytimes.congress setMembersOfCongressDistrict:@"DISTRICT-NUMBER"];
    [nytimes.congress setMembersOfCongressFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress members of congress"];
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

- (void)testMemberBiosAndRolesConnection
{
    /** 
        Member Bios and Roles
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setMemberBiosAndRolesMemberId:@"Member-ID-Foo"];
    [nytimes.congress setMemberBiosAndRolesApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setMemberBiosAndRolesFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress member bios and roles"];
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

- (void)testNewMembersConnection
{
    /**
        New Members
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setNewMembersApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setNewMembersFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress new members"];
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

- (void)testCurrentMembersByStateAndDistrictConnection
{
    /**
        Current Members By State and District
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setCurrentMembersByStateAndDistrictChamber:@"HOUSE"];
    [nytimes.congress setCurrentMembersByStateAndDistrictState:@"NJ"];
    [nytimes.congress setCurrentMembersByStateAndDistrictDistrict:@"DISTRICT-NUMBER"];
    [nytimes.congress setCurrentMembersByStateAndDistrictApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setCurrentMembersByStateAndDistrictForamt:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress current members by state and district"];
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

- (void)testMembersLeavingOfficeConnection
{
    /**
        Members Leaving Office
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setMembersLeavingOfficeCongressNumber:@"111"];
    [nytimes.congress setMembersLeavingOfficeChamber:@"SENATE"];
    [nytimes.congress setMembersLeavingOfficeApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setMembersLeavingOfficeFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress members leaving office"];
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

- (void)testMemberVotePositionsConnection
{
    /**
        Member Vote Positions
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setMemberVotePositionsApiKey:@"API-KEY"];
    [nytimes.congress setMemberVotePositionsMemberId:@"MemberId"];
    /**
     Optional
     */
    [nytimes.congress setMemberVotePositionsFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress member vote positions"];
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

- (void)testMemberVoteComparisonConnection
{
    /**
        Member Vote Comparison
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setMemberVoteComparisonFirstMemberId:@"FirstId"];
    [nytimes.congress setMemberVoteComparisonSecondMemberId:@"SecondId"];
    [nytimes.congress setMemberVoteComparisonCongressNumber:@"105"];
    [nytimes.congress setMemberVoteComparisonChamber:@"HOUSE"];
    [nytimes.congress setMemberVoteComparisonApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setMemberVoteComparisonFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress member vote comparison"];
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

- (void)testBillsCosponsoredByAMemberConnection
{
    /**
        Bills Cosponsored By A Member
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setBillsCosponsoredByAMemberMemberId:@"MEMBER-ID"];
    [nytimes.congress setBillsCosponsoredByAMemberType:@"COSPONSORED"];
    [nytimes.congress setBillsCosponsoredByAMemberApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setBillsCosponsoredByAMemberFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress bills cosponsored by a member"];
}

#pragma mark -
#pragma mark MemberSponsorshipComparison

- (void)testMemberSponsorshipComparison
{
    [articles.congress setMemberSponsorshipComparisonMemberId2:@"MemberId12"];
    NSString *memberSponsorshipComparisonMemberId2 = articles.congress.memberSponsorshipComparisonMemberId2;
    STAssertEqualObjects(@"MemberId12", memberSponsorshipComparisonMemberId2, @"Should be alphanumeric string");
    
    [articles.congress setMemberSponsorshipComparisonMemberId1:@"MemberId11"];
    NSString *memberSponsorshipComparisonMemberId1 = articles.congress.memberSponsorshipComparisonMemberId1;
    STAssertEqualObjects(@"MemberId11", memberSponsorshipComparisonMemberId1, @"Should be alphanumeric string");
    
    [articles.congress setMemberSponsorshipComparisonChamber:@"SENATE"];
    [articles.congress setMemberSponsorshipComparisonCongressNumber:@"112"];
    NSString *memberSponsorshipComparisonCongressNumber = articles.congress.memberSponsorshipComparisonCongressNumber;
    STAssertEqualObjects(@"112", memberSponsorshipComparisonCongressNumber, @"Should be between 105–112");
    
    [articles.congress setMemberSponsorshipComparisonChamber:@"HOUSE"];
    NSString *memberSponsorshipComparisonChamber = articles.congress.memberSponsorshipComparisonChamber;
    STAssertEqualObjects(@"house", memberSponsorshipComparisonChamber, @"Should be either HOUSE or SENATE");
    
    [articles.congress setMemberSponsorshipComparisonFormat:@"JSON"];
    NSString *memberSponsorshipComparisonFormat = articles.congress.memberSponsorshipComparisonFormat;
    STAssertEqualObjects(@"json", memberSponsorshipComparisonFormat, @"Should be either XML or JSON");
    
    [articles.congress setMemberSponsorshipComparisonApiKey:@"API-KEY"];
    NSString *memberSponsorshipComparisonApiKey = articles.congress.memberSponsorshipComparisonApiKey;
    STAssertEqualObjects(@"API-KEY", memberSponsorshipComparisonApiKey, @"Should be alphanumeric string");
}

- (void)testMemberSponsorshipComparisonConnection
{
    /**
        Member Sponsorship Comparison
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
        Required
     */
    [nytimes.congress setMemberSponsorshipComparisonMemberId2:@"MemberId12"];
    [nytimes.congress setMemberSponsorshipComparisonMemberId1:@"MemberId11"];
    [nytimes.congress setMemberSponsorshipComparisonChamber:@"SENATE"];
    [nytimes.congress setMemberSponsorshipComparisonCongressNumber:@"112"];
    [nytimes.congress setMemberSponsorshipComparisonApiKey:@"API-KEY"];
    /**
        Optional
     */
    [nytimes.congress setMemberSponsorshipComparisonFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress member sponsorship comparison"];
}

#pragma mark -
#pragma mark MemberFloorAppearances

- (void)testMemberFloorAppearances
{
    [articles.congress setMemberFloorAppearancesMemberId:@"MemberId1"];
    NSString *memberFloorAppearancesMemberId = articles.congress.memberFloorAppearancesMemberId;
    STAssertEqualObjects(@"MemberId1", memberFloorAppearancesMemberId, @"Should be alphanumeric string");
    
    [articles.congress setMemberFloorAppearancesFormat:@"JSON"];
    NSString *memberFloorAppearancesFormat = articles.congress.memberFloorAppearancesFormat;
    STAssertEqualObjects(@"json", memberFloorAppearancesFormat, @"Should be either XML or JSON");
    
    [articles.congress setMemberFloorAppearancesApiKey:@"API-KEY"];
    NSString *memberFloorAppearancesApiKey = articles.congress.memberFloorAppearancesApiKey;
    STAssertEqualObjects(@"API-KEY", memberFloorAppearancesApiKey, @"Should be valid alphanumeric string");
}

- (void)testMemberFloorAppearancesConnection
{
    /**
        Member Floor Appearances
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setMemberFloorAppearancesMemberId:@"MemberId1"];
    [nytimes.congress setMemberFloorAppearancesApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setMemberFloorAppearancesFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress member floor appearances"];
}

#pragma mark -
#pragma mark RollCallVotes

- (void)testRollCallVotes
{
    [articles.congress setRollCallVotesChamber:@"HOUSE"];
    [articles.congress setRollCallVotesCongressNumber:@"105"];
    NSString *rollCallVotesCongressNumber = articles.congress.rollCallVotesCongressNumber;
    STAssertEqualObjects(@"105", rollCallVotesCongressNumber, @"Should be between House of Representatives: 102–112 Senate: 101–112");
    
    [articles.congress setRollCallVotesChamber:@"SENATE"];
    NSString *rollCallVotesChamber = articles.congress.rollCallVotesChamber;
    STAssertEqualObjects(@"senate", rollCallVotesChamber, @"Should be either HOUSE or SENATE");
    
    [articles.congress setRollCallVotesSessionNumber:@"2"];
    NSString *rollCallVotesSessionNumber = articles.congress.rollCallVotesSessionNumber;
    STAssertEqualObjects(@"2", rollCallVotesSessionNumber, @"Should be either (1|2|[SPECIALSESSION])");
    
    [articles.congress setRollCallVotesRollCallNumber:@"14"];
    NSString *rollCallVotesRollCallNumber = articles.congress.rollCallVotesRollCallNumber;
    STAssertEqualObjects(@"14", rollCallVotesRollCallNumber, @"Should be valid string integer");
    
    [articles.congress setRollCallVotesFormat:@"JSON"];
    NSString *rollCallVotesFormat = articles.congress.rollCallVotesFormat;
    STAssertEqualObjects(@"json", rollCallVotesFormat, @"Should be alphanumeric string");
}

- (void)testRollCallVotesConnection
{
    /**
        Roll Call Votes
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setRollCallVotesCongressNumber:@"105"];
    [nytimes.congress setRollCallVotesChamber:@"HOUSE"];
    [nytimes.congress setRollCallVotesSessionNumber:@"2"];
    [nytimes.congress setRollCallVotesRollCallNumber:@"14"];
    [nytimes.congress setRollCallVotesApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setRollCallVotesFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress roll call votes"];
}

- (void)testVotesByType
{
    [articles.congress setVotesByTypeChamber:@"HOUSE"];
    NSString *votesByTypeChamber = articles.congress.votesByTypeChamber;
    STAssertEqualObjects(@"house", votesByTypeChamber, @"Should be either HOUSE or SENTATE");
    
    [articles.congress setVotesByTypeCongressNumber:@"112"];
    NSString *votesByTypeCongressNumber = articles.congress.votesByTypeCongressNumber;
    STAssertEqualObjects(@"112", votesByTypeCongressNumber, @"Should be between House of Representatives: 102–112 Senate: 101–112");
    
    [articles.congress setVotesByTypeVoteType:@"MISSED VOTES"];
    NSString *votesByTypeVoteType = articles.congress.votesByTypeVoteType;
    STAssertEqualObjects(@"missed_votes", votesByTypeVoteType, @"Should be (missed_votes|party_votes|loneno|perfect)");
    
    [articles.congress setVotesByTypeFormat:@"JSON"];
    NSString *votesByTypeFormat = articles.congress.votesByTypeFormat;
    STAssertEqualObjects(@"json", votesByTypeFormat, @"Should be either JSON or XML");
    
    [articles.congress setVotesByTypeApiKey:@"API-KEY"];
    NSString *votesByTypeApiKey = articles.congress.votesByTypeApiKey;
    STAssertEqualObjects(@"API-KEY", votesByTypeApiKey, @"Should be alphanumeric string");
}

- (void)testVotesByTypeConnection
{
    /**
        Votes By Type
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setVotesByTypeCongressNumber:@"112"];
    [nytimes.congress setVotesByTypeChamber:@"HOUSE"];
    [nytimes.congress setVotesByTypeVoteType:@"MISSED VOTES"];
    [nytimes.congress setVotesByTypeApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setVotesByTypeFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress votes by type"];
}

- (void)testVotesByDate
{
    [articles.congress setVotesByDateChamber:@"HOUSE"];
    NSString *votesByDateChamber = articles.congress.votesByDateChamber;
    STAssertEqualObjects(@"house", votesByDateChamber, @"Should be either HOUSE or SENATE");
    
    [articles.congress setVotesByDateYearAndMonth:@"201111"];
    NSString *votesByDateYearAndMonth = articles.congress.votesByDateYearAndMonth;
    STAssertEqualObjects(@"201111", votesByDateYearAndMonth, @"Should be valid YEAR MONTH format");

    // TODO: DWE: Fix this
//    [articles.congress setVotesByDateRangeOfDates:@"2010-01-01/2010-02-01"];
//    NSString *votesByDateRangeOfDates = articles.congress.votesByDateRangeOfDates;
//    STAssertEqualObjects(@"2010-01-01/2010-02-01", votesByDateRangeOfDates, @"Should be valid date range YYYY-MM-DD/YYYY-MM-DD");
    
    [articles.congress setVotesByDateFormat:@"JSON"];
    NSString *votesByDateFormat = articles.congress.votesByDateFormat;
    STAssertEqualObjects(@"json", votesByDateFormat, @"Should be either JSON or XML");
    
    [articles.congress setVotesByDateApiKey:@"API-KEY"];
    NSString *votesByDateApiKey = articles.congress.votesByDateApiKey;
    STAssertEqualObjects(@"API-KEY", votesByDateApiKey, @"Should be alphanumeric string");
}

- (void)testVotesByDateConnection
{
    /**
        Votes By Date
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setVotesByDateChamber:@"HOUSE"];
    [nytimes.congress setVotesByDateYearAndMonth:@"201111"];
    [nytimes.congress setVotesByDateRangeOfDates:@"2010-01-01/2010-02-01"];
    [nytimes.congress setVotesByDateApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setVotesByDateFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress votes by date"];
}

- (void)testNominationVotes
{
    [articles.congress setNominationVotesCongressNumber:@"105"];
    NSString *nominationVotesCongressNumber = articles.congress.nominationVotesCongressNumber;
    STAssertEqualObjects(@"105", nominationVotesCongressNumber, @"Should be between 101–112");
    
    [articles.congress setNominationVotesFormat:@"JSON"];
    NSString *nominationVotesFormat = articles.congress.nominationVotesFormat;
    STAssertEqualObjects(@"json", nominationVotesFormat, @"Should be either JSON or XML");
    
    [articles.congress setNominationVotesApiKey:@"API-KEY"];
    NSString *nominationVotesApiKey = articles.congress.nominationVotesApiKey;
    STAssertEqualObjects(@"API-KEY", nominationVotesApiKey, @"Should be alphanumeric string");
}

- (void)testNominationVotesConnection
{
    /**
        Nomination Votes
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setNominationVotesCongressNumber:@"105"];
    [nytimes.congress setNominationVotesApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setNominationVotesFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress nomination votes"];
}

- (void)testRecentBills
{
    [articles.congress setRecentBillsChamber:@"HOUSE"];
    NSString *recentBillsChamber = articles.congress.recentBillsChamber;
    STAssertEqualObjects(@"house", recentBillsChamber, @"Should be either HOUSE or SENATE");
    
    [articles.congress setRecentBillsCongressNumber:@"112"];
    NSString *recentBillsCongressNumber = articles.congress.recentBillsCongressNumber;
    STAssertEqualObjects(@"112", recentBillsCongressNumber, @"Should be between 105–112");
    
    [articles.congress setRecentBillsType:@"UPDATED"];
    NSString *recentBillsType = articles.congress.recentBillsType;
    STAssertEqualObjects(@"updated", recentBillsType, @"Should be (introduced|updated|passed|major)");
    
    [articles.congress setRecentBillsFormat:@"JSON"];
    NSString *recentBillsformat = articles.congress.recentBillsFormat;
    STAssertEqualObjects(@"json", recentBillsformat, @"Should be either XML or JSON");
    
    [articles.congress setRecentBillsApiKey:@"API-KEY"];
    NSString *recentBillsApiKey = articles.congress.recentBillsApiKey;
    STAssertEqualObjects(@"API-KEY", recentBillsApiKey, @"Should be valid alphanumeric string");
}

- (void)testRecentBillsConnection
{
    /**
        Recent Bills
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
        Required
     */
    [nytimes.congress setRecentBillsCongressNumber:@"112"];
    [nytimes.congress setRecentBillsChamber:@"HOUSE"];
    [nytimes.congress setRecentBillsType:@"UPDATED"];
    [nytimes.congress setRecentBillsApiKey:@"API-KEY"];
    /**
        Optional
     */
    [nytimes.congress setRecentBillsFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress recent bills"];
}

- (void)testBillsByMember
{
    [articles.congress setBillsByMemberType:@"INTRODUCED"];
    NSString *billsByMemberType = articles.congress.billsByMemberType;
    STAssertEqualObjects(@"introduced", billsByMemberType, @"Should be (introduced|updated)");
    
    [articles.congress setBillsByMemberMemberId:@"MemberId"];
    NSString *billsByMemberMemberId = articles.congress.billsByMemberMemberId;
    STAssertEqualObjects(@"memberid", billsByMemberMemberId, @"Should be alphanumeric string");
    
    [articles.congress setBillsByMemberFormat:@"JSON"];
    NSString *billsByMemberFormat = articles.congress.billsByMemberFormat;
    STAssertEqualObjects(@"json", billsByMemberFormat, @"Should be either XML or JSON");
    
    [articles.congress setBillsByMemberApiKey:@"API-KEY"];
    NSString *billsByMemberApiKey = articles.congress.billsByMemberApiKey;
    STAssertEqualObjects(@"API-KEY", billsByMemberApiKey, @"Should be alphanumeric string");
}

- (void)testBillsByMemberConnection
{
    /**
        Bills By Member
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
        Required
     */
    [nytimes.congress setBillsByMemberType:@"INTRODUCED"];
    [nytimes.congress setBillsByMemberMemberId:@"MemberId"];
    [nytimes.congress setBillsByMemberApiKey:@"API-KEY"];
    /**
        Optional
     */
    [nytimes.congress setBillsByMemberFormat:@"JSON"];

    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress bills by member"];
}

- (void)testBillDetails
{
    [articles.congress setBillDetailsCongressNumber:@"112"];
    NSString *billDetailsCongressNumber = articles.congress.billDetailsCongressNumber;
    STAssertEqualObjects(@"112", billDetailsCongressNumber, @"Should be between 105–112");
    
    [articles.congress setBillDetailsBillId:@"BillId"];
    NSString *billDetailsBillId = articles.congress.billDetailsBillId;
    STAssertEqualObjects(@"billid", billDetailsBillId, @"Should be alphanumeric string");
    
    [articles.congress setBillDetailsFormat:@"JSON"];
    NSString *billDetailsFormat = articles.congress.billDetailsFormat;
    STAssertEqualObjects(@"json", billDetailsFormat, @"Should be either JSON or XML");
    
    [articles.congress setBillDetailsApiKey:@"API-KEY"];
    NSString *billDetailsApiKey = articles.congress.billDetailsApiKey;
    STAssertEqualObjects(@"API-KEY", billDetailsApiKey, @"Should be alphanumeric string");
}

- (void)testBillDetailsConnection
{
    /**
        Bill Details
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
         Required
     */
    [nytimes.congress setBillDetailsCongressNumber:@"112"];
    [nytimes.congress setBillDetailsBillId:@"BillId"];
    [nytimes.congress setBillDetailsApiKey:@"API-KEY"];
    /**
         Optional
     */
    [nytimes.congress setBillDetailsFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress bill details"];
}

- (void)testBillAmendmentsAndRelatedBills
{
    [articles.congress setBillAmendmentsAndRelatedBillsCongressNumber:@"112"];
    NSString *billAmendmentsAndRelatedBillsCongressNumber = articles.congress.billAmendmentsAndRelatedBillsCongressNumber;
    STAssertEqualObjects(@"112", billAmendmentsAndRelatedBillsCongressNumber, @"Should be between 105–112");
    
    [articles.congress setBillAmendmentsAndRelatedBillsBillId:@"BillId1"];
    NSString *billAmendmentsAndRelatedBillsBillId = articles.congress.billAmendmentsAndRelatedBillsBillId;
    STAssertEqualObjects(@"billid1", billAmendmentsAndRelatedBillsBillId, @"Should be alphanumeric string");
    
    [articles.congress setBillAmendmentsAndRelatedBillsResource:@"SUBJECTS"];
    NSString *billAmendmentsAndRelatedBillsResource = articles.congress.billAmendmentsAndRelatedBillsResource;
    STAssertEqualObjects(@"subjects", billAmendmentsAndRelatedBillsResource, @"Should be either (subjects|amendments|related)");
    
    [articles.congress setBillAmendmentsAndRelatedBillsFormat:@"JSON"];
    NSString *billAmendmentsAndRelatedBillsFormat = articles.congress.billAmendmentsAndRelatedBillsFormat;
    STAssertEqualObjects(@"json", billAmendmentsAndRelatedBillsFormat, @"Should be either XML or JSON");
    
    [articles.congress setBillAmendmentsAndRelatedBillsApiKey:@"API-KEY"];
    NSString *billAmendmentsAndRelatedBillsApiKey = articles.congress.billAmendmentsAndRelatedBillsApiKey;
    STAssertEqualObjects(@"API-KEY", billAmendmentsAndRelatedBillsApiKey, @"Should be alphanumeric string");
}

- (void)testBillAmendmentsAndRelatedBillsConnection
{
    /**
        Bill Amendments And Related Bills
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setBillAmendmentsAndRelatedBillsCongressNumber:@"112"];
    [nytimes.congress setBillAmendmentsAndRelatedBillsBillId:@"BillId1"];
    [nytimes.congress setBillAmendmentsAndRelatedBillsResource:@"SUBJECTS"];
    [nytimes.congress setBillAmendmentsAndRelatedBillsApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setBillAmendmentsAndRelatedBillsFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress bill amendments and related bills"];
}

- (void)testBillConsponsors
{
    [articles.congress setBillCosponsorsCongressNumber:@"112"];
    NSString *billCosponsorsCongressNumber = articles.congress.billCosponsorsCongressNumber;
    STAssertEqualObjects(@"112", billCosponsorsCongressNumber, @"Should be between 105–112");
    
    [articles.congress setBillCosponsorsBillId:@"BillId9"];
    NSString *billCosponsorsBillId = articles.congress.billCosponsorsBillId;
    STAssertEqualObjects(@"billid9", billCosponsorsBillId, @"Should be alphanumeric string");
    
    [articles.congress setBillCosponsorsFormat:@"JSON"];
    NSString *billCosponsorsFormat = articles.congress.billCosponsorsFormat;
    STAssertEqualObjects(@"json", billCosponsorsFormat, @"Should be either XML or JSON");
    
    [articles.congress setBillCosponsorsApiKey:@"API-KEY"];
    NSString *billCosponsorsApiKey = articles.congress.billCosponsorsApiKey;
    STAssertEqualObjects(@"API-KEY", billCosponsorsApiKey, @"Should be alphanumeric string");
}

- (void)testBillCosponsorsConnection
{
    /**
        Bill Cosponsors
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setBillCosponsorsCongressNumber:@"112"];
    [nytimes.congress setBillCosponsorsBillId:@"BillId9"];
    [nytimes.congress setBillCosponsorsApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setBillCosponsorsFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress bill cosponsors"];
}

- (void)testNomineeLists
{
    [articles.congress setNomineeListsCongressNumber:@"112"];
    NSString *nomineeListsCongressNumber = articles.congress.nomineeListsCongressNumber;
    STAssertEqualObjects(@"112", nomineeListsCongressNumber, @"Should be between 107–112");
    
    [articles.congress setNomineeListsNomineeCategory:@"RECEIVED"];
    NSString *nomineeListsNomineeCategory = articles.congress.nomineeListsNomineeCategory;
    STAssertEqualObjects(@"received", nomineeListsNomineeCategory, @"Should be between (received | updated | confirmed | withdrawn)");
    
    [articles.congress setNomineeListsFormat:@"JSON"];
    NSString *nomineeListsFormat = articles.congress.nomineeListsFormat;
    STAssertEqualObjects(@"json", nomineeListsFormat, @"Should be either XML or JSON");
    
    [articles.congress setNomineeListsApiKey:@"API-KEY"];
    NSString *nomineeListsApiKey = articles.congress.nomineeListsApiKey;
    STAssertEqualObjects(@"API-KEY", nomineeListsApiKey, @"Should be alphanumeric string");
}

- (void)testNomineeListsConnection
{
    /**
        Nominee Lists
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
        Required
     */
    [nytimes.congress setNomineeListsCongressNumber:@"112"];
    [nytimes.congress setNomineeListsNomineeCategory:@"RECEIVED"];
    [nytimes.congress setNomineeListsApiKey:@"API-KEY"];
    /**
        Optional
     */
    [nytimes.congress setNomineeListsFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress nominee lists"];
}

- (void)testNomineeDetails
{
    [articles.congress setNomineeDetailsCongressNumber:@"112"];
    NSString *nomineeDetailsCongressNumber = articles.congress.nomineeDetailsCongressNumber;
    STAssertEqualObjects(@"112", nomineeDetailsCongressNumber, @"Should be between 107-112");
    
    [articles.congress setNomineeDetailsNomineeId:@"NomineeId44"];
    NSString *nomineeDetailsNomineeId = articles.congress.nomineeDetailsNomineeId;
    STAssertEqualObjects(@"NomineeId44", nomineeDetailsNomineeId, @"Should be alphanumeric string");
    
    [articles.congress setNomineeDetailsFormat:@"JSON"];
    NSString *nomineeDetailsFormat = articles.congress.nomineeDetailsFormat;
    STAssertEqualObjects(@"json", nomineeDetailsFormat, @"Should be either XML or JSON");
    
    [articles.congress setNomineeDetailsApiKey:@"API-KEY"];
    NSString *nomineeDetailsApiKey = articles.congress.nomineeDetailsApiKey;
    STAssertEqualObjects(@"API-KEY", nomineeDetailsApiKey, @"Should be alphanumeric string");
}

- (void)testNomineeDetailsConnection
{
    /**
        Nominee Details
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
         Required
     */
    [nytimes.congress setNomineeDetailsCongressNumber:@"112"];
    [nytimes.congress setNomineeDetailsNomineeId:@"NomineeId44"];
    [nytimes.congress setNomineeDetailsApiKey:@"API-KEY"];
    /**
         Optional
     */
    [nytimes.congress setNomineeDetailsFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress nominee details"];
}

- (void)testNomineesByState
{
    [articles.congress setNomineesByStateCongressNumber:@"107"];
    NSString *nomineesByStateCongressNumber = articles.congress.nomineesByStateCongressNumber;
    STAssertEqualObjects(@"107", nomineesByStateCongressNumber, @"Should be between 107-112");
    
    [articles.congress setNomineesByStateState:@"CA"];
    NSString *nomineesByStateState = articles.congress.nomineesByStateState;
    STAssertEqualObjects(@"CA", nomineesByStateState, @"Should be 50 US state");
    
    [articles.congress setNomineesByStateFormat:@"JSON"];
    NSString *nomineesByStateFormat = articles.congress.nomineesByStateFormat;
    STAssertEqualObjects(@"json", nomineesByStateFormat, @"Should be either XML or JSON");
    
    [articles.congress setNomineesByStateApiKey:@"API-KEY"];
    NSString *nomineesByStateApiKey = articles.congress.nomineesByStateApiKey;
    STAssertEqualObjects(@"API-KEY", nomineesByStateApiKey, @"Should be alphanumeric string");
}

- (void)testNomineesByStateConnection
{
    /**
        Nominees By State
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
        Required
     */
    [nytimes.congress setNomineesByStateCongressNumber:@"107"];
    [nytimes.congress setNomineesByStateState:@"CA"];
    [nytimes.congress setNomineesByStateApiKey:@"API-KEY"];
    /**
        Optional
     */
    [nytimes.congress setNomineesByStateFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress nominees by state"];
}

- (void)testStatePartyCounts
{
    [articles.congress setStatePartyCountsApiKey:@"API-KEY"];
    NSString *statePartyCountsApiKey = articles.congress.statePartyCountsApiKey;
    STAssertEqualObjects(@"API-KEY", statePartyCountsApiKey, @"Should be alphanumeric string");
    
    [articles.congress setStatePartyCountsFormat:@"JSON"];
    NSString *statePartyCountsFormat = articles.congress.statePartyCountsFormat;
    STAssertEqualObjects(@"json", statePartyCountsFormat, @"Should be either XML or JSON");
}

- (void)testStatePartyCountsConnection
{
    /**
        State Party Counts
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
        Required
     */
    [nytimes.congress setStatePartyCountsApiKey:@"API-KEY"];
    /**
        Optional
     */
    [nytimes.congress setStatePartyCountsFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress state party counts"];
}

- (void)testCommitteesAndCommitteeMembers
{
    [articles.congress setCommitteesAndCommitteeMembersChamber:@"HOUSE"];
    NSString *committeesAndCommitteeMembersChamber = articles.congress.committeesAndCommitteeMembersChamber;
    STAssertEqualObjects(@"house", committeesAndCommitteeMembersChamber, @"Should be either HOUSE or SENATE");
    
    [articles.congress setCommitteesAndCommitteeMembersCongressNumber:@"111"];
    NSString *committeesAndCommitteeMembersCongressNumber = articles.congress.committeesAndCommitteeMembersCongressNumber;
    STAssertEqualObjects(@"111", committeesAndCommitteeMembersCongressNumber, @"Should be between 110-112");
    
    [articles.congress setCommitteesAndCommitteeMembersCommitteeId:@"CommiteeId99"];
    NSString *committeesAndCommitteeMembersCommitteeId = articles.congress.committeesAndCommitteeMembersCommitteeId;
    STAssertEqualObjects(@"commiteeid99", committeesAndCommitteeMembersCommitteeId, @"Should be alphanumeric string");
    
    [articles.congress setCommitteesAndCommitteeMembersFormat:@"JSON"];
    NSString *committeesAndCommitteeMembersFormat = articles.congress.committeesAndCommitteeMembersFormat;
    STAssertEqualObjects(@"json", committeesAndCommitteeMembersFormat, @"Should be either XML or JSON");
}

- (void)testCommitteesAndCommitteeMembersConnection
{
    /**
        Committees And Committee Members
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
        Required
     */
    [nytimes.congress setCommitteesAndCommitteeMembersChamber:@"HOUSE"];
    [nytimes.congress setCommitteesAndCommitteeMembersCongressNumber:@"111"];
    [nytimes.congress setCommitteesAndCommitteeMembersCommitteeId:@"CommiteeId99"];
    [nytimes.congress setCommitteesAndCommitteeMembersApiKey:@"API-KEY"];
    /**
        Optional
     */
    [nytimes.congress setCommitteesAndCommitteeMembersFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress committees and committee members"];
}

- (void)testChamberSchedule
{
    [articles.congress setChamberScheduleApiKey:@"API-KEY"];
    NSString *chamberScheduleApiKey = articles.congress.chamberScheduleApiKey;
    STAssertEqualObjects(@"API-KEY", chamberScheduleApiKey, @"Should be alphanumeric string");
    
    [articles.congress setChamberScheduleFormat:@"JSON"];
    NSString *chamberScheduleFormat = articles.congress.chamberScheduleFormat;
    STAssertEqualObjects(@"json", chamberScheduleFormat, @"Should be either XML or JSON");
}

- (void)testChamberScheduleConnection
{
    /**
        Chamber Schedule
     */
    
    NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:@"API-KEY"];
    /**
     Required
     */
    [nytimes.congress setChamberScheduleApiKey:@"API-KEY"];
    /**
     Optional
     */
    [nytimes.congress setChamberScheduleFormat:@"JSON"];
    
    [NYTimesCongress asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"congress chamber schedule"];
}


@end

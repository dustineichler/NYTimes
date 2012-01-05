//
//  _Congress.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/30/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "_Congress.h"

@implementation _Congress

@synthesize membersOfCongress, memberBiosAndRoles, newMembers, currentMembersByStateAndDistrict, membersLeavingOffice,memberVotePositions, memberVoteComparison, billsCosponsoredByAMember, memberSponsorshipComparison,memberFloorAppearances, rollCallVotes, votesByType, nominationVotes, recentBills, billsByMember, billDetails, billAmendmentsAndRelatedBills, billCosponsors, nomineeLists, nomineeDetails, nomineesByState, statePartyCounts, committeesAndCommitteeMembers, chamberSchedule;

- (id)init
{
    self = [super init];
    if (self == nil)
    {
        return nil;
    }
    return self;
}

#pragma mark -
#pragma mark MembersOfCongress

- (NSString *)membersOfCongressCongressNumber
{
    return self->membersOfCongress.congressNumber;
}

- (void)setMembersOfCongressCongressNumber:(NSString *)congressNumber
{    
    int cn = [congressNumber intValue];
    
    if ([self membersOfCongressChamber] == @"house") {
        if (cn >= 102 && cn <= 112)
        {
            self->membersOfCongress.congressNumber = congressNumber;
        }
    } else if ([self membersOfCongressChamber] == @"senate") {
        if (cn >= 80 && cn <= 112)
        {
            self->membersOfCongress.congressNumber = congressNumber;
        }
    } else {
        NSLog(@"--Error: Chamber is not set! Assign value before setting CongressNumber");
    }
}

- (NSString * )membersOfCongressChamber
{
    return self->membersOfCongress.chamber;
}

- (void)setMembersOfCongressChamber:(NSString *)chamber
{
    if (chamber == @"SENATE") {
        self->membersOfCongress.chamber = @"senate";
    } else if (chamber == @"HOUSE") {
        self->membersOfCongress.chamber = @"house";
    }
}

- (NSString *)membersOfCongressState
{
    return self->membersOfCongress.state;
}

- (void)setMembersOfCongressState:(NSString *)state
{
    if (state == @"AK"){
        self->membersOfCongress.state = state;
    } else if (state == @"AZ"){
        self->membersOfCongress.state = state;
    } else if (state == @"CT"){
        self->membersOfCongress.state = state;
    } else if (state == @"FL"){
        self->membersOfCongress.state = state;
    } else if (state == @"HI"){
        self->membersOfCongress.state = state;
    } else if (state == @"IL"){
        self->membersOfCongress.state = state;
    } else if (state == @"KY"){
        self->membersOfCongress.state = state;
    } else if (state == @"MD"){
        self->membersOfCongress.state = state;
    } else if (state == @"MN"){
        self->membersOfCongress.state = state;
    } else if (state == @"MT"){
        self->membersOfCongress.state = state;
    } else if (state == @"NE"){
        self->membersOfCongress.state = state;
    } else if (state == @"NM"){
        self->membersOfCongress.state = state;
    } else if (state == @"OH"){
        self->membersOfCongress.state = state;
    } else if (state == @"PA"){
        self->membersOfCongress.state = state;
    } else if (state == @"SC"){
        self->membersOfCongress.state = state;
    } else if (state == @"TX"){
        self->membersOfCongress.state = state;
    } else if (state == @"VI"){
        self->membersOfCongress.state = state;
    } else if (state == @"WI"){
        self->membersOfCongress.state = state;
    } else if (state == @"AL"){
        self->membersOfCongress.state = state;
    } else if (state == @"CA"){
        self->membersOfCongress.state = state;
    } else if (state == @"DC"){
        self->membersOfCongress.state = state;
    } else if (state == @"GA"){
        self->membersOfCongress.state = state;
    } else if (state == @"IA"){
        self->membersOfCongress.state = state;
    } else if (state == @"IN"){
        self->membersOfCongress.state = state;
    } else if (state == @"LA"){
        self->membersOfCongress.state = state;
    } else if (state == @"ME"){
        self->membersOfCongress.state = state;
    } else if (state == @"MO"){
        self->membersOfCongress.state = state;
    } else if (state == @"NC"){
        self->membersOfCongress.state = state;
    } else if (state == @"NH"){
        self->membersOfCongress.state = state;
    } else if (state == @"NV"){
        self->membersOfCongress.state = state;
    } else if (state == @"OK"){
        self->membersOfCongress.state = state;
    } else if (state == @"PR"){
        self->membersOfCongress.state = state;
    } else if (state == @"SD"){
        self->membersOfCongress.state = state;
    } else if (state == @"UT"){
        self->membersOfCongress.state = state;
    } else if (state == @"WV"){
        self->membersOfCongress.state = state;
    } else if (state == @"AR"){
        self->membersOfCongress.state = state;
    } else if (state == @"CO"){
        self->membersOfCongress.state = state;
    } else if (state == @"DE"){
        self->membersOfCongress.state = state;
    } else if (state == @"GU"){
        self->membersOfCongress.state = state;
    } else if (state == @"ID"){
        self->membersOfCongress.state = state;
    } else if (state == @"KS"){
        self->membersOfCongress.state = state;
    } else if (state == @"MA"){
        self->membersOfCongress.state = state;
    } else if (state == @"MI"){
        self->membersOfCongress.state = state;
    } else if (state == @"MS"){
        self->membersOfCongress.state = state;
    } else if (state == @"ND"){
        self->membersOfCongress.state = state;
    } else if (state == @"NJ"){
        self->membersOfCongress.state = state;
    } else if (state == @"NY"){
        self->membersOfCongress.state = state;
    } else if (state == @"OR"){
        self->membersOfCongress.state = state;
    } else if (state == @"RI"){
        self->membersOfCongress.state = state;
    } else if (state == @"TN"){
        self->membersOfCongress.state = state;
    } else if (state == @"VA"){
        self->membersOfCongress.state = state;
    } else if (state == @"WA"){
        self->membersOfCongress.state = state;
    } else if (state == @"WY"){
        self->membersOfCongress.state = state;
    }
}

- (NSString *)membersOfCongressDistrict
{
    return self->membersOfCongress.district;
}

- (void)setMembersOfCongressDistrict:(NSString *)district
{
    if ([self membersOfCongressChamber] == @"house") {
        self->membersOfCongress.district = district;
    } else if ([self membersOfCongressChamber] == @"senate") {
        NSLog(@"--Error: MembersOfCongressDistrict is only available to members of the House of Reps.");
    }
}

- (NSString *)membersOfCongressFormat
{
    return self->membersOfCongress.format;
}

- (void)setMembersOfCongressFormat:(NSString *)format
{
    if (format == @"XML") {
        self->membersOfCongress.format = @"xml";
    } else if (format == @"JSON") {
        self->membersOfCongress.format = @"json";
    }
}

- (NSString *)membersOfCongressApiKey
{
    return self->membersOfCongress.apiKey;
}

- (void)setMembersOfCongressApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->membersOfCongress.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark MemberBiosAndRoles

- (NSString *)memberBiosAndRolesMemberId
{
    return self->memberBiosAndRoles.memberId;
}

- (void)setMemberBiosAndRolesMemberId:(NSString *)memberId
{
    self->memberBiosAndRoles.memberId = memberId;
}

- (NSString *)memberBiosAndRolesFormat
{
    return self->memberBiosAndRoles.format;
}

- (void)setMemberBiosAndRolesFormat:(NSString *)format
{
    if (format == @"XML") {
        self->memberBiosAndRoles.format = @"xml";
    } else if (format == @"JSON") {
        self->memberBiosAndRoles.format = @"json";
    }
}

- (NSString *)memberBiosAndRolesApiKey
{
    return self->memberBiosAndRoles.apiKey;
}

- (void)setMemberBiosAndRolesApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->memberBiosAndRoles.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark NewMembers

- (NSString *)newMembersFormat
{
    return self->newMembers.format;
}

- (void)setNewMembersFormat:(NSString *)format
{
    if (format == @"XML") {
        self->newMembers.format = @"xml";
    } else if (format == @"JSON") {
        self->newMembers.format = @"json";
    }
}

- (NSString *)newMembersApiKey
{
    return self->newMembers.apiKey;
}

- (void)setNewMembersApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->newMembers.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark CurrentMembersByStateAndDistrict

- (NSString *)currentMembersByStateAndDistrictChamber
{
    return self->currentMembersByStateAndDistrict.chamber;
}

- (void)setCurrentMembersByStateAndDistrictChamber:(NSString *)chamber
{
    if (chamber == @"HOUSE") {
        self->currentMembersByStateAndDistrict.chamber = @"house";
    } else if (chamber == @"SENATE") {
        self->currentMembersByStateAndDistrict.chamber = @"senate";
    }
}

- (NSString *)currentMembersByStateAndDistrictState
{
    return self->currentMembersByStateAndDistrict.state;
}

- (void)setCurrentMembersByStateAndDistrictState:(NSString *)state
{
    if (state == @"AK"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"AZ"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"CT"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"FL"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"HI"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"IL"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"KY"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"MD"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"MN"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"MT"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"NE"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"NM"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"OH"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"PA"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"SC"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"TX"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"VI"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"WI"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"AL"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"CA"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"DC"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"GA"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"IA"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"IN"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"LA"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"ME"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"MO"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"NC"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"NH"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"NV"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"OK"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"PR"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"SD"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"UT"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"WV"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"AR"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"CO"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"DE"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"GU"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"ID"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"KS"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"MA"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"MI"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"MS"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"ND"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"NJ"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"NY"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"OR"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"RI"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"TN"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"VA"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"WA"){
        self->currentMembersByStateAndDistrict.state = state;
    } else if (state == @"WY"){
        self->currentMembersByStateAndDistrict.state = state;
    }
}

- (NSString *)currentMembersByStateAndDistrictDistrict
{
    return self->currentMembersByStateAndDistrict.district;
}

- (void)setCurrentMembersByStateAndDistrictDistrict:(NSString *)district
{
    if ([self currentMembersByStateAndDistrictChamber] == @"house") {
        self->currentMembersByStateAndDistrict.district = district;
    } else if ([self currentMembersByStateAndDistrictChamber] == @"senate") {
        NSLog(@"--Error: District only available to currentMembersByStateAndDistrictChamber if HOUSE is set");
    }
}

- (NSString *)currentMembersByStateAndDistrictFormat
{
    return self->currentMembersByStateAndDistrict.format;
}

- (void)setCurrentMembersByStateAndDistrictForamt:(NSString *)format
{
    if (format == @"XML") {
        self->currentMembersByStateAndDistrict.format = @"xml";
    } else if (format == @"JSON") {
        self->currentMembersByStateAndDistrict.format = @"json";
    }
}

- (NSString *)currentMembersByStateAndDistrictApiKey
{
    return self->currentMembersByStateAndDistrict.apiKey;
}

- (void)setCurrentMembersByStateAndDistrictApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->currentMembersByStateAndDistrict.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark MembersLeavingOffice

- (NSString *)membersLeavingOfficeCongressNumber
{
    return self->membersLeavingOffice.congressNumber;
}

- (void)setMembersLeavingOfficeCongressNumber:(NSString *)congressNumber
{
    if (congressNumber == @"111" || congressNumber == @"112")
    {
        self->membersLeavingOffice.congressNumber = congressNumber;
    } 
}

- (NSString *)membersLeavingOfficeChamber
{
    return self->membersLeavingOffice.chamber;
}

- (void)setMembersLeavingOfficeChamber:(NSString *)chamber
{
    if (chamber == @"SENATE") {
        self->membersLeavingOffice.chamber = @"senate";
    } else if (chamber == @"HOUSE") {
        self->membersLeavingOffice.chamber = @"house";
    }
}

- (NSString *)membersLeavingOfficeFormat
{
    return self->membersLeavingOffice.format;
}

- (void)setMembersLeavingOfficeFormat:(NSString *)format
{
    if (format == @"XML") {
        self->membersLeavingOffice.format = @"xml";
    } else if (format == @"JSON") {
        self->membersLeavingOffice.format = @"json";
    }
}

- (NSString *)membersLeavingOfficeApiKey
{
    return self->membersLeavingOffice.apiKey;
}

- (void)setMembersLeavingOfficeApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->membersLeavingOffice.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark MemberVotePositions

- (NSString *)memberVotePositionsMemberId
{
    return self->memberVotePositions.memberId;
}

- (void)setMemberVotePositionsMemberId:(NSString *)memberId
{
    if (memberId && [memberId length] > 0)
    {
        self->memberVotePositions.memberId = memberId;
    }
}

- (NSString *)memberVotePositionsFormat
{
    return self->memberVotePositions.format;
}

- (void)setMemberVotePositionsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->memberVotePositions.format = @"xml";
    } else if (format == @"JSON") {
        self->memberVotePositions.format = @"json";
    }
}

- (NSString *)memberVotePositionsApiKey
{
    return self->memberVotePositions.apiKey;
}

- (void)setMemberVotePositionsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->memberVotePositions.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark MemberVoteComparison

- (NSString *)memberVoteComparisonFirstMemberId
{
    return self->memberVoteComparison.firstMemberId;
}

- (void)setMemberVoteComparisonFirstMemberId:(NSString *)firstMemberId
{
    if (firstMemberId && [firstMemberId length] > 0)
    {
        self->memberVoteComparison.firstMemberId = [firstMemberId lowercaseString];
    }
}

- (NSString *)memberVoteComparisonSecondMemberId
{
    return self->memberVoteComparison.secondMemberId;
}

- (void)setMemberVoteComparisonSecondMemberId:(NSString *)secondMemberId
{
    if (secondMemberId && [secondMemberId length] > 0)
    {
        self->memberVoteComparison.secondMemberId = [secondMemberId lowercaseString];
    }
}

- (NSString *)memberVoteComparisonCongressNumber
{
    return self->memberVoteComparison.congressNumber;
}

- (void)setMemberVoteComparisonCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if ([self memberVoteComparisonChamber] == @"house") {
        if (cn >= 102 && cn <= 112)
        {
            self->memberVoteComparison.congressNumber = congressNumber;
        }
    } else if ([self memberVoteComparisonChamber] == @"senate") {
        if (cn >= 101 && cn <= 112)
        {
            self->memberVoteComparison.congressNumber = congressNumber;
        }
    } else {
        NSLog(@"--Error: Chamber is not set! Assign value before setting CongressNumber");
    }
}

- (NSString *)memberVoteComparisonChamber
{
    return self->memberVoteComparison.chamber;
}

- (void)setMemberVoteComparisonChamber:(NSString *)chamber
{
    if (chamber == @"HOUSE") {
        self->memberVoteComparison.chamber = @"house";
    } else if (chamber == @"SENATE") {
        self->memberVoteComparison.chamber = @"senate";
    }
}

- (NSString *)memberVoteComparisonFormat
{
    return self->memberVoteComparison.format;
}

- (void)setMemberVoteComparisonFormat:(NSString *)format
{
    if (format == @"XML") {
        self->memberVoteComparison.format = @"xml";
    } else if (format == @"JSON") {
        self->memberVoteComparison.format = @"json";
    }
}

- (NSString *)memberVoteComparisonApiKey
{
    return self->memberVoteComparison.apiKey;
}

- (void)setMemberVoteComparisonApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->memberVoteComparison.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark BillsCosponsoredByAMember

- (NSString *)billsCosponsoredByAMemberMemberId
{
    return self->billsCosponsoredByAMember.memberId;
}

- (void)setBillsCosponsoredByAMemberMemberId:(NSString *)memberId
{
    if (memberId && [memberId length] > 0)
    {
        self->billsCosponsoredByAMember.memberId = [memberId lowercaseString];
    }
}

- (NSString *)billsCosponsoredByAMemberType
{
    return self->billsCosponsoredByAMember.type;
}

- (void)setBillsCosponsoredByAMemberType:(NSString *)type
{
    if ([[self billsCosponsoredByAMemberMemberId] length] > 0)
    {
        if (type == @"COSPONSORED") {
            self->billsCosponsoredByAMember.type = @"cosponsored";
        } else if (type == @"WITHDRAWN") {
            self->billsCosponsoredByAMember.type = @"withdrawn";
        }
    } else {
        NSLog(@"--ERROR: MemberID is required");
    }
}

- (NSString *)billsCosponsoredByAMemberFormat
{
    return self->billsCosponsoredByAMember.format;
}

- (void)setBillsCosponsoredByAMemberFormat:(NSString *)format
{
    if (format == @"XML") {
        self->billsCosponsoredByAMember.format = @"xml";
    } else if (format == @"JSON") {
        self->billsCosponsoredByAMember.format = @"json";
    }
}

- (NSString *)billsCosponsoredByAMemberApiKey
{
    return self->billsCosponsoredByAMember.apiKey;
}

- (void)setBillsCosponsoredByAMemberApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->billsCosponsoredByAMember.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark MemberSponsorshipComparison

- (NSString *)memberSponsorshipComparisonMemberId1
{
    return self->memberSponsorshipComparison.memberId1;
}

- (void)setMemberSponsorshipComparisonMemberId1:(NSString *)memberId1
{
    if (memberId1 && [memberId1 length] > 0)
    {
        self->memberSponsorshipComparison.memberId1 = memberId1;
    }
}

- (NSString *)memberSponsorshipComparisonMemberId2
{
    return self->memberSponsorshipComparison.memberId2;
}

- (void)setMemberSponsorshipComparisonMemberId2:(NSString *)memberId2
{
    if (memberId2 && [memberId2 length] > 0)
    {
        self->memberSponsorshipComparison.memberId2 = memberId2;
    }
}

- (NSString *)memberSponsorshipComparisonCongressNumber
{
    return self->memberSponsorshipComparison.congressNumber;
}

- (void)setMemberSponsorshipComparisonCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if ([self memberSponsorshipComparisonChamber] == @"house") {
        if (cn >= 102 && cn <= 112)
        {
            self->memberSponsorshipComparison.congressNumber = congressNumber;
        }
    } else if ([self memberSponsorshipComparisonChamber] == @"senate") {
        if (cn >= 101 && cn <= 112)
        {
            self->memberSponsorshipComparison.congressNumber = congressNumber;
        }
    } else {
        NSLog(@"--Error: Chamber is not set! Assign value before setting CongressNumber");
    }
}

- (NSString *)memberSponsorshipComparisonChamber
{
    return self->memberSponsorshipComparison.chamber;
}

- (void)setMemberSponsorshipComparisonChamber:(NSString *)chamber
{
    if (chamber == @"HOUSE") {
        self->memberSponsorshipComparison.chamber = @"house";
    } else if (chamber == @"SENATE") {
        self->memberSponsorshipComparison.chamber = @"senate";
    }
}

- (NSString *)memberSponsorshipComparisonFormat
{
    return self->memberSponsorshipComparison.format;
}

- (void)setMemberSponsorshipComparisonFormat:(NSString *)format
{
    if (format == @"XML") {
        self->memberSponsorshipComparison.format = @"xml";
    } else if (format == @"JSON") {
        self->memberSponsorshipComparison.format = @"json";
    }
}

- (NSString *)memberSponsorshipComparisonApiKey
{
    return self->memberSponsorshipComparison.apiKey;
}

- (void)setMemberSponsorshipComparisonApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->memberSponsorshipComparison.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark MemberFloorAppearances

- (NSString *)memberFloorAppearancesMemberId
{
    return self->memberFloorAppearances.memberId;
}

- (void)setMemberFloorAppearancesMemberId:(NSString *)memberId
{
    if (memberId && [memberId length] > 0)
    {
        self->memberFloorAppearances.memberId = memberId;
    }
}

- (NSString *)memberFloorAppearancesFormat
{
    return self->memberFloorAppearances.format;
}

- (void)setMemberFloorAppearancesFormat:(NSString *)format
{
    if (format == @"XML") {
        self->memberFloorAppearances.format = @"xml";
    } else if (format == @"JSON") {
        self->memberFloorAppearances.format = @"json";
    }
}

- (NSString *)memberFloorAppearancesApiKey
{
    return self->memberFloorAppearances.apiKey;
}

- (void)setMemberFloorAppearancesApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->memberFloorAppearances.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark RollCallVotes

- (NSString *)rollCallVotesCongressNumber
{
    return self->rollCallVotes.congressNumber;
}

- (void)setRollCallVotesCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if ([self rollCallVotesChamber] == @"house") {
        if (cn >= 102 && cn <= 112)
        {
            self->rollCallVotes.congressNumber = congressNumber;
        }
    } else if ([self rollCallVotesChamber] == @"senate") {
        if (cn >= 101 && cn <= 112)
        {
            self->rollCallVotes.congressNumber = congressNumber;
        }
    } else {
        NSLog(@"--Error: Chamber is not set! Assign value before setting CongressNumber");
    }
}

- (NSString *)rollCallVotesChamber
{
    return self->rollCallVotes.chamber;
}

- (void)setRollCallVotesChamber:(NSString *)chamber
{
    if (chamber == @"HOUSE") {
        self->rollCallVotes.chamber = @"house";
    } else if (chamber == @"SENATE") {
        self->rollCallVotes.chamber = @"senate";
    }
}

- (NSString *)rollCallVotesSessionNumber
{
    return self->rollCallVotes.sessionNumber;
}

- (void)setRollCallVotesSessionNumber:(NSString *)sessionNumber
{
    if (sessionNumber == @"1" || sessionNumber == @"2") {
        self->rollCallVotes.sessionNumber = sessionNumber;
    } else {
        NSLog(@"--Error: Spencial Session number?");
    }
}

- (NSString *)rollCallVotesRollCallNumber
{
    return self->rollCallVotes.rollCallNumber;
}

- (void)setRollCallVotesRollCallNumber:(NSString *)rollCallNumber
{
    if (rollCallNumber && [rollCallNumber length] > 0)
    {
        self->rollCallVotes.rollCallNumber = rollCallNumber;
    }
}

- (NSString *)rollCallVotesFormat
{
    return self->rollCallVotes.format;
}

- (void)setRollCallVotesFormat:(NSString *)format
{
    if (format == @"JSON") {
        self->rollCallVotes.format = @"json";
    } else if (format == @"XML") {
        self->rollCallVotes.format = @"xml";
    }
}

- (NSString *)rollCallVotesApiKey
{
    return self->rollCallVotes.apiKey;
}

- (void)setRollCallVotesApiKey:(NSString *)apiKey
{
    self->rollCallVotes.apiKey = apiKey;
}

#pragma mark -
#pragma mark VotesByType

- (NSString *)votesByTypeCongressNumber
{
    return self->votesByType.congressNumber;
}

- (void)setVotesByTypeCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if ([self votesByTypeChamber] == @"house") {
        if (cn >= 102 && cn <= 112)
        {
            self->votesByType.congressNumber = congressNumber;
        }
    } else if ([self votesByTypeChamber] == @"senate") {
        if (cn >= 101 && cn <= 112)
        {
            self->votesByType.congressNumber = congressNumber;
        }
    } else {
        NSLog(@"--Error: Chamber is not set! Assign value before setting CongressNumber");
    }
}

- (NSString *)votesByTypeChamber
{
    return self->votesByType.chamber;
}

- (void)setVotesByTypeChamber:(NSString *)chamber
{
    if (chamber == @"HOUSE") {
        self->votesByType.chamber = @"house";
    } else if (chamber == @"SENATE") {
        self->votesByType.chamber = @"senate";
    }
}

- (NSString *)votesByTypeVoteType
{
    return self->votesByType.voteType;
}

- (void)setVotesByTypeVoteType:(NSString *)voteType
{
    if (voteType == @"MISSED VOTES") {
        self->votesByType.voteType = @"missed_votes";
    } else if (voteType == @"PARTY VOTES") {
        self->votesByType.voteType = @"party_votes";        
    } else if (voteType == @"LONENO") {
        self->votesByType.voteType = @"loneno";
    } else if (voteType == @"PERFECT") {
        self->votesByType.voteType = @"perfect";
    }
}

- (NSString *)votesByTypeFormat
{
    return self->votesByType.format;
}

- (void)setVotesByTypeFormat:(NSString *)format
{
    if (format == @"XML") {
        self->votesByType.format = @"xml";
    } else if (format == @"JSON") {
        self->votesByType.format = @"json";
    }
}

- (NSString *)votesByTypeApiKey
{
    return self->votesByType.apiKey;
}

- (void)setVotesByTypeApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->votesByType.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark VotesByDate

- (NSString *)votesByDateChamber
{
    return self->votesByDate.chamber;
}

- (void)setVotesByDateChamber:(NSString *)chamber
{
    if (chamber == @"HOUSE") {
        self->votesByDate.chamber = @"house";
    } else if (chamber == @"SENATE") {
        self->votesByDate.chamber = @"senate";
    }
}

- (NSString *)votesByDateYearAndMonth
{
    return self->votesByDate.yearAndMonth;
}

- (void)setVotesByDateYearAndMonth:(NSString *)yearAndMonth
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMM"];
    
    NSDate *_yearAndMonth = [formatter dateFromString:yearAndMonth];
    
    NSString *result = [formatter stringFromDate:_yearAndMonth];
    
    if (result)
    {
        self->votesByDate.yearAndMonth = result;
    }
}

- (NSString *)votesByDateRangeOfDates
{
    return self->votesByDate.rangeOfDates;
}

- (void)setVotesByDateRangeOfDates:(NSString *)rangeOfDates
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyy-MM-dd/yyyy-MM-dd"];
    
    NSDate *_date = [formatter dateFromString:rangeOfDates];
    
    NSString *result = [formatter stringFromDate:_date];
    
    if (result)
    {
        self->votesByDate.rangeOfDates = result;
    }
}

- (NSString *)votesByDateFormat
{
    return self->votesByDate.format;
}

- (void)setVotesByDateFormat:(NSString *)format
{
    if (format == @"JSON") {
        self->votesByDate.format = @"json";
    } else if (format == @"XML") {
        self->votesByDate.format = @"xml";
    }
}

- (NSString *)votesByDateApiKey
{
    return self->votesByDate.apiKey;
}

- (void)setVotesByDateApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->votesByDate.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark NominationVotes

- (NSString *)nominationVotesCongressNumber
{
    return self->nominationVotes.congressNumber;
}

- (void)setNominationVotesCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if (cn >= 101 && cn <= 112)
    {
        self->nominationVotes.congressNumber = congressNumber;
    }
}

- (NSString *)nominationVotesFormat
{
    return self->nominationVotes.format;
}

- (void)setNominationVotesFormat:(NSString *)format
{
    if (format == @"XML") {
        self->nominationVotes.format = @"xml";
    } else if (format == @"JSON") {
        self->nominationVotes.format = @"json";
    }
}

- (NSString *)nominationVotesApiKey
{
    return self->nominationVotes.apiKey;
}

- (void)setNominationVotesApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->nominationVotes.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark RecentBills

- (NSString *)recentBillsCongressNumber
{
    return self->recentBills.congressNumber;
}

- (void)setRecentBillsCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if (cn >= 101 && cn <= 112)
    {
        self->recentBills.congressNumber = congressNumber;
    }
}

- (NSString *)recentBillsChamber
{
    return self->recentBills.chamber;
}

- (void)setRecentBillsChamber:(NSString *)chamber
{
    if (chamber == @"HOUSE") {
        self->recentBills.chamber = @"house";
    } else if (chamber == @"SENATE") {
        self->recentBills.chamber = @"senate";
    }
}

- (NSString *)recentBillsType
{
    return self->recentBills.type;
}

- (void)setRecentBillsType:(NSString *)type
{
    if (type == @"INTRODUCED") {
        self->recentBills.type = @"introduced";
    } else if (type == @"UPDATED") {
        self->recentBills.type = @"updated";
    } else if (type == @"PASSED") {
        self->recentBills.type = @"passed";
    } else if (type == @"MAJOR") {
        self->recentBills.type = @"major";
    }
}

- (NSString *)recentBillsFormat
{
    return self->recentBills.format;
}

- (void)setRecentBillsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->recentBills.format = @"xml";
    } else if (format == @"JSON") {
        self->recentBills.format = @"json";
    }
}

- (NSString *)recentBillsApiKey
{
    return self->recentBills.apiKey;
}

- (void)setRecentBillsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->recentBills.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark BillsByMember

- (NSString *)billsByMemberMemberId
{
    return self->billsByMember.memberId;
}

- (void)setBillsByMemberMemberId:(NSString *)memberId
{
    if (memberId && [memberId  length] > 0)
    {
        self->billsByMember.memberId = [memberId lowercaseString];
    }
}

- (NSString *)billsByMemberType
{
    return self->billsByMember.type;
}

- (void)setBillsByMemberType:(NSString *)type
{
    if (type == @"INTRODUCED") {
        self->billsByMember.type = @"introduced";
    } else if (type == @"UPDATED") {
        self->billsByMember.type = @"updated";
    }
}

- (NSString *)billsByMemberFormat
{
    return self->billsByMember.format;
}

- (void)setBillsByMemberFormat:(NSString *)format
{
    if (format == @"XML") {
        self->billsByMember.format = @"xml";
    } else if (format == @"JSON") {
        self->billsByMember.format = @"json";
    }
}

- (NSString *)billsByMemberApiKey
{
    return self->billsByMember.apiKey;
}

- (void)setBillsByMemberApiKey:(NSString *)apiKey
{
    self->billsByMember.apiKey = apiKey;
}

#pragma mark -
#pragma mark BillDetails

- (NSString *)billDetailsCongressNumber
{
    return self->billDetails.congressNumber;
}

- (void)setBillDetailsCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if (cn >= 105 && cn <= 112)
    {
        self->billDetails.congressNumber = congressNumber;
    }
}

- (NSString *)billDetailsBillId
{
    return self->billDetails.billId;
}

- (void)setBillDetailsBillId:(NSString *)billId
{
    if (billId && [billId length] > 0)
    {
        self->billDetails.billId = [billId lowercaseString];
    }
}

- (NSString *)billDetailsFormat
{
    return self->billDetails.format;
}

- (void)setBillDetailsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->billDetails.format = @"xml";
    } else if (format == @"JSON") {
        self->billDetails.format = @"json";
    }
}

- (NSString *)billDetailsApiKey
{
    return self->billDetails.apiKey;
}

- (void)setBillDetailsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->billDetails.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark BillAmendmentsAndRelatedBills

- (NSString *)billAmendmentsAndRelatedBillsCongressNumber
{
    return self->billAmendmentsAndRelatedBills.congressNumber;
}

- (void)setBillAmendmentsAndRelatedBillsCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if (cn >= 105 && cn <= 112)
    {
        self->billAmendmentsAndRelatedBills.congressNumber = congressNumber;
    }
}

- (NSString *)billAmendmentsAndRelatedBillsBillId
{
    return self->billAmendmentsAndRelatedBills.billId;
}

- (void)setBillAmendmentsAndRelatedBillsBillId:(NSString *)billId
{
    if (billId && [billId length] > 0)
    {
        self->billAmendmentsAndRelatedBills.billId = [billId lowercaseString];
    }
}

- (NSString *)billAmendmentsAndRelatedBillsResource
{
    return self->billAmendmentsAndRelatedBills.resource;
}

- (void)setBillAmendmentsAndRelatedBillsResource:(NSString *)resource
{
    if (resource == @"SUBJECTS") {
        self->billAmendmentsAndRelatedBills.resource = @"subjects";
    } else if (resource == @"ADMENDMENTS") {
        self->billAmendmentsAndRelatedBills.resource = @"amendments";
    } else if (resource == @"RELATED") {
        self->billAmendmentsAndRelatedBills.resource = @"related";
    }
}

- (NSString *)billAmendmentsAndRelatedBillsFormat
{
    return self->billAmendmentsAndRelatedBills.format;
}

- (void)setBillAmendmentsAndRelatedBillsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->billAmendmentsAndRelatedBills.format = @"xml";
    } else if (format == @"JSON") {
        self->billAmendmentsAndRelatedBills.format = @"json";
    }
}

- (NSString *)billAmendmentsAndRelatedBillsApiKey
{
    return self->billAmendmentsAndRelatedBills.apiKey;
}

- (void)setBillAmendmentsAndRelatedBillsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->billAmendmentsAndRelatedBills.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark BillCosponsors

- (NSString *)billCosponsorsCongressNumber
{
    return self->billCosponsors.congressNumber;
}

- (void)setBillCosponsorsCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if (cn >= 105 && cn <= 112)
    {
        self->billCosponsors.congressNumber = congressNumber;
    }
}

- (NSString *)billCosponsorsBillId
{
    return self->billCosponsors.billId;
}

- (void)setBillCosponsorsBillId:(NSString *)billId
{
    if (billId && [billId length] > 0)
    {
        self->billCosponsors.billId = [billId lowercaseString];
    }
}

- (NSString *)billCosponsorsFormat
{
    return self->billCosponsors.format;
}

- (void)setBillCosponsorsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->billCosponsors.format = @"xml";
    } else if (format == @"JSON") {
        self->billCosponsors.format = @"json";
    }
}

- (NSString *)billCosponsorsApiKey
{
    return self->billCosponsors.apiKey;
}

- (void)setBillCosponsorsApiKey:(NSString *)apiKey
{
    self->billCosponsors.apiKey = apiKey;
}

#pragma mark -
#pragma mark NomineeLists

- (NSString *)nomineeListsCongressNumber
{
    return self->nomineeLists.congressNumber;
}

- (void)setNomineeListsCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if (cn >= 107 && cn <= 112)
    {
        self->nomineeLists.congressNumber = congressNumber;
    }
}

- (NSString *)nomineeListsNomineeCategory
{
    return self->nomineeLists.nomineeCategory;
}

- (void)setNomineeListsNomineeCategory:(NSString *)nomineeCategory
{
    if (nomineeCategory == @"RECEIVED") {
        self->nomineeLists.nomineeCategory = @"received";
    } else if (nomineeCategory == @"UPDATED") {
        self->nomineeLists.nomineeCategory = @"updated";
    } else if (nomineeCategory == @"CONFIRMED") {
        self->nomineeLists.nomineeCategory = @"confirmed";    
    } else if (nomineeCategory == @"WITHDRAWN") {
        self->nomineeLists.nomineeCategory = @"withdrawn";
    }
}

- (NSString *)nomineeListsFormat
{
    return self->nomineeLists.format;
}

- (void)setNomineeListsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->nomineeLists.format = @"xml";
    } else if (format == @"JSON") {
        self->nomineeLists.format = @"json";
    }
}

- (NSString *)nomineeListsApiKey
{
    return self->nomineeLists.apiKey;
}

- (void)setNomineeListsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->nomineeLists.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark NomineeDetails

- (NSString *)nomineeDetailsCongressNumber
{
    return self->nomineeDetails.congressNumber;
}

- (void)setNomineeDetailsCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if (cn >= 107 && cn <= 112)
    {
        self->nomineeDetails.congressNumber = congressNumber;
    }
}

- (NSString *)nomineeDetailsNomineeId
{
    return self->nomineeDetails.nomineeId;
}

- (void)setNomineeDetailsNomineeId:(NSString *)nomineeId
{
    if (nomineeId && [nomineeId length] > 0)
    {
        self->nomineeDetails.nomineeId = nomineeId;
    }
}

- (NSString *)nomineeDetailsFormat
{
    return self->nomineeDetails.format;
}

- (void)setNomineeDetailsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->nomineeDetails.format = @"xml";
    } else if (format == @"JSON") {
        self->nomineeDetails.format = @"json";
    }
}

- (NSString *)nomineeDetailsApiKey
{
    return self->nomineeDetails.apiKey;
}

- (void)setNomineeDetailsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->nomineeDetails.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark NomineesByState

- (NSString *)nomineesByStateCongressNumber
{
    return self->nomineesByState.congresNumber;
}

- (void)setNomineesByStateCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if (cn >= 107 && cn <= 112)
    {
        self->nomineesByState.congresNumber = congressNumber;
    }
}

- (NSString *)nomineesByStateState
{
    return self->nomineesByState.state;
}

- (void)setNomineesByStateState:(NSString *)state
{
    if (state == @"AK"){
        self->nomineesByState.state = state;
    } else if (state == @"AZ"){
        self->nomineesByState.state = state;
    } else if (state == @"CT"){
        self->nomineesByState.state = state;
    } else if (state == @"FL"){
        self->nomineesByState.state = state;
    } else if (state == @"HI"){
        self->nomineesByState.state = state;
    } else if (state == @"IL"){
        self->nomineesByState.state = state;
    } else if (state == @"KY"){
        self->nomineesByState.state = state;
    } else if (state == @"MD"){
        self->nomineesByState.state = state;
    } else if (state == @"MN"){
        self->nomineesByState.state = state;
    } else if (state == @"MT"){
        self->nomineesByState.state = state;
    } else if (state == @"NE"){
        self->nomineesByState.state = state;
    } else if (state == @"NM"){
        self->nomineesByState.state = state;
    } else if (state == @"OH"){
        self->nomineesByState.state = state;
    } else if (state == @"PA"){
        self->nomineesByState.state = state;
    } else if (state == @"SC"){
        self->nomineesByState.state = state;
    } else if (state == @"TX"){
        self->nomineesByState.state = state;
    } else if (state == @"VI"){
        self->nomineesByState.state = state;
    } else if (state == @"WI"){
        self->nomineesByState.state = state;
    } else if (state == @"AL"){
        self->nomineesByState.state = state;
    } else if (state == @"CA"){
        self->nomineesByState.state = state;
    } else if (state == @"DC"){
        self->nomineesByState.state = state;
    } else if (state == @"GA"){
        self->nomineesByState.state = state;
    } else if (state == @"IA"){
        self->nomineesByState.state = state;
    } else if (state == @"IN"){
        self->nomineesByState.state = state;
    } else if (state == @"LA"){
        self->nomineesByState.state = state;
    } else if (state == @"ME"){
        self->nomineesByState.state = state;
    } else if (state == @"MO"){
        self->nomineesByState.state = state;
    } else if (state == @"NC"){
        self->nomineesByState.state = state;
    } else if (state == @"NH"){
        self->nomineesByState.state = state;
    } else if (state == @"NV"){
        self->nomineesByState.state = state;
    } else if (state == @"OK"){
        self->nomineesByState.state = state;
    } else if (state == @"PR"){
        self->nomineesByState.state = state;
    } else if (state == @"SD"){
        self->nomineesByState.state = state;
    } else if (state == @"UT"){
        self->nomineesByState.state = state;
    } else if (state == @"WV"){
        self->nomineesByState.state = state;
    } else if (state == @"AR"){
        self->nomineesByState.state = state;
    } else if (state == @"CO"){
        self->nomineesByState.state = state;
    } else if (state == @"DE"){
        self->nomineesByState.state = state;
    } else if (state == @"GU"){
        self->nomineesByState.state = state;
    } else if (state == @"ID"){
        self->nomineesByState.state = state;
    } else if (state == @"KS"){
        self->nomineesByState.state = state;
    } else if (state == @"MA"){
        self->nomineesByState.state = state;
    } else if (state == @"MI"){
        self->nomineesByState.state = state;
    } else if (state == @"MS"){
        self->nomineesByState.state = state;
    } else if (state == @"ND"){
        self->nomineesByState.state = state;
    } else if (state == @"NJ"){
        self->nomineesByState.state = state;
    } else if (state == @"NY"){
        self->nomineesByState.state = state;
    } else if (state == @"OR"){
        self->nomineesByState.state = state;
    } else if (state == @"RI"){
        self->nomineesByState.state = state;
    } else if (state == @"TN"){
        self->nomineesByState.state = state;
    } else if (state == @"VA"){
        self->nomineesByState.state = state;
    } else if (state == @"WA"){
        self->nomineesByState.state = state;
    } else if (state == @"WY"){
        self->nomineesByState.state = state;
    }
}

- (NSString *)nomineesByStateFormat
{
    return self->nomineesByState.format;
}

- (void)setNomineesByStateFormat:(NSString *)format
{
    if (format == @"XML") {
        self->nomineesByState.format = @"xml";
    } else if (format == @"JSON") {
        self->nomineesByState.format = @"json";
    }
}

- (NSString *)nomineesByStateApiKey
{
    return self->nomineesByState.apiKey;
}

- (void)setNomineesByStateApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->nomineesByState.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark StatePartyCounts

- (NSString *)statePartyCountsFormat
{
    return self->statePartyCounts.format;
}

- (void)setStatePartyCountsFormat:(NSString *)format
{
    if (format == @"XML") {
        self->statePartyCounts.format = @"xml";
    } else if (format == @"JSON") {
        self->statePartyCounts.format = @"json";
    }
}

- (NSString *)statePartyCountsApiKey
{
    return self->statePartyCounts.apiKey;
}

- (void)setStatePartyCountsApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->statePartyCounts.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark CommitteesAndCommitteeMembers

- (NSString *)committeesAndCommitteeMembersCongressNumber
{
    return self->committeesAndCommitteeMembers.congressNumber;
}

- (void)setCommitteesAndCommitteeMembersCongressNumber:(NSString *)congressNumber
{
    int cn = [congressNumber intValue];
    
    if (cn >= 107 && cn <= 112)
    {
        self->committeesAndCommitteeMembers.congressNumber = congressNumber;
    }
}

- (NSString *)committeesAndCommitteeMembersChamber
{
    return self->committeesAndCommitteeMembers.chamber;
}

- (void)setCommitteesAndCommitteeMembersChamber:(NSString *)chamber
{
    if (chamber == @"HOUSE") {
        self->committeesAndCommitteeMembers.chamber = @"house";
    } else if (chamber == @"SENATE") {
        self->committeesAndCommitteeMembers.chamber = @"senate";
    }
}

- (NSString *)committeesAndCommitteeMembersCommitteeId
{
    return self->committeesAndCommitteeMembers.committeeId;
}

- (void)setCommitteesAndCommitteeMembersCommitteeId:(NSString *)committeeId
{
    if (committeeId && [committeeId length] > 0)
    {
        self->committeesAndCommitteeMembers.committeeId = [committeeId lowercaseString];
    }
}

- (NSString *)committeesAndCommitteeMembersFormat
{
    return self->committeesAndCommitteeMembers.format;
}

- (void)setCommitteesAndCommitteeMembersFormat:(NSString *)format
{
    if (format == @"XML") {
        self->committeesAndCommitteeMembers.format = @"xml";
    } else if (format == @"JSON") {
        self->committeesAndCommitteeMembers.format = @"json";
    }
}

- (NSString *)committeesAndCommitteeMembersApiKey
{
    return self->committeesAndCommitteeMembers.apiKey;
}

- (void)setCommitteesAndCommitteeMembersApiKey:(NSString *)apiKey
{
    self->committeesAndCommitteeMembers.apiKey = apiKey;
}

#pragma mark -
#pragma mark ChamberSchedule

- (NSString *)chamberScheduleFormat
{
    return self->chamberSchedule.format;
}

- (void)setChamberScheduleFormat:(NSString *)format
{
    if (format == @"XML") {
        self->chamberSchedule.format = @"xml";
    } else if (format == @"JSON") {
        self->chamberSchedule.format = @"json";
    }
}

- (NSString *)chamberScheduleApiKey
{
    return self->chamberSchedule.apiKey;
}

- (void)setChamberScheduleApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->chamberSchedule.apiKey = apiKey;
    }
}

- (NSString *)chamberScheduleChamber
{
    return self->chamberSchedule.chamber;
}

- (void)setChamberScheduleChamber:(NSString *)chamber
{
    self->chamberSchedule.chamber = chamber;
}

@end

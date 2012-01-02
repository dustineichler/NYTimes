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
    self->memberSponsorshipComparison.memberId1 = memberId1;
}

- (NSString *)memberSponsorshipComparisonMemberId2
{
    return self->memberSponsorshipComparison.memberId2;
}

- (void)setMemberSponsorshipComparisonMemberId2:(NSString *)memberId2
{
    self->memberSponsorshipComparison.memberId2 = memberId2;
}

- (NSString *)memberSponsorshipComparisonCongressNumber
{
    return self->memberSponsorshipComparison.congressNumber;
}

- (void)setMemberSponsorshipComparisonCongressNumber:(NSString *)congressNumber
{
    self->memberSponsorshipComparison.congressNumber = congressNumber;
}

- (NSString *)memberSponsorshipComparisonChamber
{
    return self->memberSponsorshipComparison.chamber;
}

- (void)setMemberSponsorshipComparisonChamber:(NSString *)chamber
{
    self->memberSponsorshipComparison.chamber = chamber;
}

- (NSString *)memberSponsorshipComparisonFormat
{
    return self->memberSponsorshipComparison.format;
}

- (void)setMemberSponsorshipComparisonFormat:(NSString *)format
{
    self->memberSponsorshipComparison.format = format;
}

- (NSString *)memberSponsorshipComparisonApiKey
{
    return self->memberSponsorshipComparison.apiKey;
}

- (void)setMemberSponsorshipComparisonApiKey:(NSString *)apiKey
{
    self->memberSponsorshipComparison.apiKey = apiKey;
}

#pragma mark -
#pragma mark MemberFloorAppearances

- (NSString *)memberFloorAppearancesMemberId
{
    return self->memberFloorAppearances.memberId;
}

- (void)setMemberFloorAppearancesMemberId:(NSString *)memberId
{
    self->memberFloorAppearances.memberId = memberId;
}

- (NSString *)memberFloorAppearancesFormat
{
    return self->memberFloorAppearances.format;
}

- (void)setMemberFloorAppearancesFormat:(NSString *)format
{
    self->memberFloorAppearances.format = format;
}

- (NSString *)memberFloorAppearancesApiKey
{
    return self->memberFloorAppearances.apiKey;
}

- (void)setMemberFloorAppearancesApiKey:(NSString *)apiKey
{
    self->memberFloorAppearances.apiKey = apiKey;
}

#pragma mark -
#pragma mark RollCallVotes

- (NSString *)rollCallVotesCongressNumber
{
    return self->rollCallVotes.congressNumber;
}

- (void)setRollCallVotesCongressNumber:(NSString *)congressNumber
{
    self->rollCallVotes.congressNumber = congressNumber;
}

- (NSString *)rollCallVotesChamber
{
    return self->rollCallVotes.chamber;
}

- (void)setRollCallVotesChamber:(NSString *)chamber
{
    self->rollCallVotes.chamber = chamber;
}

- (NSString *)rollCallVotesSessionNumber
{
    return self->rollCallVotes.sessionNumber;
}

- (void)setRollCallVotesSessionNumber:(NSString *)sessionNumber
{
    self->rollCallVotes.sessionNumber = sessionNumber;
}

- (NSString *)rollCallVotesRollCallNumber
{
    return self->rollCallVotes.rollCallNumber;
}

- (void)setRollCallVotesRollCallNumber:(NSString *)rollCallNumber
{
    self->rollCallVotes.rollCallNumber = rollCallNumber;
}

- (NSString *)rollCallVotesFormat
{
    return self->rollCallVotes.format;
}

- (void)setRollCallVotesFormat:(NSString *)format
{
    self->rollCallVotes.format = format;
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
    self->votesByType.congressNumber = congressNumber;
}

- (NSString *)votesByTypeChamber
{
    return self->votesByType.chamber;
}

- (void)setVotesByTypeChamber:(NSString *)chamber
{
    self->votesByType.chamber = chamber;
}

- (NSString *)votesByTypeVoteType
{
    return self->votesByType.voteType;
}

- (void)setVotesByTypeVoteType:(NSString *)voteType
{
    self->votesByType.voteType = voteType;
}

- (NSString *)votesByTypeFormat
{
    return self->votesByType.format;
}

- (void)setVotesByTypeFormat:(NSString *)format
{
    self->votesByType.format = format;
}

- (NSString *)votesByTypeApiKey
{
    return self->votesByType.apiKey;
}

- (void)setVotesByTypeApiKey:(NSString *)apiKey
{
    self->votesByType.apiKey = apiKey;
}

#pragma mark -
#pragma mark VotesByDate

- (NSString *)votesByDateChamber
{
    return self->votesByDate.chamber;
}

- (void)setVotesByDateChamber:(NSString *)chamber
{
    self->votesByDate.chamber = chamber;
}

- (NSString *)votesByDateYearAndMonth
{
    return self->votesByDate.yearAndMonth;
}

- (void)setVotesByDateYearAndMonth:(NSString *)yearAndMonth
{
    self->votesByDate.yearAndMonth = yearAndMonth;
}

- (NSString *)votesByDateRangeOfDates
{
    return self->votesByDate.rangeOfDates;
}

- (void)setVotesByDateRangeOfDates:(NSString *)rangeOfDates
{
    self->votesByDate.rangeOfDates = rangeOfDates;
}
- (NSString *)votesByDateFormat
{
    return self->votesByDate.format;
}

- (void)setVotesByDateFormat:(NSString *)format
{
    self->votesByDate.format = format;
}

- (NSString *)votesByDateApiKey
{
    return self->votesByDate.apiKey;
}

- (void)setVotesByDateApiKey:(NSString *)apiKey
{
    self->votesByDate.apiKey = apiKey;
}

#pragma mark -
#pragma mark NominationVotes

- (NSString *)nominationVotesCongressNumber
{
    return self->nominationVotes.congressNumber;
}

- (void)setNominationVotesCongressNumber:(NSString *)congressNumber
{
    self->nominationVotes.congressNumber = congressNumber;
}

- (NSString *)nominationVotesFormat
{
    return self->nominationVotes.format;
}

- (void)setNominationVotesFormat:(NSString *)format
{
    self->nominationVotes.format = format;
}

- (NSString *)nominationVotesApiKey
{
    return self->nominationVotes.apiKey;
}

- (void)setNominationVotesApiKey:(NSString *)apiKey
{
    self->nominationVotes.apiKey = apiKey;
}

#pragma mark -
#pragma mark RecentBills

- (NSString *)recentBillsCongressNumber
{
    return self->recentBills.congressNumber;
}

- (void)setRecentBillsCongressNumber:(NSString *)congressNumber
{
    self->recentBills.congressNumber = congressNumber;
}

- (NSString *)recentBillsChamber
{
    return self->recentBills.chamber;
}

- (void)setRecentBillsChamber:(NSString *)chamber
{
    self->recentBills.chamber = chamber;
}

- (NSString *)recentBillsType
{
    return self->recentBills.type;
}

- (void)setRecentBillsType:(NSString *)type
{
    self->recentBills.type = type;
}

- (NSString *)recentBillsformat
{
    return self->recentBills.format;
}

- (void)setRecentBillsFormat:(NSString *)format
{
    self->recentBills.format = format;
}

- (NSString *)recentBillsApiKey
{
    return self->recentBills.apiKey;
}

- (void)setRecentBillsApiKey:(NSString *)apiKey
{
    self->recentBills.apiKey = apiKey;
}

#pragma mark -
#pragma mark BillsByMember

- (NSString *)billsByMemberMemberId
{
    return self->billsByMember.memberId;
}

- (void)setBillsByMemberMemberId:(NSString *)memberId
{
    self->billsByMember.memberId = memberId;
}

- (NSString *)billsByMemberType
{
    return self->billsByMember.type;
}

- (void)setBillsByMemberType:(NSString *)type
{
    self->billsByMember.type = type;
}

- (NSString *)billsByMemberFormat
{
    return self->billsByMember.format;
}

- (void)setBillsByMemberFormat:(NSString *)format
{
    self->billsByMember.format = format;
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
    self->billDetails.congressNumber = congressNumber;
}

- (NSString *)billDetailsBillId
{
    return self->billDetails.billId;
}

- (void)setBillDetailsBillId:(NSString *)billId
{
    self->billDetails.billId = billId;
}

- (NSString *)billDetailsFormat
{
    return self->billDetails.format;
}

- (void)setBillDetailsFormat:(NSString *)format
{
    self->billDetails.format = format;
}

- (NSString *)billDetailsApiKey
{
    return self->billDetails.apiKey;
}

- (void)setBillDetailsApiKey:(NSString *)apiKey
{
    self->billDetails.apiKey = apiKey;
}

#pragma mark -
#pragma mark BillAmendmentsAndRelatedBills

- (NSString *)billAmendmentsAndRelatedBillsCongressNumber
{
    return self->billAmendmentsAndRelatedBills.congressNumber;
}

- (void)setBillAmendmentsAndRelatedBillsCongressNumber:(NSString *)congressNumber
{
    self->billAmendmentsAndRelatedBills.congressNumber = congressNumber;
}

- (NSString *)billAmendmentsAndRelatedBillsBillId
{
    return self->billAmendmentsAndRelatedBills.billId;
}

- (void)setBillAmendmentsAndRelatedBillsBillId:(NSString *)billId
{
    self->billAmendmentsAndRelatedBills.billId = billId;
}

- (NSString *)billAmendmentsAndRelatedBillsResource
{
    return self->billAmendmentsAndRelatedBills.resource;
}

- (void)setBillAmendmentsAndRelatedBillsResource:(NSString *)resource
{
    self->billAmendmentsAndRelatedBills.resource = resource;
}

- (NSString *)billAmendmentsAndRelatedBillsFormat
{
    return self->billAmendmentsAndRelatedBills.format;
}

- (void)setBillAmendmentsAndRelatedBillsFormat:(NSString *)format
{
    self->billAmendmentsAndRelatedBills.format = format;
}

- (NSString *)billAmendmentsAndRelatedBillsApiKey
{
    return self->billAmendmentsAndRelatedBills.apiKey;
}

- (void)setBillAmendmentsAndRelatedBillsApiKey:(NSString *)apiKey
{
    self->billAmendmentsAndRelatedBills.apiKey = apiKey;
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
    
    if ([self membersOfCongressChamber] == @"house") {
        if (cn >= 102 && cn <= 112)
        {
            self->memberVoteComparison.congressNumber = congressNumber;
        }
    } else if ([self membersOfCongressChamber] == @"senate") {
        if (cn >= 101 && cn <= 112)
        {
            self->memberVoteComparison.congressNumber = congressNumber;
        }
    } else {
        NSLog(@"--Error: Chamber is not set! Assign value before setting CongressNumber");
    }
}

- (NSString *)billCosponsorsBillId
{
    return self->billCosponsors.billId;
}

- (void)setBillCosponsorsBillId:(NSString *)billId
{
    self->billCosponsors.billId = billId;
}

- (NSString *)billCosponsorsFormat
{
    return self->billCosponsors.format;
}

- (void)setBillCosponsorsFormat:(NSString *)format
{
    self->billCosponsors.format = format;
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
    self->nomineeLists.congressNumber = congressNumber;
}

- (NSString *)nomineeListsNomineeCategory
{
    return self->nomineeLists.nomineeCategory;
}

- (void)setNomineeListsNomineeCategory:(NSString *)nomineeCategory
{
    self->nomineeLists.nomineeCategory = nomineeCategory;
}

- (NSString *)nomineeListsFormat
{
    return self->nomineeLists.format;
}

- (void)setNomineeListsFormat:(NSString *)format
{
    self->nomineeLists.format = format;
}

- (NSString *)nomineeListsApiKey
{
    return self->nomineeLists.apiKey;
}

- (void)setNomineeListsApiKey:(NSString *)apiKey
{
    self->nomineeLists.apiKey = apiKey;
}

#pragma mark -
#pragma mark NomineeDetails

- (NSString *)nomineeDetailsCongressNumber
{
    return self->nomineeDetails.congressNumber;
}

- (void)setNomineeDetailsCongressNumber:(NSString *)congressNumber
{
    self->nomineeDetails.congressNumber = congressNumber;
}

- (NSString *)nomineeDetailsNomineeId
{
    return self->nomineeDetails.nomineeId;
}

- (void)setNomineeDetailsNomineeId:(NSString *)nomineeId
{
    self->nomineeDetails.nomineeId = nomineeId;
}

- (NSString *)nomineeDetailsFormat
{
    return self->nomineeDetails.format;
}

- (void)setNomineeDetailsFormat:(NSString *)format
{
    self->nomineeDetails.format = format;
}

- (NSString *)nomineeDetailsApiKey
{
    return self->nomineeDetails.apiKey;
}

- (void)setNomineeDetailsApiKey:(NSString *)apiKey
{
    self->nomineeDetails.apiKey = apiKey;
}

#pragma mark -
#pragma mark NomineesByState

- (NSString *)nomineesByStateCongressNumber
{
    return self->nomineesByState.congresNumber;
}

- (void)setNomineesByStateCongressNumber:(NSString *)congressNumber
{
    self->nomineesByState.congresNumber = congressNumber;
}

- (NSString *)nomineesByStateState
{
    return self->nomineesByState.state;
}

- (void)setNomineesByStateState:(NSString *)state
{
    self->nomineesByState.state = state;
}

- (NSString *)nomineesByStateFormat
{
    return self->nomineesByState.format;
}

- (void)setNomineesByStateFormat:(NSString *)format
{
    self->nomineesByState.format = format;
}

- (NSString *)nomineesByStateApiKey
{
    return self->nomineesByState.apiKey;
}

- (void)setNomineesByStateApiKey:(NSString *)apiKey
{
    self->nomineesByState.apiKey = apiKey;
}

#pragma mark -
#pragma mark StatePartyCounts

- (NSString *)statePartyCountsFormat
{
    return self->statePartyCounts.format;
}

- (void)setStatePartyCountsFormat:(NSString *)format
{
    self->statePartyCounts.format = format;
}

- (NSString *)statePartyCountsApiKey
{
    return self->statePartyCounts.apiKey;
}

- (void)setStatePartyCountsApiKey:(NSString *)apiKey
{
    self->statePartyCounts.apiKey = apiKey;
}

#pragma mark -
#pragma mark CommitteesAndCommitteeMembers

- (NSString *)committeesAndCommitteeMembersCongressNumber
{
    return self->committeesAndCommitteeMembers.congressNumber;
}

- (void)setCommitteesAndCommitteeMembersCongressNumber:(NSString *)congressNumber
{
    self->committeesAndCommitteeMembers.congressNumber = congressNumber;
}

- (NSString *)committeesAndCommitteeMembersChamber
{
    return self->committeesAndCommitteeMembers.chamber;
}

- (void)setCommitteesAndCommitteeMembersChamber:(NSString *)chamber
{
    self->committeesAndCommitteeMembers.chamber = chamber;
}

- (NSString *)committeesAndCommitteeMembersCommitteeId
{
    return self->committeesAndCommitteeMembers.committeeId;
}

- (void)setCommitteesAndCommitteeMembersCommitteeId:(NSString *)committeeId
{
    self->committeesAndCommitteeMembers.committeeId = committeeId;
}

- (NSString *)committeesAndCommitteeMembersFormat
{
    return self->committeesAndCommitteeMembers.format;
}

- (void)setCommitteesAndCommitteeMembersFormat:(NSString *)format
{
    self->committeesAndCommitteeMembers.format = format;
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
    self->chamberSchedule.format = format;
}

- (NSString *)chamberScheduleApiKey
{
    return self->chamberSchedule.apiKey;
}

- (void)setChamberScheduleApiKey:(NSString *)apiKey
{
    self->chamberSchedule.apiKey = apiKey;
}

@end

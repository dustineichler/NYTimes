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
    self->membersOfCongress.congressNumber = congressNumber;
}

- (NSString * )membersOfCongressChamber
{
    return self->membersOfCongress.chamber;
}

- (void)setMembersOfCongressChamber:(NSString *)chamber
{
    self->membersOfCongress.chamber = chamber;
}

- (NSString *)membersOfCongressState
{
    return self->membersOfCongress.state;
}

- (void)setMembersOfCongressState:(NSString *)state
{
    self->membersOfCongress.state = state;
}

- (NSString *)membersOfCongressDistrict
{
    return self->membersOfCongress.district;
}

- (void)setMembersOfCongressDistrict:(NSString *)district
{
    self->membersOfCongress.district = district;
}

- (NSString *)membersOfCongressFormat
{
    return self->membersOfCongress.format;
}

- (void)setMembersOfCongressFormat:(NSString *)format
{
    self->membersOfCongress.format = format;
}

- (NSString *)membersOfCongressApiKey
{
    return self->membersOfCongress.apiKey;
}

- (void)setMembersOfCongressApiKey:(NSString *)apiKey
{
    self->membersOfCongress.apiKey = apiKey;
}

#pragma mark -
#pragma mark MemberBiosAndRoles

- (NSString *)memberBiosAndRolesMemberId
{
    return self->memberBiosAndRoles.memberId;
}

- (void)memberBiosAndRolesMemberId:(NSString *)memberId
{
    self->memberBiosAndRoles.memberId = memberId;
}

- (NSString *)memberBiosAndRolesFormat
{
    return self->memberBiosAndRoles.format;
}

- (void)memberBiosAndRolesFormat:(NSString *)format
{
    self->memberBiosAndRoles.format = format;
}

- (NSString *)memberBiosAndRolesApiKey:(NSString *)apiKey
{
    return self->memberBiosAndRoles.apiKey = apiKey;
}

#pragma mark -
#pragma mark NewMembers

- (NSString *)newMembersFormat
{
    return self->newMembers.format;
}

- (void)setNewMembersFormat:(NSString *)format
{
    self->newMembers.format = format;
}

- (NSString *)newMembersApiKey
{
    return self->newMembers.apiKey;
}

- (void)setNewMembersApiKey:(NSString *)apiKey
{
    self->newMembers.apiKey = apiKey;
}

#pragma mark -
#pragma mark CurrentMembersByStateAndDistrict

- (NSString *)currentMembersByStateAndDistrictChamber
{
    return self->currentMembersByStateAndDistrict.chamber;
}

- (void)setCurrentMembersByStateAndDistrictChamber:(NSString *)chamber
{
    self->currentMembersByStateAndDistrict.chamber = chamber;
}

- (NSString *)currentMembersByStateAndDistrictState
{
    return self->currentMembersByStateAndDistrict.state;
}

- (void)setCurrentMembersByStateAndDistrictState:(NSString *)state
{
    self->currentMembersByStateAndDistrict.state = state;
}

- (NSString *)currentMembersByStateAndDistrictDistrict
{
    return self->currentMembersByStateAndDistrict.district;
}

- (void)setCurrentMembersByStateAndDistrictDistrict:(NSString *)district
{
    self->currentMembersByStateAndDistrict.district = district;
}

- (NSString *)currentMembersByStateAndDistrictFormat
{
    return self->currentMembersByStateAndDistrict.format;
}

- (void)setCurrentMembersByStateAndDistrictForamt:(NSString *)format
{
    self->currentMembersByStateAndDistrict.format = format;
}

- (NSString *)currentMembersByStateAndDistrictApiKey
{
    return self->currentMembersByStateAndDistrict.apiKey;
}

- (void)setCurrentMembersByStateAndDistrictApiKey:(NSString *)apiKey
{
    self->currentMembersByStateAndDistrict.apiKey = apiKey;
}

#pragma mark -
#pragma mark MembersLeavingOffice

- (NSString *)membersLeavingOfficeCongressNumber
{
    return self->membersLeavingOffice.congressNumber;
}

- (void)setMembersLeavingOfficeCongressNumber:(NSString *)congressNumber
{
    self->membersLeavingOffice.congressNumber = congressNumber;
}

- (NSString *)membersLeavingOfficeChamber
{
    return self->membersLeavingOffice.chamber;
}

- (void)setMembersLeavingOfficeChamber:(NSString *)chamber
{
    self->membersLeavingOffice.chamber = chamber;
}

- (NSString *)membersLeavingOfficeFormat
{
    return self->membersLeavingOffice.format;
}

- (void)membersLeavingOfficeFormat:(NSString *)format
{
    self->membersLeavingOffice.format = format;
}

- (NSString *)membersLeavingOfficeApiKey
{
    return self->membersLeavingOffice.apiKey;
}

- (void)setMembersLeavingOfficeApiKey:(NSString *)apiKey
{
    self->membersLeavingOffice.apiKey = apiKey;
}

#pragma mark -
#pragma mark MemberVotePositions

- (NSString *)memberVotePositionsMemberId
{
    return self->memberVotePositions.memberId;
}

- (void)memberVotePositionsMemberId:(NSString *)memberId
{
    self->memberVotePositions.memberId = memberId;
}

- (NSString *)memberVotePositionsFormat
{
    return self->memberVotePositions.format;
}

- (void)setMemberVotePositionsFormat:(NSString *)format
{
    self->memberVotePositions.format = format;
}

- (NSString *)memberVotePositionsApiKey
{
    return self->memberVotePositions.apiKey;
}

- (void)setMemberVotePositionsApiKey:(NSString *)apiKey
{
    self->memberVotePositions.apiKey = apiKey;
}

#pragma mark -
#pragma mark BillsCosponsoredByAMember

- (NSString *)billsCosponsoredByAMemberMemberId
{
    return self->billsCosponsoredByAMember.memberId;
}

- (void)setBillsCosponsoredByAMemberMemberId:(NSString *)memberId
{
    self->billsCosponsoredByAMember.memberId = memberId;
}

- (NSString *)billsCosponsoredByAMemberType
{
    return self->billsCosponsoredByAMember.type;
}

- (void)setBillsCosponsoredByAMemberType:(NSString *)type
{
    self->billsCosponsoredByAMember.type = type;
}

- (NSString *)billsCosponsoredByAMemberFormat
{
    return self->billsCosponsoredByAMember.format;
}

- (void)setBillsCosponsoredByAMemberFormat:(NSString *)fomart
{
    self->billsCosponsoredByAMember.format = fomart;
}

- (NSString *)billsCosponsoredByAMemberApiKey
{
    return self->billsCosponsoredByAMember.apiKey;
}

- (void)setBillsCosponsoredByAMemberApiKey:(NSString *)apiKey
{
    self->billsCosponsoredByAMember.apiKey = apiKey;
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








@end

//
//  NYTimesCongress.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/30/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesCongress.h"

#define SERVER_URL @"http://api.nytimes.com/svc/politics/v3/us/legislative/congress/"

@implementation NYTimesCongress
@synthesize tag;

- (void)dealloc
{
    [super dealloc];
}

+ (void)asyncRequest:(NYTimesWrapper *)obj 
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
    
    NSString *baseURL = [NSString stringWithFormat:SERVER_URL@"%@", params];

    // MembersOfCongress
    
    if (obj.congress.membersOfCongressCongressNumber && obj.congress.membersOfCongressChamber && obj.congress.membersOfCongressApiKey)
    {
        if (obj.congress.membersOfCongressCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.membersOfCongressCongressNumber];
        }

        if (obj.congress.membersOfCongressChamber)
        {
            [params appendFormat:@"%@/", obj.congress.membersOfCongressChamber];
        }

        if (obj.congress.membersOfCongressFormat)
        {
            [params appendFormat:@"members.%@?", obj.congress.membersOfCongressFormat];
        }

        if (obj.congress.membersOfCongressState)
        {
            [params appendFormat:@"&state=%@", obj.congress.membersOfCongressState];
        }

        if (obj.congress.membersOfCongressDistrict)
        {
            [params appendFormat:@"&district=%@", obj.congress.membersOfCongressDistrict];
        }

        if (obj.congress.membersOfCongressApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.congress.membersOfCongressApiKey];
        }
    }
    
    // Member Bio and Roles
    
    if (obj.congress.memberBiosAndRolesMemberId && obj.congress.memberBiosAndRolesApiKey)
    {
        if (obj.congress.memberBiosAndRolesMemberId)
        {
            [params appendFormat:@"members/%@", obj.congress.memberBiosAndRolesMemberId];
        }
        
        if (obj.congress.memberBiosAndRolesFormat)
        {
            [params appendFormat:@".%@?", obj.congress.memberBiosAndRolesFormat];
        }
        
        if (obj.congress.memberBiosAndRolesApiKey)
        {
            [params appendFormat:@"&api-key=%@", obj.congress.memberBiosAndRolesApiKey];
        }
    }
    
    // New Members
    
    if (obj.congress.newMembersApiKey)
    {
        if (obj.congress.newMembersFormat)
        {
            [params appendFormat:@"members/new.%@?", obj.congress.newMembersFormat];
        }
        
        if (obj.congress.newMembersApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.newMembersApiKey];
        }
    }
    
    // Current Members by State/District
    
    if (obj.congress.currentMembersByStateAndDistrictChamber && obj.congress.currentMembersByStateAndDistrictState
        && obj.congress.currentMembersByStateAndDistrictDistrict && obj.congress.currentMembersByStateAndDistrictApiKey)
    {
        if (obj.congress.currentMembersByStateAndDistrictChamber)
        {
            [params appendFormat:@"members/%@", obj.congress.currentMembersByStateAndDistrictChamber];
        }
        
        if (obj.congress.currentMembersByStateAndDistrictState)
        {
            [params appendFormat:@"/%@", obj.congress.currentMembersByStateAndDistrictState];
        }
        
        if (obj.congress.currentMembersByStateAndDistrictDistrict)
        {
            [params appendFormat:@"/%@", obj.congress.currentMembersByStateAndDistrictDistrict];
        }
        
        if (obj.congress.currentMembersByStateAndDistrictFormat)
        {
            [params appendFormat:@"/current.%@?", obj.congress.currentMembersByStateAndDistrictFormat];
        }
        
        if (obj.congress.currentMembersByStateAndDistrictApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.currentMembersByStateAndDistrictApiKey];
        }
    }
    
    // Members Leaving Office
    
    if (obj.congress.membersLeavingOfficeCongressNumber && obj.congress.membersLeavingOfficeChamber 
        && obj.congress.membersLeavingOfficeApiKey)
    {
        if (obj.congress.membersLeavingOfficeCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.membersLeavingOfficeCongressNumber];
        }
        
        if (obj.congress.membersLeavingOfficeChamber)
        {
            [params appendFormat:@"%@/members/", obj.congress.membersLeavingOfficeChamber];
        }
        
        if (obj.congress.membersLeavingOfficeFormat)
        {
            [params appendFormat:@"leaving.%@?", obj.congress.membersLeavingOfficeFormat];
        }
        
        if (obj.congress.membersLeavingOfficeApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.membersLeavingOfficeApiKey];
        }
    }
    
    // Member Vote Positions
    
    if (obj.congress.memberVotePositionsMemberId && obj.congress.memberVotePositionsApiKey)
    {
        if (obj.congress.memberVotePositionsMemberId)
        {
            [params appendFormat:@"members/%@/", obj.congress.memberVotePositionsMemberId];
        }
        
        if (obj.congress.memberVotePositionsFormat)
        {
            [params appendFormat:@"votes.%@?", obj.congress.memberVotePositionsFormat];
        }
        
        if (obj.congress.memberVotePositionsApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.memberVotePositionsApiKey];
        }
    }
    
    // Member Vote Comparison
    
    if (obj.congress.memberVoteComparisonFirstMemberId && obj.congress.memberVoteComparisonSecondMemberId 
        && obj.congress.memberVoteComparisonCongressNumber && obj.congress.memberVoteComparisonChamber 
        && obj.congress.memberVoteComparisonApiKey)
    {
        if (obj.congress.memberVoteComparisonFirstMemberId)
        {
            [params appendFormat:@"members/%@/", obj.congress.memberVoteComparisonFirstMemberId];
        }
        
        if (obj.congress.memberVoteComparisonSecondMemberId)
        {
            [params appendFormat:@"votes/%@/", obj.congress.memberVoteComparisonSecondMemberId];
        }
        
        if (obj.congress.memberVoteComparisonCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.memberVoteComparisonCongressNumber];
        }
        
        if (obj.congress.memberVoteComparisonChamber)
        {
            [params appendFormat:@"%@", obj.congress.memberVoteComparisonChamber];
        }
        
        if (obj.congress.memberVoteComparisonFormat)
        {
            [params appendFormat:@".%@?", obj.congress.memberVoteComparisonFormat];
        }
        
        if (obj.congress.memberVoteComparisonApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.memberVoteComparisonApiKey];
        }
    }
    
    // Bills Cosponsored by a Member
    
    if (obj.congress.billsCosponsoredByAMemberMemberId && obj.congress.billsCosponsoredByAMemberType 
        && obj.congress.billsCosponsoredByAMemberApiKey)
    {
        if (obj.congress.billsCosponsoredByAMemberMemberId)
        {
            [params appendFormat:@"members/%@/", obj.congress.billsCosponsoredByAMemberMemberId];
        }
        
        if (obj.congress.billsCosponsoredByAMemberType)
        {
            [params appendFormat:@"bills/%@", obj.congress.billsCosponsoredByAMemberType];
        }
        
        if (obj.congress.billsCosponsoredByAMemberFormat)
        {
            [params appendFormat:@".%@?", obj.congress.billsCosponsoredByAMemberFormat];
        }
        
        if (obj.congress.billsCosponsoredByAMemberApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.billsCosponsoredByAMemberApiKey];
        }
    }
    
    // Member Sponsorship Comparison
    
    if (obj.congress.memberSponsorshipComparisonMemberId1 && obj.congress.memberSponsorshipComparisonMemberId2 
        && obj.congress.memberSponsorshipComparisonCongressNumber && obj.congress.memberSponsorshipComparisonChamber && obj.congress.memberSponsorshipComparisonApiKey)
    {
        if (obj.congress.memberSponsorshipComparisonMemberId1)
        {
            [params appendFormat:@"members/%@/", obj.congress.memberSponsorshipComparisonMemberId1];
        }
        
        if (obj.congress.memberSponsorshipComparisonMemberId2)
        {
            [params appendFormat:@"bills/%@/", obj.congress.memberSponsorshipComparisonMemberId2];
        }
        
        if (obj.congress.memberSponsorshipComparisonCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.memberSponsorshipComparisonCongressNumber];
        }
        
        if (obj.congress.memberSponsorshipComparisonChamber)
        {
            [params appendFormat:@"%@", obj.congress.memberSponsorshipComparisonChamber];
        }
        
        if (obj.congress.memberSponsorshipComparisonFormat)
        {
            [params appendFormat:@".%@?", obj.congress.memberSponsorshipComparisonFormat];
        }
        
        if (obj.congress.memberSponsorshipComparisonApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.memberSponsorshipComparisonApiKey];
        }
    }
    
    // Member Floor Appearances
    
    if (obj.congress.memberFloorAppearancesMemberId && obj.congress.memberFloorAppearancesApiKey)
    {
        if (obj.congress.memberFloorAppearancesMemberId)
        {
            [params appendFormat:@"members/%@/", obj.congress.memberFloorAppearancesMemberId];
        }
        
        if (obj.congress.memberFloorAppearancesFormat)
        {
            [params appendFormat:@"floor_appearances.%@?", obj.congress.memberFloorAppearancesFormat];
        }
        
        if (obj.congress.memberFloorAppearancesApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.memberFloorAppearancesApiKey];
        }
    }
    
    // Roll-Call Votes
    
    if (obj.congress.rollCallVotesCongressNumber && obj.congress.rollCallVotesChamber 
        && obj.congress.rollCallVotesSessionNumber && obj.congress.rollCallVotesRollCallNumber 
        && obj.congress.rollCallVotesApiKey)
    {
        if (obj.congress.rollCallVotesCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.rollCallVotesCongressNumber];
        }
        
        if (obj.congress.rollCallVotesChamber)
        {
            [params appendFormat:@"%@/", obj.congress.rollCallVotesChamber];
        }
        
        if (obj.congress.rollCallVotesSessionNumber)
        {
            [params appendFormat:@"sessions/%@/", obj.congress.rollCallVotesSessionNumber];
        }
        
        if (obj.congress.rollCallVotesRollCallNumber)
        {
            [params appendFormat:@"votes/%@", obj.congress.rollCallVotesRollCallNumber];
        }
        
        if (obj.congress.rollCallVotesFormat)
        {
            [params appendFormat:@".%@?", obj.congress.rollCallVotesFormat];
        }
        
        if (obj.congress.rollCallVotesApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.rollCallVotesApiKey];
        }
    }
    
    // Votes by Type
    
    if (obj.congress.votesByTypeCongressNumber && obj.congress.votesByTypeChamber 
        && obj.congress.votesByTypeVoteType && obj.congress.votesByTypeApiKey)
    {
        if (obj.congress.votesByTypeCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.votesByTypeCongressNumber];
        }
        
        if (obj.congress.votesByTypeChamber)
        {
            [params appendFormat:@"%@/", obj.congress.votesByTypeChamber];
        }
        
        if (obj.congress.votesByTypeVoteType)
        {
            [params appendFormat:@"votes/%@", obj.congress.votesByTypeVoteType];
        }
        
        if (obj.congress.votesByTypeFormat)
        {
            [params appendFormat:@".%@?", obj.congress.votesByTypeFormat];
        }
        
        if (obj.congress.votesByTypeApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.votesByTypeApiKey];
        }
    }
    
    // Votes by Date
    
    if (obj.congress.votesByDateChamber 
        && (obj.congress.votesByDateYearAndMonth || obj.congress.votesByDateRangeOfDates)
        && obj.congress.votesByDateApiKey)
    {
        if (obj.congress.votesByDateChamber)
        {
            [params appendFormat:@"%@/", obj.congress.votesByDateChamber];
        }
        
        if (obj.congress.votesByDateYearAndMonth)
        {
            [params appendFormat:@"%@", obj.congress.votesByDateYearAndMonth];
        }
        
        if (obj.congress.votesByDateRangeOfDates)
        {
            [params appendFormat:@".%@?", obj.congress.votesByDateRangeOfDates];
        }
        
        if (obj.congress.votesByDateApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.votesByDateApiKey];
        }
    }
    
    // Nomination Votes
    
    if (obj.congress.nominationVotesCongressNumber && obj.congress.nominationVotesApiKey)
    {
        if (obj.congress.nominationVotesCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.nominationVotesCongressNumber];
        }
        
        if (obj.congress.nominationVotesFormat)
        {
            [params appendFormat:@"nominations.%@?", obj.congress.nominationVotesFormat];
        }
        
        if (obj.congress.nominationVotesApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.nominationVotesApiKey];
        }
    }
    
    // Recent Bills
    
    if (obj.congress.recentBillsCongressNumber && obj.congress.recentBillsChamber 
        && obj.congress.recentBillsApiKey && obj.congress.recentBillsType)
    {
        if (obj.congress.recentBillsCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.recentBillsCongressNumber];
        }
        
        if (obj.congress.recentBillsChamber)
        {
            [params appendFormat:@"%@/bills/", obj.congress.recentBillsChamber];
        }
        
        if (obj.congress.recentBillsType)
        {
            [params appendFormat:@"%@", obj.congress.recentBillsType];
        }
        
        if (obj.congress.recentBillsFormat)
        {
            [params appendFormat:@".%@?", obj.congress.recentBillsFormat];
        }
        
        if (obj.congress.recentBillsApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.recentBillsApiKey];
        }
    }
    
    // Bills by Member
    
    if (obj.congress.billsByMemberMemberId && obj.congress.billsByMemberType && obj.congress.billsByMemberApiKey)
    {
        if (obj.congress.billsByMemberMemberId)
        {
            [params appendFormat:@"members/%@/", obj.congress.billsByMemberMemberId];
        }
        
        if (obj.congress.billsByMemberType)
        {
            [params appendFormat:@"bills/%@", obj.congress.billsByMemberType];
        }
        
        if (obj.congress.billsByMemberFormat)
        {
            [params appendFormat:@".%@?", obj.congress.billsByMemberFormat];
        }
        
        if (obj.congress.billsByMemberApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.billsByMemberApiKey];
        }
    }
    
    // Bill Details
    
    if (obj.congress.billDetailsCongressNumber && obj.congress.billDetailsBillId && obj.congress.billDetailsBillId)
    {
        if (obj.congress.billDetailsCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.billDetailsCongressNumber];
        }
        
        if (obj.congress.billDetailsBillId)
        {
            [params appendFormat:@"bills/%@", obj.congress.billDetailsBillId];
        }
        
        if (obj.congress.billDetailsFormat)
        {
            [params appendFormat:@".%@?", obj.congress.billDetailsFormat];
        }
        
        if (obj.congress.billDetailsApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.billDetailsApiKey];
        }
    }
    
    // Bill Subjects, Amendments and Related Bills
    
    if (obj.congress.billAmendmentsAndRelatedBillsCongressNumber && obj.congress.billAmendmentsAndRelatedBillsBillId 
        && obj.congress.billAmendmentsAndRelatedBillsResource && obj.congress.billAmendmentsAndRelatedBillsApiKey)
    {
        if (obj.congress.billAmendmentsAndRelatedBillsCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.billAmendmentsAndRelatedBillsCongressNumber];
        }
        
        if (obj.congress.billAmendmentsAndRelatedBillsBillId)
        {
            [params appendFormat:@"bills/%@/", obj.congress.billAmendmentsAndRelatedBillsBillId];
        }
        
        if (obj.congress.billAmendmentsAndRelatedBillsResource)
        {
            [params appendFormat:@"%@", obj.congress.billAmendmentsAndRelatedBillsResource];
        }
        
        if (obj.congress.billAmendmentsAndRelatedBillsFormat)
        {
            [params appendFormat:@".%@?", obj.congress.billAmendmentsAndRelatedBillsFormat];
        }
        
        if (obj.congress.billAmendmentsAndRelatedBillsApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.billAmendmentsAndRelatedBillsApiKey];
        }
    }
    
    // Bill Cosponsors
    
    if (obj.congress.billCosponsorsApiKey && obj.congress.billCosponsorsBillId 
        && obj.congress.billCosponsorsCongressNumber) 
    {
        if (obj.congress.billCosponsorsCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.billCosponsorsCongressNumber];
        }
        
        if (obj.congress.billCosponsorsBillId)
        {
            [params appendFormat:@"bills/%@/", obj.congress.billCosponsorsBillId];
        }
        
        if (obj.congress.billCosponsorsFormat)
        {
            [params appendFormat:@"cosponsors.%@?", obj.congress.billCosponsorsFormat];
        }
        
        if (obj.congress.billCosponsorsApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.billCosponsorsApiKey];
        }
    }
    
    // Nominee Lists
    
    if (obj.congress.nomineeListsCongressNumber && obj.congress.nomineeListsNomineeCategory && obj.congress.nomineeListsApiKey)
    {
        if (obj.congress.nomineeListsCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.nomineeListsCongressNumber];
        }
        
        if (obj.congress.nomineeListsNomineeCategory)
        {
            [params appendFormat:@"nominees/%@", obj.congress.nomineeListsNomineeCategory];
        }
        
        if (obj.congress.nomineeListsFormat)
        {
            [params appendFormat:@".%@?", obj.congress.nomineeListsNomineeCategory];
        }
        
        if (obj.congress.nomineeListsFormat)
        {
            [params appendFormat:@"api-key=%@", obj.congress.nomineeListsApiKey];
        }
    }
    
    // Nominee Details
    
    if (obj.congress.nomineeDetailsCongressNumber && obj.congress.nomineeDetailsNomineeId && obj.congress.nomineeDetailsApiKey)
    {
        if (obj.congress.nomineeDetailsCongressNumber)
        {
            [params appendFormat:@"%@", obj.congress.nomineeDetailsCongressNumber];
        }
        
        if (obj.congress.nomineeDetailsNomineeId)
        {
            [params appendFormat:@"nominees/%@", obj.congress.nomineeDetailsNomineeId];
        }
        
        if (obj.congress.nomineeDetailsFormat)
        {
            [params appendFormat:@".%@?", obj.congress.nomineeDetailsFormat];
        }
        
        if (obj.congress.nomineeDetailsApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.nomineeDetailsApiKey];
        }
    }
    
    // Nominees by State
    
    if (obj.congress.nomineesByStateCongressNumber && obj.congress.nomineesByStateState && obj.congress.nomineesByStateApiKey)
    {
        if (obj.congress.nomineesByStateCongressNumber)
        {
            [params appendFormat:@"%@/nominees/", obj.congress.nomineesByStateCongressNumber];
        }
        
        if (obj.congress.nomineesByStateState)
        {
            [params appendFormat:@"state/%@", obj.congress.nomineesByStateState];
        }
        
        if (obj.congress.nomineesByStateFormat)
        {
            [params appendFormat:@".%@?", obj.congress.nomineesByStateState];
        }
        
        if (obj.congress.nomineesByStateApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.nomineesByStateApiKey];
        }
    }
    
    // State Party Counts
    
    if (obj.congress.statePartyCountsApiKey)
    {
        if (obj.congress.statePartyCountsFormat)
        {
            [params appendFormat:@"states/members/party.%@?", obj.congress.statePartyCountsFormat];
        }
        
        if (obj.congress.statePartyCountsApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.statePartyCountsApiKey];
        }
    }
    
    // Committees and Committee Members
    
    if (obj.congress.committeesAndCommitteeMembersCongressNumber && obj.congress.committeesAndCommitteeMembersChamber && obj.congress.committeesAndCommitteeMembersApiKey)
    {
        if (obj.congress.committeesAndCommitteeMembersCongressNumber)
        {
            [params appendFormat:@"%@/", obj.congress.committeesAndCommitteeMembersCongressNumber];
        }
        
        if (obj.congress.committeesAndCommitteeMembersChamber)
        {
            [params appendFormat:@"%@/", obj.congress.committeesAndCommitteeMembersChamber];
        }
        
        if (obj.congress.committeesAndCommitteeMembersCommitteeId)
        {
            [params appendFormat:@"committees/%@", obj.congress.committeesAndCommitteeMembersCommitteeId];
        }
        
        if (obj.congress.committeesAndCommitteeMembersFormat)
        {
            [params appendFormat:@".%@?", obj.congress.committeesAndCommitteeMembersFormat];
        }
        
        if (obj.congress.committeesAndCommitteeMembersApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.committeesAndCommitteeMembersApiKey];
        }
    }
    
    // Chamber Schedule
    
    if (obj.congress.chamberScheduleApiKey)
    {
        if (obj.congress.chamberScheduleChamber)
        {
            [params appendFormat:@"%@/schedule", obj.congress.chamberScheduleChamber];
        }
        if (obj.congress.chamberScheduleFormat)
        {
            [params appendFormat:@".%@?", obj.congress.chamberScheduleFormat];
        }
        
        if (obj.congress.chamberScheduleApiKey)
        {
            [params appendFormat:@"api-key=%@", obj.congress.chamberScheduleApiKey];
        }
    }
    
    return baseURL;
}
@end

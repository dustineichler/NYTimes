//
//  NYTimesWrapper.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 12/2/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesWrapper.h"

@implementation _CampaignFinance
@synthesize candidateSearch, candidateDetails, candidateLeaders, stateCandidates, newCandidates, committeeSearch, committeeDetails, newCommittee, committeeContributions, committeeContributionsTo, committeeFilings, leadershipCommittee, electronicFilingsByDate, formTypes, filingsByType, presCandidateTotals, presCAndidateDetails, presStateAndZipTotals, presDonorInformation;

#pragma mark -
#pragma mark CandidateSearch Methods

// TODO: DWE: Why are their so many setters and getters for Candidate Search. The API Console only has 3 attrs.

- (NSString *)candidateSearchCycle
{
    if (self->candidateSearch.cycle)
    {
        return self->candidateSearch.cycle;
    } else {
        return nil;
    }
}

- (void)setCandidateSearchCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->candidateSearch.cycle = result;
    }
}

- (NSString *)candidateSearchSearchParameter
{
    return self->candidateSearch.searchParameter;
}

- (void)setCandidateSearchSearchParameter:(NSString *)searchParameter
{
    self->candidateSearch.searchParameter = searchParameter;
}

- (NSString *)candidateSearchLastName
{
    if (self->candidateSearch.lastName)
    {
        return self->candidateSearch.lastName;
    } else {
        return nil;
    }
}

- (void)setCandidateSearchLastName:(NSString *)lastName
{
    if (lastName && [lastName length] > 0) 
    {
        self->candidateSearch.lastName = lastName;
    } else {
        self->candidateSearch.lastName = nil;
    }
}

- (NSString *)candidateSearchFirstName
{
    return self->candidateSearch.firstName;
}

- (void)setCandidateSearchFirstName:(NSString *)firstName
{
    self->candidateSearch.firstName = firstName;
}

- (NSString *)candidateSearchOffSet
{
    return self->candidateSearch.offSet;
}

- (void)setCandidateSearchOffSet:(NSString *)offset
{
    self->candidateSearch.offSet = offset;
}

- (NSString *)candidateSearchFormat
{
    return self->candidateSearch.format;
}

- (void)setCandidateSearchFormat:(NSString *)format
{
    if (format == @"json")
    {
        self->candidateSearch.format = format;
    } else {
        self->candidateSearch.format = @"xml";
    }
}

#pragma mark -
#pragma mark CandidateDetails Methods

- (NSString *)candidateDetailsCycle
{
    return self->candidateDetails.cycle;
}

- (void)setCandidateDetailsCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->candidateDetails.cycle = result;
    } else {
        self->candidateDetails.cycle = nil;
    }
}

- (NSString *)candidateDetailCandidateId
{
    return self->candidateDetails.candidateId;
}

- (void)setCandidateDetailCandidateId:(NSString *)candidateId
{
    if (candidateId)
    {
        self->candidateDetails.candidateId = candidateId;
    } else {
        self->candidateDetails.candidateId = nil;
    }
}

- (NSString *)candidateDetailsFormat
{
    return self->candidateDetails.format;
}

- (void)setCandidateDetailsFormat:(NSString *)format
{
    if (format == @"JSON")
    {
        self->candidateDetails.format = format;
    } else if (format == @"XML") {
        self->candidateDetails.format = @"xml";
    } else {
        self->candidateDetails.format = @"xml";
    }
}

#pragma mark - 
#pragma mark CandidateLeaders Methods

- (NSString *)candidateLeadersCycle
{
    return self->candidateLeaders.cycle;
}

- (void)setCandidateLeadersCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->candidateLeaders.cycle = result;
    } else {
        self->candidateLeaders.cycle = nil;
    }
}

- (NSString *)candidateLeadersCategory
{
    return self->candidateLeaders.category;
}

- (void)setCandidateLeadersCategory:(NSString *)category
{
    if (category == @"Candidate Loan"){
        self->candidateLeaders.category = @"candidate_loan";
    } else if (category == @"Contribution Total"){
        self->candidateLeaders.category = @"contribution_total";
    } else if (category == @"Debts Owed"){
        self->candidateLeaders.category = @"debts_owed";
    } else if (category == @"Disbursements Total"){
        self->candidateLeaders.category = @"disbursements_total";
    } else if (category == @"End Cash"){
        self->candidateLeaders.category = @"end_cash";
    } else if (category == @"Individual Total"){
        self->candidateLeaders.category = @"individual_total";
    } else if (category == @"PAC Total"){
        self->candidateLeaders.category = @"pac_total";
    } else if (category == @"Receipts Total"){
        self->candidateLeaders.category = @"receipts_total";
    } else if (category == @"Refund Total"){
        self->candidateLeaders.category = @"refund_total";
    } else {
        self->candidateLeaders.category = nil;
    }
}

- (NSString *)candidateLeadersFormat
{
    return self->candidateLeaders.format;
}

- (void)setCandidateLeadersFormat:(NSString *)format
{    
    if (format)
    {
        self->candidateLeaders.format = format;
    } else {
        self->candidateLeaders.format = @"xml";
    } 
}

#pragma mark -
#pragma mark StateCandidates Methods

// TODO: DUPE
- (NSString *)stateCandidatesCycle
{
    return self->stateCandidates.cycle;
}

- (void)setStateCandidatesCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->stateCandidates.cycle = result;
    }
}

- (NSString *)stateCandidatesState
{
    return self->stateCandidates.state;
}

-(void)setStateCandidatesState:(NSString *)state
{
    if (state == @"AK"){
        self->stateCandidates.state = state;
    } else if (state == @"AZ"){
        self->stateCandidates.state = state;
    } else if (state == @"CT"){
        self->stateCandidates.state = state;    
    } else if (state == @"FL"){
        self->stateCandidates.state = state;        
    } else if (state == @"HI"){
        self->stateCandidates.state = state;
    } else if (state == @"IL"){
        self->stateCandidates.state = state;
    } else if (state == @"KY"){
        self->stateCandidates.state = state;
    } else if (state == @"MD"){
        self->stateCandidates.state = state;        
    } else if (state == @"MN"){
        self->stateCandidates.state = state;
    } else if (state == @"MT"){
        self->stateCandidates.state = state;
    } else if (state == @"NE"){
        self->stateCandidates.state = state;
    } else if (state == @"NM"){
        self->stateCandidates.state = state;
    } else if (state == @"OH"){
        self->stateCandidates.state = state;
    } else if (state == @"PA"){
        self->stateCandidates.state = state;
    } else if (state == @"SC"){
        self->stateCandidates.state = state;
    } else if (state == @"TX"){
        self->stateCandidates.state = state; 
    } else if (state == @"VI"){
        self->stateCandidates.state = state;
    } else if (state == @"WI"){
        self->stateCandidates.state = state;
    } else if (state == @"AL"){
        self->stateCandidates.state = state;
    } else if (state == @"CA"){
        self->stateCandidates.state = state;
    } else if (state == @"DC"){
        self->stateCandidates.state = state;
    } else if (state == @"GA"){
        self->stateCandidates.state = state;
    } else if (state == @"IA"){
        self->stateCandidates.state = state;
    } else if (state == @"IN"){
        self->stateCandidates.state = state;
    } else if (state == @"LA"){
        self->stateCandidates.state = state; 
    } else if (state == @"ME"){
        self->stateCandidates.state = state;
    } else if (state == @"MO"){
        self->stateCandidates.state = state;
    } else if (state == @"NC"){
        self->stateCandidates.state = state;
    } else if (state == @"NH"){
        self->stateCandidates.state = state;
    } else if (state == @"NV"){
        self->stateCandidates.state = state;
    } else if (state == @"OK"){
        self->stateCandidates.state = state;
    } else if (state == @"PR"){
        self->stateCandidates.state = state;
    } else if (state == @"SD"){
        self->stateCandidates.state = state;
    } else if (state == @"UT"){
        self->stateCandidates.state = state;
    } else if (state == @"WV"){
        self->stateCandidates.state = state;
    } else if (state == @"AR"){
        self->stateCandidates.state = state;
    } else if (state == @"CO"){
        self->stateCandidates.state = state;
    } else if (state == @"DE"){
        self->stateCandidates.state = state;
    } else if (state == @"GU"){
        self->stateCandidates.state = state;
    } else if (state == @"ID"){
        self->stateCandidates.state = state;
    } else if (state == @"KS"){
        self->stateCandidates.state = state;
    } else if (state == @"MA"){
        self->stateCandidates.state = state;
    } else if (state == @"MI"){
        self->stateCandidates.state = state;
    } else if (state == @"MS"){
        self->stateCandidates.state = state;
    } else if (state == @"ND"){
        self->stateCandidates.state = state;
    } else if (state == @"NJ"){
        self->stateCandidates.state = state;
    } else if (state == @"NY"){
        self->stateCandidates.state = state;
    } else if (state == @"OR"){
        self->stateCandidates.state = state;
    } else if (state == @"RI"){
        self->stateCandidates.state = state;
    } else if (state == @"TN"){
        self->stateCandidates.state = state;
    } else if (state == @"VA"){
        self->stateCandidates.state = state;
    } else if (state == @"WA"){
        self->stateCandidates.state = state;
    } else if (state == @"WY"){
        self->stateCandidates.state = state;
    }
}

- (NSString *)stateCandidatesChamber
{
    return self->stateCandidates.chamber;
}

- (void)setStateCandidatesChamber:(NSString *)chamber
{
    if (chamber == @"House")
    {
        self->stateCandidates.chamber = @"house";
    } else if (chamber == @"Senate") {
        self->stateCandidates.chamber = @"senate";
    }
}

- (NSString *)stateCandidatesFormat
{
    return self->stateCandidates.format;
}

// TODO: DUPE
- (void)setStateCandidatesFormat:(NSString *)format
{
    if (format)
    {
        self->stateCandidates.format = format;
    } else {
        self->stateCandidates.format = @"xml";
    } 
}

#pragma mark -
#pragma mark NewCandidates Methods

- (NSString *)newCandidatesCycle
{
    return self->newCandidates.cycle;
}

- (void)setNewCandidatesCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->newCandidates.cycle = result;
    }
}

- (NSString *)newCandidatesFormat
{
    return self->newCandidates.format;
}

// TODO: DUPE
- (void)setNewCandidatesFormat:(NSString *)format
{
    if (format == @"JSON")
    {
        self->newCandidates.format = @"json";
    } else if (format == @"XML"){
        self->newCandidates.format = @"xml";
    }
}

#pragma mark -
#pragma mark CommitteeSearch Methods

- (NSString *)committeeSearchCycle
{
    return self->committeeSearch.cycle;
}

- (void)setCommitteeSearchCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->committeeSearch.cycle = result;
    }
}

- (NSString *)committeeSearchName
{
    return self->committeeSearch.name;
}

- (void)setCommitteeSearchName:(NSString *)name
{
    if (name && [name length] > 0)
    {
        self->committeeSearch.name = name;
    }
}

- (NSString *)committeeSearchFormat
{
    return self->committeeSearch.format;
}

- (void)setCommitteeSearchFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->committeeSearch.format = @"xml";
    } else if (format == @"JSON") {
        self->committeeSearch.format = @"json";
    }
}

#pragma mark -
#pragma mark CommitteeDetails Methods

- (NSString *)committeeDetailsCycle
{
    return self->committeeDetails.cycle;
}

- (void)setCommitteeDetailsCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->committeeDetails.cycle = result;
    }
}

- (NSString *)committeeDetailsCommitteeId
{
    return self->committeeDetails.committeeId;
}

- (void)setCommitteeDetailsCommitteeId:(NSString *)committeeId
{
    if (committeeId)
    {
        self->committeeDetails.committeeId = committeeId;
    }
}

- (NSString *)committeeDetailsFormat
{
    return self->committeeDetails.format;
}

- (void)setCommitteeDetailsFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->committeeDetails.format = @"xml";
    } else if (format == @"JSON") {
        self->committeeDetails.format = @"json";
    }
}

#pragma mark -
#pragma mark NewCommittee Methods

- (NSString *)newCommitteeCycle
{
    return self->newCommittee.cycle;
}

- (void)setNewCommitteeCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->newCommittee.cycle = result;
    }
}

- (NSString *)newCommitteeFormat
{
    return self->newCommittee.format;
}

// TODO: DUPE
- (void)setNewCommitteeFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->newCommittee.format = @"xml";
    } else if (format == @"JSON") {
        self->newCommittee.format = @"json";
    }
}

#pragma mark -
#pragma CommitteeContributions Methods

- (NSString *)committeeContributionsCycle
{
    return self->committeeContributions.cycle;
}

- (void)setCommitteeContributionsCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->committeeContributions.cycle = result;
    }
}

- (NSString *)committeeContributionsCommitteeId
{
    return self->committeeContributions.committeeId;
}

- (void)setCommitteeContributionsCommitteeId:(NSString *)committeeId
{
    self->committeeContributions.committeeId = committeeId;
}

- (NSString *)committeeContributionsOffset
{
    return self->committeeContributions.offset;
}

- (void)setCommitteeContributionsOffset:(NSString *)offSet
{
    NSInteger multipleOfTwenty = [offSet intValue];
    
    if (offSet && (multipleOfTwenty % 20 == 0))
    {
        self->committeeContributions.offset = offSet;
    } else {
        self->committeeContributions.offset = offSet;
    }
}

- (NSString *)committeeContributionsFormat
{
    return self->committeeContributions.format;
}

- (void)setCommitteeContributionsFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->committeeContributions.format = @"xml";
    } else if (format == @"JSON") {
        self->committeeContributions.format = @"json";
    }
}

#pragma mark -
#pragma mark CommitteeContributionsTo Methods

- (NSString *)committeeContributionsToCycle
{
    return self->committeeContributionsTo.cycle;
}

- (void)setCommitteeContributionsToCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->committeeContributionsTo.cycle = result;
    }
}

- (NSString *)committeeContributionsToCandidateId
{
    return self->committeeContributionsTo.candidateId;
}

- (void)setCommitteeContributionsToCandidateId:(NSString *)candidateId
{
    self->committeeContributionsTo.candidateId = candidateId;
}

- (NSString *)committeeContributionsToCommitteeId
{
    return self->committeeContributionsTo.committeeId;
}

- (void)setCommitteeContributionsToCommitteeId:(NSString *)committeeId
{
    self->committeeContributionsTo.committeeId = committeeId;
}

- (NSString *)committeeContributionsToFormat
{
    return self->committeeContributionsTo.format;
}

- (void)setCommitteeContributionsToFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->committeeContributionsTo.format = @"xml";
    } else if (format == @"JSON") {
        self->committeeContributionsTo.format = @"json";
    }
}

#pragma mark -
#pragma mark CommitteeFilings Methods

- (NSString *)committeeFilingsCycle
{
    return self->committeeFilings.cycle;
}

- (void)setCommitteeFilingsCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->committeeFilings.cycle = cycle;
    }
}

- (NSString *)committeeFilingsCommitteeId
{
    return self->committeeFilings.committeeId;
}

- (void)setCommitteeFilingsCommitteeId:(NSString *)committeeId
{
    self->committeeFilings.committeeId = committeeId;
}

- (NSString *)committeeFilingsFormat
{
    return self->committeeFilings.format;
}

- (void)setCommitteeFilingsFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->committeeFilings.format = @"xml";
    } else if (format == @"JSON") {
        self->committeeFilings.format = @"json";
    }
}

#pragma mark -
#pragma mark LeadershipCommittee Methods

- (NSString *)leadershipCommitteeCycle
{
    return self->leadershipCommittee.cycle;
}

- (void)setLeadershipCommitteeCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->leadershipCommittee.cycle = result;
    }
}

- (NSString *)leadershipCommitteeFormat
{
    return self->leadershipCommittee.format;
}

- (void)setLeadershipCommitteeFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->leadershipCommittee.format = @"xml";
    } else if (format == @"JSON") {
        self->leadershipCommittee.format = @"json";
    }
}

#pragma mark -
#pragma mark ElectronicFilingsByDate Methods

- (NSString *)electronicFilingsByDateCycle
{
    return self->electronicFilingsByDate.cycle;
}

- (void)setElectronicFilingsByDateCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->electronicFilingsByDate.cycle = result;
    }
}

- (NSString *)electronicFilingsByDateDate
{
    return self->electronicFilingsByDate.date;
}

- (void)setElectronicFilingsByDateDate:(NSString *)date
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_date = [formatter dateFromString:date];
    
    NSString *result = [formatter stringFromDate:_date];
    
    if (result)
    {
        self->electronicFilingsByDate.date = result;
    }
}

- (NSString *)electronicFilingsByDateFormat
{
    return self->electronicFilingsByDate.format;
}

- (void)setElectronicFilingsByDateFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->electronicFilingsByDate.format = @"xml";
    } else if (format == @"JSON") {
        self->electronicFilingsByDate.format = @"json";
    }
}

#pragma mark -
#pragma mark FormTypes Methods

- (NSString *)formTypesCycle
{
    return self->formTypes.cycle;
}

- (void)setFormTypesCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->formTypes.cycle = result;
    }
}

- (NSString *)formTypesFormat
{
    return self->formTypes.format;
}

- (void)setFormTypesFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->formTypes.format = @"xml";
    } else if (format == @"JSON") {
        self->formTypes.format = @"json";
    }
}

#pragma mark -
#pragma mark FilingsByType

- (NSString *)filingsByTypeCycle
{
    return self->filingsByType.fields;
}

- (void)setFilingsByTypeCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->filingsByType.fields = result;
    }
}

- (NSString *)filingsByTypeFilingType
{
    return self->filingsByType.filingType;
}

- (void)setFilingsByTypeFilingType:(NSString *)filingType
{
    self->filingsByType.filingType = filingType;
}

- (NSString *)filingsByTypeFormat
{
    return self->filingsByType.format;
}

- (void)setFilingsByTypeFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->filingsByType.format = @"xml";
    } else if (format == @"JSON") {
        self->filingsByType.format = @"json";
    }
}

#pragma mark -
#pragma mark PresCandidateTotals

- (NSString *)presCandidateTotalsCycle
{
    return self->presCandidateTotals.cycle;
}

- (void)setPresCandidateTotalsCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->presCandidateTotals.cycle = result;
    }
}

- (NSString *)presCandidateTotalsFormat
{
    return self->presCandidateTotals.format;
}

- (void)setPresCandidateTotalsFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->presCandidateTotals.format = @"xml";
    } else if (format == @"JSON") {
        self->presCandidateTotals.format = @"json";
    }
}

#pragma mark -
#pragma mark _PresCandidateDetails

- (NSString *)presCandidateDetailsCycle
{
    return self->presCAndidateDetails.cycle;
}

- (void)setPresCandidateDetailsCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->presCAndidateDetails.cycle = result;
    }
}

- (NSString *)presCandidateDetailsCandidateNameOrCommitteeId
{
    return self->presCAndidateDetails.candidateNameOrCommitteeId;
}

- (void)setPresCandidateDetailsCandidateNameOrCommitteeId:(NSString *)candidateNameOrCommitteeId
{
    self->presCAndidateDetails.candidateNameOrCommitteeId = candidateNameOrCommitteeId;
}

- (NSString *)presCandidateDetailsFormat
{
    return self->presCAndidateDetails.format;
}

- (void)setPresCandidateDetailsFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->presCAndidateDetails.format = @"xml";
    } else if (format == @"JSON") {
        self->presCAndidateDetails.format = @"json";
    }
}

#pragma mark -
#pragma mark PresStateAndZipTotals

- (NSString *)presStateAndZipTotalsCycle
{
    return self->presStateAndZipTotals.cycle;
}

- (void)setPresStateAndZipTotalsCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result)
    {
        self->presStateAndZipTotals.cycle = result;
    }
}

- (NSString *)presStateAndZipTotalsResourceType
{
    return self->presStateAndZipTotals.resourceType;
}

- (void)setPresStateAndZipTotalsResourceType:(NSString *)resourceType
{
    if (resourceType == @"State")
    {
        self->presStateAndZipTotals.resourceType = @"states";
    } else if (resourceType == @"Zip") {
        self->presStateAndZipTotals.resourceType = @"zips";
    }
}

- (NSString *)presStateAndZipTotalsStateAbbr
{
    return self->presStateAndZipTotals.stateAbbr;
}

- (void)setPresStateAndZipTotalsStateAbbr:(NSString *)stateAbbr
{
    if (stateAbbr == @"AK"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"AZ"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"CT"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"FL"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"HI"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"IL"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"KY"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"MD"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"MN"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"MT"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"NE"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"NM"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"OH"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"PA"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"SC"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"TX"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"VI"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"WI"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"AL"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"CA"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"DC"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"GA"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"IA"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"IN"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"LA"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"ME"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"MO"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"NC"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"NH"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"NV"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"OK"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"PR"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"SD"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"UT"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"WV"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"AR"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"CO"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"DE"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"GU"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"ID"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"KS"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"MA"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"MI"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"MS"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"ND"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"NJ"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"NY"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"OR"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"RI"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"TN"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"VA"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"WA"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    } else if (stateAbbr == @"WY"){
        self->presStateAndZipTotals.stateAbbr = stateAbbr;
    }
}

- (NSString *)presStateAndZipTotalsFormat
{
    return self->presStateAndZipTotals.format;
}

- (void)setPresStateAndZipTotalsFormat:(NSString *)format
{
    if (format == @"XML")
    {
        self->presStateAndZipTotals.format = @"xml";
    } else if (format == @"JSON") {
        self->presStateAndZipTotals.format = @"json";
    }
}

#pragma mark -
#pragma mark PresDonorInformation Methods

- (NSString *)presDonorInformationCycle
{
    return self->presDonorInformation.cycle;
}

- (void)setPresDonorInformationCycle:(NSString *)cycle
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_cycle = [formatter dateFromString:cycle];
    
    NSString *result = [formatter stringFromDate:_cycle];
    
    if (result) 
    {
        self->presDonorInformation.cycle = result;
    }
}

- (NSString *)presDonorInformationSearchParameter
{
    if (self->presDonorInformation.searchParameter)
    {
        return self->presDonorInformation.searchParameter;
    } else {
        return self->presDonorInformation.searchParameter = @"lname";
    }
}

- (void)setPresDonorInformationSearchParameter:(NSString *)searchParameter
{
    if (searchParameter == @"LNAME") 
    {
        self->presDonorInformation.searchParameter = @"lname";
    } else if (searchParameter == @"ZIP") {
        self->presDonorInformation.searchParameter = @"zip";
    }
}

- (NSString *)presDonorInformationLastName
{
    return self->presDonorInformation.lastName;
}

- (void)setPresDonorInformationLastName:(NSString *)lastName
{
    if (lastName && [lastName length] > 0)
    {
        self->presDonorInformation.lastName = lastName;
    }
}

- (NSString *)presDonorInformationZipCode
{
    return self->presDonorInformation.zipCode;
}

- (void)setPresDonorInformationZipCode:(NSString *)zipCode
{
    if (zipCode && [zipCode isKindOfClass:[NSString class]] && ([zipCode length] > 4 && [zipCode length] < 6)) 
    {
        self->presDonorInformation.zipCode = zipCode;
    }
}

- (NSString *)presDonorInformationOffSet
{
    return self->presDonorInformation.offSet;
}

- (void)setPresDonorInformationOffSet:(NSString *)offSet
{
    NSInteger multipleOfTwenty = [offSet intValue];
    
    if (offSet && (multipleOfTwenty % 20 == 0))
    {
        self->presDonorInformation.offSet = offSet;
    } else {
        self->presDonorInformation.offSet = offSet;
    }
}

- (NSString *)presDonorInformationFormat
{
    return self->presDonorInformation.format;
}

- (void)setPresDonorInformationFormat:(NSString *)format
{
    if (format == @"JSON") 
    {
        self->presDonorInformation.format = @"json";
    } else if (format == @"XML") {
        self->presDonorInformation.format = @"xml";
    }
}

- (void)checkValuesOfStructsUsingBlock:(void (^)(int, NSUInteger, BOOL *))block
{
    NSLog(@"-----------------candidateSearch 1 %@", self->candidateSearch);
    NSLog(@"-----------------candidateSearch 2 %@", self->candidateSearch.cycle);
    NSLog(@"-----------------candidateSearch 3 %@", self->candidateSearch.searchParameter);
    NSLog(@"-----------------candidateSearch 4 %@", self->candidateSearch.format);
}

@end

@implementation NYTimesWrapper
@synthesize article, bestSeller, campaignFinance, apiKey;

- (void)dealloc
{
    [super release];
    [campaignFinance release];
}

- (id)initWithAPIKey:(NSString *)key
{
    self = [super init];
    if (self == nil)
    {
        return nil;
    }
    
    campaignFinance = [[_CampaignFinance alloc] init];
    
    NSParameterAssert(key != nil || [key length] == 0);
    
    self.apiKey = key;
    
    return self;
}

#pragma mark -
#pragma Articles Methods

- (void)setFormat:(NSString *)string
{
    if (string == @"xml")
    {
        self->article.format = string;
    } else {
        self->article.format = @"json";
    }
}

- (NSString *)format
{
    return self->article.format;
}

- (void)setQuery:(NSString *)query
{
    if (query)
    {
        self->article.query = query;
    }
}

- (NSString *)query
{
    return self->article.query;
}

- (void)setFacets:(NSString *)facets
{
    NSString *trim = [facets stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSArray *_facets = [trim componentsSeparatedByString:@","];
    NSString *result = [_facets componentsJoinedByString:@"+"];
    
    if (result)
    {
        self->article.facets = result;
    }
}

- (NSString *)facets
{
    return self->article.facets;
}

- (void)setFields:(NSString *)fields
{
    NSString *trim = [fields stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSArray *_fields = [trim componentsSeparatedByString:@","];
    NSString *result = [_fields componentsJoinedByString:@"+"];
    
    if (result)
    {
        self->article.fields = result;
    }
}

- (NSString *)fields
{
    return self->article.fields;
}

- (void)setOffset:(NSString *)offset
{
    if (offset)
    {
        self->article.offset = offset;
    }
}

- (NSString *)offset
{
    return self->article.offset;
}

- (void)setRank:(NSString *)rank
{
    if (rank)
    {
        self->article.rank = rank;
    }
}

- (NSString *)rank
{
    return self->article.rank;
}

- (void)setStartDate:(NSString *)startDate
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_startDate = [formatter dateFromString:startDate];
    
    NSString *result = [formatter stringFromDate:_startDate];
    
    if (result)
    {
        self->article.startDate = result;
    }
}

- (NSString *)startDate
{
    return self->article.startDate;
}

- (void)setEndDate:(NSString *)endDate
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_endDate = [formatter dateFromString:endDate];
    
    NSString *result = [formatter stringFromDate:_endDate];
    
    if (result)
    {
        self->article.endDate = result;
    }
}

- (NSString *)endDate
{
    return self->article.endDate;
}

#pragma mark -
#pragma Best Sellers Methods

- (void)setListName:(NSString *)listName
{    
    NSArray *_fields = [listName componentsSeparatedByString:@" "];
    NSString *result = [_fields componentsJoinedByString:@"-"];
    
    if (result)
    {
        self->bestSeller.listName = result;
    }
}

- (NSString *)listName
{
    return self->bestSeller.listName;
}

- (void)setDate:(NSString *)date
{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];    
    [formatter setDateFormat:@"yyyyMMdd"];
    
    NSDate *_date = [formatter dateFromString:date];
    
    NSString *result = [formatter stringFromDate:_date];
    
    if (result)
    {
        self->bestSeller.date = result;
    }
}

- (NSString *)date
{
    return self->bestSeller.date;
}

- (void)setBestSellerOffset:(NSString *)offset
{
    NSInteger multipleOfTwenty = [offset intValue];
    
    if (offset && (multipleOfTwenty % 20 == 0))
    {
        self->bestSeller.offset = offset;
    } else {
        self->bestSeller.offset = nil;
    }
}

- (NSString *)bestSellerOffset
{
    return self->bestSeller.offset;
}

- (void)setSortBy:(NSString *)sortBy
{
    if (sortBy == @"BestSellers-Date")
    {
        self->bestSeller.sortBy = @"bestsellers";
    } else if (sortBy == @"Date") {
        self->bestSeller.sortBy = @"date";
    } else if (sortBy == @"ISBN") {
        self->bestSeller.sortBy = @"isbn";
    } else if (sortBy == @"List") {
        self->bestSeller.sortBy = @"list";
    } else if (sortBy == @"List-Name") {
        self->bestSeller.sortBy = @"list-name";
    } else if (sortBy == @"Published-Date") {
        self->bestSeller.sortBy = @"published-date";
    } else if (sortBy == @"Rank") {
        self->bestSeller.sortBy = @"rank";
    } else if (sortBy == @"Weeks-On-List") {
        self->bestSeller.sortBy = @"weeks-on-list";
    } else if (sortBy == @"Rank-Last-Week") {
        self->bestSeller.sortBy = @"rank-last-week";
    } else {
        self->bestSeller.sortBy = nil;    
    }
}

- (NSString *)sortBy
{
    return self->bestSeller.sortBy;
}

- (void)setSortOrder:(NSString *)sortOrder
{
    if (sortOrder)
    {
        self->bestSeller.sortOrder = sortOrder;
    } else {
        self->bestSeller.sortOrder = nil;
    }
}

- (NSString *)sortOrder
{
    return self->bestSeller.sortOrder;
}

- (void)setBestSellerFormat:(NSString *)format
{
    if (format == @"xml")
    {
        self->bestSeller.format = format;
    } else if (format == @"json") {
        self->bestSeller.format = format;
    } else {
        self->bestSeller.format = nil;    
    }
}

- (NSString *)bestSellerFormat
{
    if (self->bestSeller.format)
    {
        return self->bestSeller.format;
    } else {
        return self->bestSeller.format = @"json";
    }
}



@end



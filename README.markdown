# NYTimesWrapper

NYTimes Client Library.

## Article

Conceived at NYTimes HackDay 2011. Related article. http://open.blogs.nytimes.com/2011/12/06/recapping-timesopen-hack-day/

## Classes (currently)

*[NYTimesWrapper](https://github.com/dustineichler/NYTimes/blob/master/NYTimesWrapper/NYTimesWrapper.h) - Base Class.
*[NYTimesArticle](https://github.com/dustineichler/NYTimes/blob/master/NYTimesWrapper/NYTimesArticle.h) - API support for NYTimes Articles.
*[NYTimesBestSeller](https://github.com/dustineichler/NYTimes/blob/master/NYTimesWrapper/NYTimesBestSeller.h) - API support for NYTimes Best Sellers.
*[NYTimesCampaignFinance](https://github.com/dustineichler/NYTimes/blob/master/NYTimesWrapper/NYTimesCampaignFinance.h) - API support for NYTimes Campaign Finance.

## Example
### NYTimes Articles API
<pre>
  NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:ARTICLE_API_KEY];
  
  /**
      Required
   */
  
  [nytimes setQuery:@"Hackday"];
  [nytimes setApiKey:ARTICLE_API_KEY];

  /**
      Optional
   */
  
  [nytimes setStartDate:@"20110102"];
  [nytimes setEndDate:@"20110202"];
  [nytimes setFacets:@"Facet1, Facet2, Facet3"];
  [nytimes setFields:@"Fields1, Fields2, Fields3"];
  [nytimes setOffset:@"1"];
  [nytimes setRank:@"OLDEST"];
  [nytimes setFormat:@"JSON"];
  
  [NYTimesArticle asyncRequest:nytimes 
                       success:^(NSData *data, NSURLResponse *response){
                           NSLog(@"Results %@", data);
                       }failure:^(NSData *data, NSError *error){
                           NSLog(@"Errors %@", error);
                       } tag:@"tag"];
</pre>

### NYTimes BestSeller API

``` objective-c
  NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:ARTICLE_API_KEY];
  /**
   Required
   */
  [nytimes setListName:@"List Name"];
  /**
   Optional
   */
  [articles setDate:@"20110102"];
  [articles setBestSellerOffset:@"20"];
  [articles setSortBy:@"BestSellers-Date"];    
  [articles setBestSellerFormat:@"JSON"];
  
  [NYTimesBestSeller asyncRequest:nytimes
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Results %@", data);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"bestsellers"];
```

### NYTimes Campaign Finance API

<pre>
  /**
      Candidate Search
   */
  
  NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setCandidateSearchCycle:@"20111223"];
  [nytimes.campaignFinance setCandidateSearchLastName:@"Greene"];
  /**
   Optional
   */
  [nytimes.campaignFinance setCandidateSearchFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance candidate search"];
  
  /** 
      Candidate Details
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setCandidateDetailsCycle:@"20111223"];
  [nytimes.campaignFinance setCandidateDetailCandidateId:@"P100000000"];
  /**
   Optional
   */
  [nytimes.campaignFinance setCandidateDetailsFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance candidate details"];
  
  /** 
      Candidate Leaders
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setCandidateLeadersCycle:@"20111223"];
  [nytimes.campaignFinance setCandidateLeadersCategory:@"Candidate Loan"];
  /**
   Optional
   */
  [nytimes.campaignFinance setCandidateLeadersFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance candidate details"];
  
  /**
      State Candidates
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setStateCandidatesCycle:@"20111223"];
  [nytimes.campaignFinance setStateCandidatesState:@"AZ"];
  /**
   Optional
   */
  [nytimes.campaignFinance setStateCandidatesChamber:@"House"];
  [nytimes.campaignFinance setStateCandidatesFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance state candidates"];
  
  /** 
      New Candidates
   */

  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setNewCandidatesCycle:@"20111223"];
  /**
   Optional
   */
  [nytimes.campaignFinance setNewCandidatesFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance new candidates"];
  
  /** 
      Committee Search
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setCommitteeSearchCycle:@"20111223"];    
  [nytimes.campaignFinance setCommitteeSearchName:@"medicare"];
  /**
   Optional
   */
  [nytimes.campaignFinance setCommitteeSearchFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance committee search"];

  /** 
   Committee Details
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setCommitteeDetailsCycle:@"20111223"];
  [nytimes.campaignFinance setCommitteeDetailsCommitteeId:@"C100000000"];
  /**
   Optional
   */
  [nytimes.campaignFinance setCommitteeDetailsFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance committee details"];
  
  /** 
      New Committees
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setNewCommitteeCycle:@"20111223"];
  /**
   Optional
   */
  [nytimes.campaignFinance setNewCommitteeFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance new committees"];
  
  /** 
      Committee Contributions
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setCommitteeContributionsCycle:@"20111223"];
  [nytimes.campaignFinance setCommitteeContributionsCommitteeId:@"C100000000"];
  /**
   Optional
   */
  [nytimes.campaignFinance setCommitteeContributionsOffset:@"20"];
  [nytimes.campaignFinance setCommitteeContributionsFormat:@"JSON"];

  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance committee contributions"];
  
  /** 
      Committee Contributions
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setCommitteeContributionsCycle:@"20111223"];
  [nytimes.campaignFinance setCommitteeContributionsCommitteeId:@"C100000000"];
  /**
   Optional
   */
  [nytimes.campaignFinance setCommitteeContributionsOffset:@"20"];
  [nytimes.campaignFinance setCommitteeContributionsFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance committee contributions"];
  
  /** 
      Committee Contributions To
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setCommitteeContributionsToCycle:@"20111223"];
  [nytimes.campaignFinance setCommitteeContributionsToCandidateId:@"P100000000"];
  [nytimes.campaignFinance setCommitteeContributionsToCommitteeId:@"C100000000"];
  /**
   Optional
   */
  [nytimes.campaignFinance setCommitteeContributionsToFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance committee contributions to"];
  
  /** 
      Committee Filings
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setCommitteeFilingsCycle:@"20111223"];
  [nytimes.campaignFinance setCommitteeFilingsCommitteeId:@"C100000000"];
  /**
   Optional
   */
  
  [nytimes.campaignFinance setCommitteeFilingsFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance committee filings"];
  
  /** 
      Leadership Committees
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setLeadershipCommitteeCycle:@"20111223"];
  /**
   Optional
   */
  [nytimes.campaignFinance setLeadershipCommitteeFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance leadership committees"];
  
  /** 
      Electronic Filings by Date
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setElectronicFilingsByDateCycle:@"20111223"];
  [nytimes.campaignFinance setElectronicFilingsByDateDate:@"20111223"];
  /**
   Optional
   */
  [nytimes.campaignFinance setElectronicFilingsByDateFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance electronic filings by date"];
  
  /** 
      Form Types
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setFormTypesCycle:@"20111223"];
  /**
   Optional
   */
  [nytimes.campaignFinance setFormTypesFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance form types"];
  
  /** 
      Filings by Type
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setFilingsByTypeCycle:@"20111223"];
  /**
   Optional
   */
  [nytimes.campaignFinance setFilingsByTypeFilingType:@"F6"];
  [nytimes.campaignFinance setFilingsByTypeFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance filings by type"];
  
  /** 
      Pres. Candidate Totals
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setPresCandidateTotalsCycle:@"20111223"];
  /**
   Optional
   */
  [nytimes.campaignFinance setPresCandidateTotalsFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance pres. candidate totals"];
  
  /** 
      Pres. Candidate Details
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setPresCandidateDetailsCycle:@"20111223"];
  [nytimes.campaignFinance setPresCandidateDetailsCandidateNameOrCommitteeId:@"Foobar"];
  /**
   Optional
   */
  [nytimes.campaignFinance setPresCandidateDetailsFormat:@"JSON"];

  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance pres. candidate details"];
  
  /** 
      Pres. State/Zip Totals
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setPresStateAndZipTotalsCycle:@"20111223"];
  [nytimes.campaignFinance setPresStateAndZipTotalsResourceType:@"State"];
  [nytimes.campaignFinance setPresStateAndZipTotalsStateAbbr:@"AL"];
  /**
   Optional
   */
  [nytimes.campaignFinance setPresStateAndZipTotalsFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance pres. state/zip totals"];
  
  
  /** 
      Pres. Donor Information
   */
  
  nytimes = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
  /**
   Required
   */
  [nytimes.campaignFinance setPresDonorInformationCycle:@"20111223"];
  [nytimes.campaignFinance setPresDonorInformationSearchParameter:@"LNAME"];
  [nytimes.campaignFinance setPresDonorInformationLastName:@"AnyLastName"];
  [nytimes.campaignFinance setPresDonorInformationZipCode:@"99999"];
  /**
   Optional
   */
  [nytimes.campaignFinance setPresDonorInformationOffSet:@"20"];
  [nytimes.campaignFinance setPresDonorInformationFormat:@"JSON"];
  
  [NYTimesCampaignFinance asyncRequest:nytimes
                               success:^(NSData *data, NSURLResponse *response){
                                   NSLog(@"Results %@", data);
                               }failure:^(NSData *data, NSError *error){
                                   NSLog(@"Errors %@", error);
                               }tag:@"campaignfinance pres. donor information"];
</pre>

### NYTimes Community API

``` objective-c

```


## TODO
plenty. 
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

To use.

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

<pre>
  NYTimesWrapper *bestSellers = [[NYTimesWrapper alloc] initWithKey:@"BESTSELLER-API-KEY"];
  [bestSeller setFormat:@"json"];
  
  [NYTimesBestSeller asyncRequest:bestSellers
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Best Seller Results %@", result);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"best sellers"];
</pre>

<pre>
  NYTimesWrapper *campaignFinance = [[NYTimesWrapper alloc] initWithKey:@"CAMPAIGNFINANCE-API-KEY"];
  [campaignFinance.candidateSearch setCycle:@"2006"];
  [campaignFinance.candidateSearch setSearchParameter:@"Foo"];
  [campaignFinance.candidateSearch setLastName:@"Bar"];
  
  [NYTimesBestSeller asyncRequest:campaignFinance
                          success:^(NSData *data, NSURLResponse *response){
                              NSLog(@"Campaign Finance Results %@", result);
                          }failure:^(NSData *data, NSError *error){
                              NSLog(@"Errors %@", error);
                          }tag:@"best sellers"];
</pre>

## TODO
plenty. 
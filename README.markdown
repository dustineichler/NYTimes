# NYTimesWrapper

NYTimes Objective-C API Wrapper

## Article

Concieved at NYTimes HackDay 2011. Related article. http://open.blogs.nytimes.com/2011/12/06/recapping-timesopen-hack-day/

## Classes (currently)

* [NYTimesWrapper][] - Base Class.
* [NYTimesArticle][] - API support for NYTimes Articles.
* [NYTimesBestSeller][] - API support for NYTimes Best Sellers.
* [NYTimesCampaignFinance][] - API support for NYTimes Campaign Finance.

## Example

To use.

<pre>
  NYTimesWrapper *articles = [[NYTimesWrapper alloc] initWithKey:@"ARTICLES-API-KEY"];
  [articles setQuery:@"NYTimes HackDay"];
  
  [NYTimesArticle asyncRequest:articles 
                       success:^(NSData *data, NSURLResponse *response){
                           NSLog(@"Articles Results %@", data);
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
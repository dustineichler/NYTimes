# NYTimesWrapper

NYTimes Objective-C API Wrapper

## Classes (currently)

* [NYTimesWrapper][] - Base Class.
* [NYTimesArticle][] - API support for NYTimes Articles.
* [NYTimesBestSeller][]; - API support for NYTimes Best Sellers.

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



## TODO
plenty.
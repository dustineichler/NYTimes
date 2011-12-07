//
//  NYTimesWrapperTests.m
//  NYTimesWrapperTests
//
//  Created by Dustin Eichler on 12/2/11.
//  Copyright (c) 2011. All rights reserved.
//

#import "NYTimesWrapperTests.h"
#import "SBJson.h"

#define ARTICLE_API_KEY @"e54e6d296ec5da4fc406da071676d50b:10:60749136"
#define BEST_SELLER_API_KEY @"9227495210144cc6ebf6de9b7ba2a3cf:17:60749136"
#define CAMPAIGN_FINANCE_API_KEY @"BLANK"

#define ARTICLE_SERVER_URL @"http://api.nytimes.com/svc/search/v1/article?"
#define BEST_SELLER_SERVER_URL @"http://api.nytimes.com/svc/books/v2/lists/"
#define CAMPAIGN_FINANCE_SERVER_URL @"BLANK"

@implementation NYTimesWrapperTests
@synthesize articles, bestSellers, campaignFinance, globalURL, receivedData;

- (void)setUp
{
    [super setUp];
    // Set-up code here.
    
    articles = [[NYTimesWrapper alloc] initWithAPIKey:ARTICLE_API_KEY];
    bestSellers = [[NYTimesWrapper alloc] initWithAPIKey:BEST_SELLER_API_KEY];
    campaignFinance = [[NYTimesWrapper alloc] initWithAPIKey:CAMPAIGN_FINANCE_API_KEY];
}

- (void)testArticlesQuery
{
    [NYTimesArticle asyncRequest:articles 
                         success:^(NSData *data, NSURLResponse *response){
                             
                             NSError *error = nil;
                             SBJsonParser *parser = [[SBJsonParser alloc] init];
                             
                             NSString *jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                             
                             NSDictionary *result = [[parser objectWithString:jsonString 
                                                                        error:&error] copy];
                             
                             NSLog(@"Articles Result %@", result);
                             
                         } failure:^(NSData *data, NSError *error){
                             
                             NSLog(@"Errors %@", error);
                             
                         } tag:@"articles"];
}

- (void)testBestSellersQuery
{
    [NYTimesBestSeller asyncRequest:bestSellers
                            success:^(NSData *data, NSURLResponse *response){
                                
                                NSError *error = nil;
                                SBJsonParser *parser = [[SBJsonParser alloc] init];
                                
                                NSString *jsonString = [[NSString alloc] initWithData:data 
                                                                             encoding:NSUTF8StringEncoding];
                                
                                NSDictionary *result = [[parser objectWithString:jsonString 
                                                                           error:&error] copy];
                                NSLog(@"Best Seller Results %@", result);
                                
                            }failure:^(NSData *data, NSError *error){
                                
                                NSLog(@"Errors %@", error);
                                
                            }tag:@"best sellers"];
}

- (void)testCampaignFinanceQuery
{
    [NYTimesCampaignFinance asyncRequest:campaignFinance
                                 success:^(NSData *data, NSURLResponse *response){
                                     NSError *error = nil;
                                     SBJsonParser *parser = [[SBJsonParser alloc] init];
                                     
                                     NSString *jsonString = [[NSString alloc] initWithData:data
                                                                                  encoding:NSUTF8StringEncoding];
                                     
                                     NSDictionary *result = [[parser objectWithString:jsonString 
                                                                                error:&error] copy];
                                     NSLog(@"Campaign Finance Results %@", result);
                                     
                                 }failure:^(NSData *data, NSError *error){
                                     
                                     NSLog(@"Errors %@", error);
                                 }tag:@"best sellers"];
}

- (void)tearDown
{
    [super tearDown];
    // Tear-down code here.

    [articles release];
    [bestSellers release];
}

@end

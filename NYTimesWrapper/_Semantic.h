//
//  _Semantic.h
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/9/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

struct _Name {
    NSString *conceptType;
    NSString *conceptName;
    NSString *fields;
    NSString *offSet;
    NSString *format;
    NSString *apiKey;
};
typedef struct _Name name;

struct _Uri {
    NSString *conceptUri;
    NSString *fields;
    NSString *offSet;
    NSString *format;
    NSString *apiKey;
};
typedef struct _Uri uri;

struct _SemanticArticle {
    NSString *articleUri;
    NSString *fields;
    NSString *offSet;
    NSString *format;
    NSString *apiKey;
};
typedef struct _SemanticArticle semanticArticle;

struct _Search {
    NSString *query;
    NSString *fields;
    NSString *offSet;
    NSString *format;
    NSString *apiKey;
};
typedef struct _Search search;

@interface _Semantic : NSObject
{
    struct _Name name;
    struct _Uri uri;
    struct _SemanticArticle semanticArticle;
    struct _Search search;
}

@property struct _Name name;
@property struct _Uri uri;
@property struct _SemanticArticle semanticArticle;
@property struct _Search search;

#pragma mark -
#pragma mark Name

- (NSString *)nameConceptType;
- (void)setNameConceptType:(NSString *)conceptType;
- (NSString *)nameConceptName;
- (void)setNameConceptName:(NSString *)conceptName;
- (NSString *)nameFields;
- (void)setNameFields:(NSString *)fields;
- (NSString *)nameOffSet;
- (void)setNameOffSet:(NSString *)offSet;
- (NSString *)nameFormat;
- (void)setNameFormat:(NSString *)format;
- (NSString *)nameApiKey;
- (void)setNameApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark Uri

- (NSString *)uriConceptUri;
- (void)setUriConceptUri:(NSString *)conceptUri;
- (NSString *)uriFields;
- (void)setUriFields:(NSString *)fields;
- (NSString *)uriOffSet;
- (void)setUriOffSet:(NSString *)offSet;
- (NSString *)uriFormat;
- (void)setUriFormat:(NSString *)format;
- (NSString *)uriApiKey;
- (void)setUriApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark SemanticArticle

- (NSString *)semanticArticleArticleUri;
- (void)setSemanticArticleArticleUri:(NSString *)articleUri;
- (NSString *)semanticArticleFields;
- (void)setSemanticArticleFields:(NSString *)fields;
- (NSString *)semanticArticleOffSet;
- (void)setSemanticArticleOffSet:(NSString *)offSet;
- (NSString *)semanticArticleFormat;
- (void)setSemanticArticleFormat:(NSString *)format;
- (NSString *)semanticArticleApiKey;
- (void)setSemanticArticleApiKey:(NSString *)apiKey;

#pragma mark -
#pragma mark Search

- (NSString *)searchQuery;
- (void)setSearchQuery:(NSString *)query;
- (NSString *)searchFields;
- (void)setSearchFields:(NSString *)fields;
- (NSString *)searchOffSet;
- (void)setSearchOffSet:(NSString *)offSet;
- (NSString *)searchFormat;
- (void)setSearchFormat:(NSString *)format;
- (NSString *)searchApiKey;
- (void)setSearchApiKey:(NSString *)apiKey;

@end

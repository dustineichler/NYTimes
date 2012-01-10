//
//  _Semantic.m
//  NYTimesWrapper
//
//  Created by Dustin Eichler on 1/9/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "_Semantic.h"

@implementation _Semantic
@synthesize name, uri, semanticArticle, search;

#pragma mark -
#pragma mark Name

- (NSString *)nameConceptType
{
    return self->name.conceptType;
}

- (void)setNameConceptType:(NSString *)conceptType
{
    if (conceptType == @"nytd_geo") {
        self->name.conceptType = conceptType;
    } else if (conceptType == @"nytd_per") {
        self->name.conceptType = conceptType;
    } else if (conceptType == @"nytd_geo") {
        self->name.conceptType = conceptType;
    } else if (conceptType == @"nytd_des") {
        self->name.conceptType = conceptType;
    }
}

- (NSString *)nameConceptName
{
    return self->name.conceptName;
}

- (void)setNameConceptName:(NSString *)conceptName
{
    if (conceptName && [conceptName length] > 0)
    {
        self->name.conceptName = [conceptName lowercaseString];
    }
}

- (NSString *)nameFields
{
    return self->name.fields;
}

- (void)setNameFields:(NSString *)fields
{
    NSArray *_fields = [fields componentsSeparatedByString:@","];
    
    for (NSString *field in _fields)
    {
        if (field == @"ALL") {
            self->name.fields = @"all";
        } else if (field == @"TICKER SYMBOL") {
            self->name.fields = @"ticker_symbol";
        } else if (field == @"LINKS") {
            self->name.fields = @"links";
        } else if (field == @"TAXONOMY") {
            self->name.fields = @"taxonomy";
        } else if (field == @"COMBINATIONS") {
            self->name.fields = @"combinations";
        } else if (field == @"GEOCODES") {
            self->name.fields = @"geocodes";
        } else if (field == @"ARTICLE LIST") {
            self->name.fields = @"article_list";
        } else if (field == @"SCOPE NOTES") {
            self->name.fields = @"scope_notes";    
        } else if (field == @"SEARCH API QUERY") {
            self->name.fields = @"search_api_query";
        }
    }
}

- (NSString *)nameOffSet
{
    return self->name.offSet;
}

- (void)setNameOffSet:(NSString *)offSet
{
    int _offSet = [offSet intValue];
    
    if (_offSet % 10 == 0)
    {
        self->name.offSet = offSet;
    }
}

- (NSString *)nameFormat
{
    return self->name.format;
}

- (void)setNameFormat:(NSString *)format
{
    if (format == @"XML") {
        self->name.format = @"xml";
    } else if (format == @"JSON") {
        self->name.format = @"json";
    }
}

- (NSString *)nameApiKey
{
    return self->name.apiKey;
}

- (void)setNameApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->name.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark Uri

- (NSString *)uriConceptUri
{
    return self->uri.conceptUri;
}

- (void)setUriConceptUri:(NSString *)conceptUri
{
    BOOL result = [[conceptUri lowercaseString] hasPrefix:@"http://"];
    
    if (result)
    {
        self->uri.conceptUri = conceptUri;
    }
}

- (NSString *)uriFields
{
    return self->uri.fields;
}

- (void)setUriFields:(NSString *)fields
{
    NSArray *_fields = [fields componentsSeparatedByString:@","];
    
    for (NSString *field in _fields)
    {
        if (field == @"ALL") {
            self->uri.fields = @"all";
        } else if (field == @"TICKER SYMBOL") {
            self->uri.fields = @"ticker_symbol";
        } else if (field == @"LINKS") {
            self->uri.fields = @"links";
        } else if (field == @"TAXONOMY") {
            self->uri.fields = @"taxonomy";
        } else if (field == @"COMBINATIONS") {
            self->uri.fields = @"combinations";
        } else if (field == @"GEOCODES") {
            self->uri.fields = @"geocodes";
        } else if (field == @"ARTICLE LIST") {
            self->uri.fields = @"article_list";
        } else if (field == @"SCOPE NOTES") {
            self->uri.fields = @"scope_notes";    
        } else if (field == @"SEARCH API QUERY") {
            self->uri.fields = @"search_api_query";
        }
    }
}

- (NSString *)uriOffSet
{
    return self->uri.offSet;
}

- (void)setUriOffSet:(NSString *)offSet
{
    int _offSet = [offSet intValue];
    
    if (_offSet % 20 == 0)
    {
        self->uri.offSet = offSet;
    }
}

- (NSString *)uriFormat
{
    return self->uri.format;
}

- (void)setUriFormat:(NSString *)format
{
    if (format == @"XML") {
        self->uri.format = @"xml";
    } else if (format == @"JSON") {
        self->uri.format = @"json";
    }
}

- (NSString *)uriApiKey
{
    return self->uri.apiKey;
}

- (void)setUriApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->uri.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark SemanticArticle

- (NSString *)semanticArticleArticleUri
{
    return self->semanticArticle.articleUri;
}

- (void)setSemanticArticleArticleUri:(NSString *)articleUri
{
    BOOL result = [[articleUri lowercaseString] hasPrefix:@"http://"];
    
    if (result)
    {
        self->semanticArticle.articleUri = articleUri;
    }
}

- (NSString *)semanticArticleFields
{
    return self->semanticArticle.fields;
}

- (void)setSemanticArticleFields:(NSString *)fields
{
    NSArray *_fields = [fields componentsSeparatedByString:@","];
    
    for (NSString *field in _fields)
    {
        if (field == @"ALL") {
            self->semanticArticle.fields = @"all";
        } else if (field == @"TICKER SYMBOL") {
            self->semanticArticle.fields = @"ticker_symbol";
        } else if (field == @"LINKS") {
            self->semanticArticle.fields = @"links";
        } else if (field == @"TAXONOMY") {
            self->semanticArticle.fields = @"taxonomy";
        } else if (field == @"COMBINATIONS") {
            self->semanticArticle.fields = @"combinations";
        } else if (field == @"GEOCODES") {
            self->semanticArticle.fields = @"geocodes";
        } else if (field == @"ARTICLE LIST") {
            self->semanticArticle.fields = @"article_list";
        } else if (field == @"SCOPE NOTES") {
            self->semanticArticle.fields = @"scope_notes";    
        } else if (field == @"SEARCH API QUERY") {
            self->semanticArticle.fields = @"search_api_query";
        }
    }
}

- (NSString *)semanticArticleOffSet
{
    return self->semanticArticle.offSet;
}

- (void)setSemanticArticleOffSet:(NSString *)offSet
{
    int _offset = [offSet intValue];
    
    if (_offset % 20 == 0)
    {
        self->semanticArticle.offSet = offSet;
    }
}

- (NSString *)semanticArticleFormat
{
    return self->semanticArticle.format;
}

- (void)setSemanticArticleFormat:(NSString *)format
{
    if (format == @"XML") {
        self->semanticArticle.format = @"xml";        
    } else if (format == @"JSON") {
        self->semanticArticle.format = @"json";
    }
}

- (NSString *)semanticArticleApiKey
{
    return self->semanticArticle.apiKey;
}

- (void)setSemanticArticleApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->semanticArticle.apiKey = apiKey;
    }
}

#pragma mark -
#pragma mark Search

- (NSString *)searchQuery
{
    return self->search.query;
}

- (void)setSearchQuery:(NSString *)query
{
    if (query && [query length] > 0)
    {
        self->search.query = query;
    }
}

- (NSString *)searchFields
{
    return self->search.fields;
}

- (void)setSearchFields:(NSString *)fields
{
    NSArray *_fields = [fields componentsSeparatedByString:@","];
    
    for (NSString *field in _fields)
    {
        if (field == @"ALL") {
            self->search.fields = @"all";
        } else if (field == @"TICKER SYMBOL") {
            self->search.fields = @"ticker_symbol";
        } else if (field == @"LINKS") {
            self->search.fields = @"links";
        } else if (field == @"TAXONOMY") {
            self->search.fields = @"taxonomy";
        } else if (field == @"COMBINATIONS") {
            self->search.fields = @"combinations";
        } else if (field == @"GEOCODES") {
            self->search.fields = @"geocodes";
        } else if (field == @"ARTICLE LIST") {
            self->search.fields = @"article_list";
        } else if (field == @"SCOPE NOTES") {
            self->search.fields = @"scope_notes";    
        } else if (field == @"SEARCH API QUERY") {
            self->search.fields = @"search_api_query";
        }
    }
}

- (NSString *)searchOffSet
{
    return self->search.offSet;
}

- (void)setSearchOffSet:(NSString *)offSet
{
    int _offSet = [offSet intValue];
    
    if (_offSet % 20 == 0)
    {
        self->search.offSet = offSet;
    }
}

- (NSString *)searchFormat
{
    return self->search.format;
}

- (void)setSearchFormat:(NSString *)format
{
    if (format == @"XML") {
        self->search.format = @"xml";
    } else if (format == @"JSON") {
        self->search.format = @"json";
    }
}

- (NSString *)searchApiKey
{
    return self->search.apiKey;
}

- (void)setSearchApiKey:(NSString *)apiKey
{
    if (apiKey && [apiKey length] > 0)
    {
        self->search.apiKey = apiKey;
    }
}

@end

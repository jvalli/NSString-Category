//
//  NSString+Extensions.m
//
//  Created by Jeronimo Valli on 3/4/13.
//

#import "NSString+Extensions.h"

- (BOOL)isAlphaNumeric
{
    NSCharacterSet *unwantedCharacters = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
    return ([self rangeOfCharacterFromSet:unwantedCharacters].location == NSNotFound) ? YES : NO;
}

- (BOOL)isNumeric
{
    NSCharacterSet *unwantedCharacters = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789."] invertedSet];
    return ([self rangeOfCharacterFromSet:unwantedCharacters].location == NSNotFound) ? YES : NO;
}

- (BOOL)isTelephone
{
    NSCharacterSet *unwantedCharacters = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789-()"] invertedSet];
    return ([self rangeOfCharacterFromSet:unwantedCharacters].location == NSNotFound) ? YES : NO;
}

- (BOOL)isValidEmail
{
    BOOL isValidEmail = YES;
    NSString *pattern = [NSString stringWithFormat:@"[A-Z0-9]+@[A-Z0-9_-]+\\.[A-Z]{2,4}"];
 	  NSRegularExpression *regEx = [NSRegularExpression regularExpressionWithPattern:pattern
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                             error:nil];
    NSRange range;
    range.location = 0;
    range.length = [self length];
    
    if ([regEx numberOfMatchesInString:self options:0 range:range] == 0) {
        
        isValidEmail = NO;
    }
    return isValidEmail;
}

- (BOOL)isBlank
{
    return ![self isNotBlank];
}

- (BOOL)isNotBlank
{
    return self && ![[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] isEqualToString:@""];
}


@end

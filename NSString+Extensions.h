//
//  NSString+Extensions.h
//
//  Created by Jeronimo Valli on 3/4/13.
//

#import <Foundation/Foundation.h>

@interface NSString(Extensions)

- (BOOL)isAlphaNumeric;
- (BOOL)isNumeric;
- (BOOL)isTelephone;
- (BOOL)isValidEmail;
- (BOOL)isBlank;
- (BOOL)isNotBlank;

@end

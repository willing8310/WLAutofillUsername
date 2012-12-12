//
//  UIDevice+Username.m
//  WLAutofillUsername
//
//  Created by wilson on 12-12-12.
//  Copyright (c) 2012年 Meitui. All rights reserved.
//

#import "UIDevice+Username.h"

@implementation UIDevice (Username)

- (NSString *)username{
    NSMutableString *defaultUsername = [[NSMutableString alloc] initWithString:self.name];
    NSRegularExpression *replaceRegularExpress = [[NSRegularExpression alloc] initWithPattern:@"[\"“”的\\s]|(iPhone)|(iPad)|(iPad mini)|(iPod)|(iPod touch)|(’s)|('s)" options:NSRegularExpressionCaseInsensitive error:nil];
    [replaceRegularExpress replaceMatchesInString:defaultUsername options:0 range:NSMakeRange(0, defaultUsername.length) withTemplate:@""];

    return defaultUsername;
}

@end

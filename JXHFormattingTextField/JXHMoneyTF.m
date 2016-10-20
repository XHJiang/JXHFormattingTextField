//
//  JXHMoneyTF.m
//  PickerView
//
//  Created by mac on 2016/10/19.
//  Copyright © 2016年 JXH. All rights reserved.
//

#import "JXHMoneyTF.h"

@implementation JXHMoneyTF


- (BOOL)valueChangeValueString:(NSString *)string shouldChangeCharactersInRange:(NSRange)range
{
    NSString *text             = self.text;
    NSString *decimalSeperator = @".";
    NSCharacterSet *charSet    = nil;
    NSString *numberChars      = @"0123456789";
    
    if ([string isEqualToString:decimalSeperator] && [text length] == 0) {
        return NO;
    }
    
    NSRange decimalRange = [text rangeOfString:decimalSeperator];
    BOOL isDecimalNumber = (decimalRange.location != NSNotFound);
    if (isDecimalNumber) {
        charSet = [NSCharacterSet characterSetWithCharactersInString:numberChars];
        if ([string rangeOfString:decimalSeperator].location != NSNotFound) {
            return NO;
        }
    }
    else {
        numberChars = [numberChars stringByAppendingString:decimalSeperator];
        charSet = [NSCharacterSet characterSetWithCharactersInString:numberChars];
    }
    
    NSCharacterSet *invertedCharSet = [charSet invertedSet];
    NSString *trimmedString = [string stringByTrimmingCharactersInSet:invertedCharSet];
    text = [text stringByReplacingCharactersInRange:range withString:trimmedString];
    
    if (isDecimalNumber) {
        NSArray *arr = [text componentsSeparatedByString:decimalSeperator];
        if ([arr count] == 2) {
            if ([arr[1] length] > 2) {
                return NO;
            }
        }
    }
    
    self.text = text;
    return NO;
}

@end

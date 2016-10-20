//
//  JXHNumberTF.m
//  PickerView
//
//  Created by mac on 2016/10/19.
//  Copyright © 2016年 JXH. All rights reserved.
//

#import "JXHNumberTF.h"



@implementation JXHNumberTF

- (BOOL)valueChangeValueString:(NSString *)string shouldChangeCharactersInRange:(NSRange)range
{
    NSLog(@"%s",__func__);
    
    NSString *text = self.text;

    NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789\b"];
    
    if ([string rangeOfCharacterFromSet:[characterSet invertedSet]].location != NSNotFound) {
        return NO;
    }
    
    text = [text stringByReplacingCharactersInRange:range withString:string];
    text = [text stringByReplacingOccurrencesOfString:@" " withString:@""];
    [self setText:text];
    return NO;
    
}




@end

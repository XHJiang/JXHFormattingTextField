//
//  ViewController.m
//  PickerView
//
//  Created by mac on 2016/10/19.
//  Copyright © 2016年 JXH. All rights reserved.
//

#import "ViewController.h"
#import "JXHBankCardTF.h"
#import "UITextField+Extension.h"
#import "JXHMoneyTF.h"
#import "JXHNumberTF.h"
#import "JXHIphoneTF.h"

@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet JXHBankCardTF *bankCardTF;
@property (weak, nonatomic) IBOutlet JXHMoneyTF *modeyTF;
@property (weak, nonatomic) IBOutlet JXHNumberTF *numberTF;
@property (weak, nonatomic) IBOutlet JXHIphoneTF *iPhoneTF;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.bankCardTF.delegate = self;
    self.modeyTF.delegate = self;
    self.numberTF.delegate = self;
    self.iPhoneTF.delegate = self;
    
    

}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    [textField valueChangeValueString:string shouldChangeCharactersInRange:range];

    
    return NO;
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"%s",__func__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end



typedef NS_ENUM(NSInteger, JXHTextFieldFormat) {
    JXHTextFieldFormatBankCard,
    JXHTextFieldFormatPhone
};


@interface UITextField (JXH)

- (void)jxh_textFormat:(JXHTextFieldFormat)format;

@end



static const void *key = &key;

@implementation UITextField (JXH)

- (void)jxh_textFormat:(JXHTextFieldFormat)format {
    
}

@end












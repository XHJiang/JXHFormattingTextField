# formattingTextField
高度定制输入框输入内容和样式

用户在输入电话号码的时候自动格式化为123 4567 8901
用户在输入银行卡号的时候自动格式化为1234 1234 1234 1234 123(16-19位)
用户在输入金钱的时候自动判断两位,一个小数点,如123.12
任意限制输入内容的输入框(不在允许输入范围内的东西不显示)

使用方便,
只需要将你需要的输入框样式拖入你的程序中,创建相应的TF
然后把桥接的扩展文件拖入工程
> UITextField+Extension
在控制里的TF代理方法中调用一下桥接文件里的方法即可
```objc
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    [textField valueChangeValueString:string shouldChangeCharactersInRange:range];
    return NO;    
}

```

基本没有啥侵入性,而且可以多个不同样式在一个界面不用写任何多余代码

[简书地址]()
[id]: <http://www.jianshu.com/users/f6a44369ac1a/latest_articles/>  "简书地址"


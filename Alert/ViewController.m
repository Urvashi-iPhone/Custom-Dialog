//
//  ViewController.m
//  Alert
//
//  Created by Tecksky Techonologies on 11/11/16.
//  Copyright © 2016 Softranz Technologies. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor colorWithRed:0.8f green:0.8f blue:0.8f alpha:1.0f]];
    
    // A simple button to launch the demo
    UIButton *launchDialog = [UIButton buttonWithType:UIButtonTypeCustom];
    [launchDialog setFrame:CGRectMake(10, 30, self.view.bounds.size.width-20, 50)];
    [launchDialog addTarget:self action:@selector(launchDialog:) forControlEvents:UIControlEventTouchDown];
    [launchDialog setTitle:@"Launch Dialog" forState:UIControlStateNormal];
    [launchDialog setBackgroundColor:[UIColor whiteColor]];
    [launchDialog setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [launchDialog.layer setBorderWidth:0];
    [launchDialog.layer setCornerRadius:5];
    [self.view addSubview:launchDialog];
    
    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 282)];
//    
//    
//    UIImage *wonImage = [UIImage imageNamed:@"radio-checked.png"];
//    
//    imageView.contentMode=UIViewContentModeCenter;
//    [imageView setImage:wonImage];
//    
//    
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert Message"
//                                                        message:@"hiii\n website: www.iberrys.com\n email: quangminh@berrys.com\nmobile:45866564565544554"
//                                                       delegate:self
//                                              cancelButtonTitle:@"OK"
//                                              otherButtonTitles: nil];
//  
//    
//    
//    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0,250 , 320, 30)];
//    textField.borderStyle = UITextBorderStyleRoundedRect;
//    textField.font = [UIFont systemFontOfSize:15];
//    textField.placeholder = @"enter text";
//    textField.autocorrectionType = UITextAutocorrectionTypeNo;
//    textField.keyboardType = UIKeyboardTypeDefault;
//    textField.returnKeyType = UIReturnKeyDone;
//    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
//    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
//    textField.delegate = self;
//    [alertView addSubview:textField];
//    
//    [alertView addSubview:textField];
//    
//    [alertView setValue:textField forKey:@"accessoryView"];
////    [alertView setValue:imageView forKey:@"accessoryView"];
//    [alertView show];

    
   }
- (IBAction)launchDialog:(id)sender
{
    // Here we need to pass a full frame
    CustomIOSAlertView *alertView = [[CustomIOSAlertView alloc] init];
    
    // Add some custom content to the alert view
    [alertView setContainerView:[self createDemoView]];
    
    // Modify the parameters
    [alertView setButtonTitles:[NSMutableArray arrayWithObjects:@"Close1", @"Close2", @"Close3", nil]];
    [alertView setDelegate:self];
    
    // You may use a Block, rather than a delegate.
//    [alertView setOnButtonTouchUpInside:^(CustomIOSAlertView *alertView, int buttonIndex)
//    {
//       // NSLog(@"Block: Button at position %d is clicked on alertView %d.", buttonIndex, (int)[alertView tag]);
//       // [alertView close];
//    }
//     ];
    
    [alertView setUseMotionEffects:true];
    
    // And launch the dialog
    [alertView show];
}

- (void)customIOS7dialogButtonTouchUpInside: (CustomIOSAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex
{
    
    NSLog(@"Delegate: Button at position %d is clicked on alertView %d.", (int)buttonIndex, (int)[alertView tag]);
   // [alertView close];
}

- (UIView *)createDemoView
{
    UIView *demoView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 290, 300)];
    
   
    
  
    
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10,10 , 270, 20)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.font = [UIFont systemFontOfSize:15];
    textField.placeholder = @"enter text1";
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    textField.keyboardType = UIKeyboardTypeDefault;
    textField.returnKeyType = UIReturnKeyDone;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField.delegate = self;
    [demoView addSubview:textField];
    
    
    UITextField *textField2 = [[UITextField alloc] initWithFrame:CGRectMake(10,50 , 270, 20)];
    textField2.borderStyle = UITextBorderStyleRoundedRect;
    textField2.font = [UIFont systemFontOfSize:15];
    textField2.placeholder = @"enter text2";
    textField2.autocorrectionType = UITextAutocorrectionTypeNo;
    textField2.keyboardType = UIKeyboardTypeDefault;
    textField2.returnKeyType = UIReturnKeyDone;
    textField2.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField2.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField2.delegate = self;
    [demoView addSubview:textField2];
    
    UITextField *textField3 = [[UITextField alloc] initWithFrame:CGRectMake(10,90 , 270, 20)];
    textField3.borderStyle = UITextBorderStyleRoundedRect;
    textField3.font = [UIFont systemFontOfSize:15];
    textField3.placeholder = @"enter text3";
    textField3.autocorrectionType = UITextAutocorrectionTypeNo;
    textField3.keyboardType = UIKeyboardTypeDefault;
    textField3.returnKeyType = UIReturnKeyDone;
    textField3.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField3.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField3.delegate = self;
    [demoView addSubview:textField3];

    UITextField *textField4 = [[UITextField alloc] initWithFrame:CGRectMake(10,130 , 270, 20)];
    textField4.borderStyle = UITextBorderStyleRoundedRect;
    textField4.font = [UIFont systemFontOfSize:15];
    textField4.placeholder = @"enter text4";
    textField4.autocorrectionType = UITextAutocorrectionTypeNo;
    textField4.keyboardType = UIKeyboardTypeDefault;
    textField4.returnKeyType = UIReturnKeyDone;
    textField4.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField4.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField4.delegate = self;
    [demoView addSubview:textField4];

    UITextField *textField5 = [[UITextField alloc] initWithFrame:CGRectMake(10,170 , 270, 20)];
    textField5.borderStyle = UITextBorderStyleRoundedRect;
    textField5.font = [UIFont systemFontOfSize:15];
    textField5.placeholder = @"enter text5";
    textField5.autocorrectionType = UITextAutocorrectionTypeNo;
    textField5.keyboardType = UIKeyboardTypeDefault;
    textField5.returnKeyType = UIReturnKeyDone;
    textField5.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField5.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField5.delegate = self;
    [demoView addSubview:textField5];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 220, 150, 50)];
    [imageView setImage:[UIImage imageNamed:@"app_bg.jpg"]];
    [demoView addSubview:imageView];
    
    UILabel *lbl=[[UILabel alloc]initWithFrame:CGRectMake(200, 220,100,30)];
    lbl.text=@"IOS";
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.textColor = [UIColor whiteColor];
    lbl.font = [UIFont fontWithName:@"AlNile" size:10.0];
    lbl.backgroundColor=[[UIColor redColor]colorWithAlphaComponent:0.5f];
    lbl.layer.borderColor=[UIColor blackColor].CGColor;
    lbl.layer.borderWidth=1.0f;
    lbl.layer.cornerRadius = 6.0f;
    lbl.highlighted = YES;
    lbl.highlightedTextColor = [UIColor blueColor];
    lbl.lineBreakMode = YES;
    lbl.numberOfLines = 0;
    lbl.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"radio-checked.png"]];
    [demoView addSubview:lbl];

      return demoView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

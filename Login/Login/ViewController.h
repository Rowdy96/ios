//
//  ViewController.h
//  Login
//
//  Created by Rahul on 3/22/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>
#define KNSUSERDEFAULTPERSON @"userdefaultkey"
@interface ViewController : UIViewController <UITextFieldDelegate,UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *empAddresTxt;

@property (weak, nonatomic) IBOutlet UITextField *empNameTxt;
@property (weak, nonatomic) IBOutlet UITextField *empName;
@property (weak, nonatomic) IBOutlet UITextField *empPositionTxt;
- (IBAction)showEmpDetails:(id)sender;
- (IBAction)addUserDetails:(id)sender;


@end


//
//  ViewController.h
//  calculator
//
//  Created by Rahul on 3/19/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>

int operation;
double displayNumber;
double resultNumber;
BOOL iSDecimal;

@interface ViewController : UIViewController{

    IBOutlet UILabel *result;
}
-(void)operationWithNumber:(int)theNumber;
-(void)setResultWithNumber:(int)theNumber;
- (IBAction)clearbtn:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)dot:(id)sender;
- (IBAction)eqauls:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)substract:(id)sender;
- (IBAction)multiply:(id)sender;

@end


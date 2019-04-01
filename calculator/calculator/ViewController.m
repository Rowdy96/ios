	//
//  ViewController.m
//  calculator
//
//  Created by Rahul on 3/19/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    resultNumber = 0;
    iSDecimal = false;
    result.adjustsFontSizeToFitWidth = TRUE;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)operationWithNumber:(int)theNumber{
    iSDecimal = false;
    if(resultNumber == 0){
        resultNumber = displayNumber;
    }else{
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        switch (operation) {
            case 1:
                resultNumber += displayNumber;
                break;
            case 2:
                resultNumber -= displayNumber;
                break;
            case 3:
                resultNumber *= displayNumber;
                break;
            case 4:
                resultNumber /= displayNumber;
                break;
            default:
                break;
        }
    }
    operation = theNumber;
    displayNumber = 0;
}

-(void)setResultWithNumber:(int)theNumber{
    if(!iSDecimal){
        displayNumber *= 10;
        displayNumber += theNumber;
        result.text =[NSString stringWithFormat:@"%.0f",displayNumber];
    }else{
        result.text = [result.text stringByAppendingString:[NSString stringWithFormat:@"%d",theNumber]];
    }
}

- (IBAction)clearbtn:(id)sender {
    operation =0;
    resultNumber =0 ;
    displayNumber = 0;
    iSDecimal = false;
    result.text = [NSString stringWithFormat:@"%i",0];
}

- (IBAction)seven:(id)sender {
    [self setResultWithNumber:7];
}

- (IBAction)eight:(id)sender {
      [self setResultWithNumber:8];
}

- (IBAction)nine:(id)sender {
      [self setResultWithNumber:9];
}

- (IBAction)four:(id)sender {
      [self setResultWithNumber:4];
}

- (IBAction)five:(id)sender {
      [self setResultWithNumber:5];
}

- (IBAction)six:(id)sender {
      [self setResultWithNumber:6];
}

- (IBAction)one:(id)sender {
      [self setResultWithNumber:1];
}

- (IBAction)two:(id)sender {
      [self setResultWithNumber:2];
}

- (IBAction)three:(id)sender {
      [self setResultWithNumber:3];
}

- (IBAction)zero:(id)sender {
      [self setResultWithNumber:0];
}

- (IBAction)dot:(id)sender {
    iSDecimal =true;
    NSRange range = [result.text rangeOfString:@"."];
    if(range.location == NSNotFound){
        result.text =[result.text stringByAppendingString:@"."];
    }
}

- (IBAction)eqauls:(id)sender {
    [self operationWithNumber:operation];
    result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
    displayNumber = [result.text floatValue];
    resultNumber = 0;
}

- (IBAction)add:(id)sender {
    if(resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        displayNumber= [result.text floatValue];
        resultNumber=0;
    }
    [self operationWithNumber:1];
}

- (IBAction)divide:(id)sender {
    
    if(resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        displayNumber= [result.text floatValue];
        resultNumber=0;
    }
    [self operationWithNumber:4];
    
    
}

- (IBAction)substract:(id)sender {
    if(resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        displayNumber= [result.text floatValue];
        resultNumber=0;
    }
    [self operationWithNumber:2];
}

- (IBAction)multiply:(id)sender {
    if(resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        displayNumber= [result.text floatValue];
        resultNumber=0;
    }
    [self operationWithNumber:3];
}
@end

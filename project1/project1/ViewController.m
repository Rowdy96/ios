//
//  ViewController.m
//  project1
//
//  Created by Rahul on 3/15/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textfield1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewController

- (IBAction)showButton:(id)sender {
    self.label2.text = self.textfield1.text;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

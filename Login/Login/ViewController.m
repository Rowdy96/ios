//
//  ViewController.m
//  Login
//
//  Created by Rahul on 3/22/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import "ViewController.h"
#import "employee.h"
@interface ViewController ()
@property(strong,nonatomic) NSMutableArray *objectArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.objectArray = [[NSMutableArray alloc]init];
    [[self empName]setDelegate:self];
    [[self empPositionTxt]setDelegate:self];
    [[self empAddresTxt]setDelegate:self];
    [[self empNameTxt]setDelegate:self];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showEmpDetails:(id)sender {
    
//    NSLog( @"ID : %@ " ,[[NSUserDefaults standardUserDefaults] stringForKey:@"userId"]);
//    NSLog( @"Name : %@ " ,[[NSUserDefaults standardUserDefaults] stringForKey:@"userName"]);
//    NSLog( @"Postion : %@ " ,[[NSUserDefaults standardUserDefaults] stringForKey:@"userPosition"]);
//    NSLog( @"Address : %@ " ,[[NSUserDefaults standardUserDefaults] stringForKey:@"userAddress"]);
//
    
   // employee *Employee = [[employee alloc] init];
   // Employee = [self readPersonObjectWWithKey:KNSUSERDEFAULTPERSON];
    NSMutableArray *printArray = [[NSMutableArray alloc]init];
    printArray = [self readPersonObjectWWithKey:KNSUSERDEFAULTPERSON];
   // NSLog();
  //    NSLog(@"Id :%@",Employee.employeeId);
  //    NSLog(@"Name: %@",Employee.employeeName);
  //    NSLog(@"Position: %@",Employee.employeePosition);
  //    NSLog(@"Address: %@",Employee.employeeAddress);
}

- (IBAction)addUserDetails:(id)sender {
   
//    [[NSUserDefaults standardUserDefaults] setValue:self.empNameTxt.text forKey:@"userId"];
//    [[NSUserDefaults standardUserDefaults] setValue:self.empName.text forKey:@"userName"];
//    [[NSUserDefaults standardUserDefaults] setValue:self.empPositionTxt.text forKey:@"userPosition"];
//    [[NSUserDefaults standardUserDefaults] setValue:self.empAddresTxt.text forKey:@"userAddress"];
//
    
    employee *Employee = [[employee alloc] init];
    [Employee setEmployeeId:[[self empNameTxt]text]];
    [Employee setEmployeeName:[[self empName]text]];
    [Employee setEmployeeAddress:[[self empAddresTxt]text]];
    [Employee setEmployeePosition:[[self empPositionTxt]text]];
    [self writePersonObject:Employee];
    [self showEmpDetails:nil];
}
-(void)writePersonObject:(employee *)Employee{
    NSData *personObject = [NSKeyedArchiver archivedDataWithRootObject:Employee];
    [self.objectArray addObject:personObject];
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:self.objectArray] forKey:KNSUSERDEFAULTPERSON];
    // [[NSUserDefaults standardUserDefaults] setObject:personObject forKey:KNSUSERDEFAULTPERSON];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
-(NSMutableArray *)readPersonObjectWWithKey: (NSString *)key{
    //NSData *personObject = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    // employee *Employee = [NSKeyedUnarchiver unarchiveObjectWithData:personObject];
    //NSMutableArray *currentDefaults = [NSUserDefaults standardUserDefaults];
    NSData *dataInSavedArray = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    NSMutableArray *objectArray = [NSKeyedUnarchiver unarchiveObjectWithData:dataInSavedArray ];
    return objectArray;
}
#pragma mark - UITextFieldDelegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}
-(BOOL)textViewShouldEndEditing:(UITextView *)textView{
    return [textView resignFirstResponder];
}
@end

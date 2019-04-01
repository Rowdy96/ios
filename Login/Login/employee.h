//
//  employee.h
//  Login
//
//  Created by Rahul on 3/25/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface employee : NSObject <NSCoding>

@property (nonatomic,strong) NSString *employeeId;
@property (nonatomic,strong) NSString *employeeName;
@property (nonatomic,strong) NSString *employeePosition;
@property (nonatomic,strong) NSString *employeeAddress;

@end

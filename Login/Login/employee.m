//
//  employee.m
//  Login
//
//  Created by Rahul on 3/25/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import "employee.h"

@implementation employee
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self != nil) {
        self.employeeId = [aDecoder decodeObjectForKey:@"empId"];
        self.employeeName = [aDecoder decodeObjectForKey:@"empName"];
        self.employeePosition = [aDecoder decodeObjectForKey:@"empPosition"];
        self.employeeAddress = [aDecoder decodeObjectForKey:@"empAddress"];
        
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)acoder
{
    [acoder encodeObject:[self employeeId] forKey:@"empId"];
    [acoder encodeObject:[self employeeName] forKey:@"empName"];
    [acoder encodeObject:[self employeeAddress] forKey:@"empAddress"];
    [acoder encodeObject:[self employeePosition] forKey:@"empPosition"];
}
@end

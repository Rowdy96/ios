//
//  TableViewCell.h
//  countrylist
//
//  Created by Rahul on 3/21/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *countryImage;
@property (weak, nonatomic) IBOutlet UILabel *countryName;
@property (weak, nonatomic) IBOutlet UILabel *phoneCode;
@property (weak, nonatomic) IBOutlet UILabel *countryCode;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyCode;

@end

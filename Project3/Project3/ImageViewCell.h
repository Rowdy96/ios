//
//  ImageViewCell.h
//  Project3
//
//  Created by Rahul on 3/19/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageViewCell : UICollectionViewCell

@property(weak,nonatomic) IBOutlet UIImageView *imgPic;
@property(weak,nonatomic) IBOutlet UILabel *lblTitle;

@end

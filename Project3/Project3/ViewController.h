//
//  ViewController.h
//  Project3
//
//  Created by Rahul on 3/18/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property (strong , nonatomic ) NSMutableArray *arrimg;
@property (strong,nonatomic) NSMutableArray *arrLabel;

@end


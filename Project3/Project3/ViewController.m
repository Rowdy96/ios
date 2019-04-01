//
//  ViewController.m
//  Project3
//
//  Created by Rahul on 3/18/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
#import "ImageViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _arrimg = [[NSMutableArray alloc]initWithObjects:@"hanuman.jpg",@"image.jpg",@"Unknown.jpg",@"pikachu.jpg",@"unnamed.png",@"image2.jpg",@"image3.jpg",@"spiderman.jpg",@"images.jpg",@"hulk.jpg",nil];
    
    _arrLabel = [[NSMutableArray alloc]initWithObjects:@"Title1",@"Title2",@"Title3",@"Title4",@"Title5",@"Title6",@"Title7",@"Title8", @"Title9",@"Title10",nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    ImageViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ImageViewCell" forIndexPath:indexPath];
    
    cell.lblTitle.text = [_arrLabel objectAtIndex:indexPath.row];
    cell.imgPic.image = [UIImage imageNamed:[_arrimg objectAtIndex:indexPath.row]];
    
    cell.layer.borderColor = [UIColor blackColor].CGColor;
    cell.layer.borderWidth = 1.0;
    
    return cell;
    
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _arrimg.count;
}



@end

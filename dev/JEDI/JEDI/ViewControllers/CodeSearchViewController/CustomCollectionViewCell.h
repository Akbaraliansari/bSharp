//
//  CustomCollectionViewCell.h
//  CollectionwithSearch
//
//  Created by Test on 2/3/15.
//  Copyright (c) 2015 test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCollectionViewCell : UICollectionViewCell
@property(nonatomic,strong)IBOutlet UIImageView *img_cell;
@property(nonatomic,strong)IBOutlet UILabel*lbl_code;
@property(nonatomic,strong)IBOutlet UILabel*lbl_codeDesc;
@property(nonatomic,strong)IBOutlet UILabel*lbl_needle;
@property(nonatomic,strong)IBOutlet UILabel*lbl_needleDesc;
@property(nonatomic,strong)IBOutlet UILabel*lbl_suture;
@property(nonatomic,strong)IBOutlet UILabel*lbl_sutureDesc;
@property(nonatomic,strong)IBOutlet UILabel*lbl_centimeter;
@end

//
//  HomeViewController.h
//  JEDI
//
//  Created by Ramesh Ponnuvel on 13/02/15.
//  Copyright (c) 2015 Smart Commerce Solutions Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface homeViewController : ParentViewController<UITextFieldDelegate>

@property(nonatomic, strong) IBOutlet UIButton *news;
@property(nonatomic, strong) IBOutlet UIButton *products;
@property(nonatomic, strong) IBOutlet UIButton *learning;
@property(nonatomic, strong) IBOutlet UIButton *documents;
@property(nonatomic, strong) IBOutlet UIButton *reports;
@property(nonatomic, strong) IBOutlet UIButton *dashboards;

@property(nonatomic, strong) IBOutlet UITextField *searchCustomer;



@end

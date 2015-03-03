//
//  HomeViewController.m
//  JEDI
//
//  Created by Ramesh Ponnuvel on 13/02/15.
//  Copyright (c) 2015 Smart Commerce Solutions Pvt. Ltd. All rights reserved.
//

#import "HomeViewController.h"
#import "AppDelegate.h"
@interface homeViewController ()

@end

@implementation homeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    
    
    self.searchCustomer.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.searchCustomer.layer.borderWidth = 1.0;
    self.searchCustomer.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0);
    self.searchCustomer.delegate = self;
    self.searchCustomer.tag = 1;
    
    [self.news setImage:[UIImage imageNamed:ICON_NEWS] forState:UIControlStateNormal];
    [self.news setTitle:@"CODE SEARCH" forState:UIControlStateNormal];
    self.news.backgroundColor = VERYLIGHT_GRAY_COLOR;
    [self buttonAlignment:self.news];

    [self.products setImage:[UIImage imageNamed:ICON_PRODUCTS] forState:UIControlStateNormal];
    [self.products setTitle:@"PRODUCTS" forState:UIControlStateNormal];
     self.products.backgroundColor = VERYLIGHT_GRAY_COLOR;
    [self buttonAlignment:self.products];
    
    [self.learning setImage:[UIImage imageNamed:ICON_LEARNING] forState:UIControlStateNormal];
    [self.learning setTitle:@"LEARNING" forState:UIControlStateNormal];
     self.learning.backgroundColor = VERYLIGHT_GRAY_COLOR;
    [self buttonAlignment:self.learning];
    
    [self.documents setImage:[UIImage imageNamed:ICON_DOCUMENTS] forState:UIControlStateNormal];
    [self.documents setTitle:@"DOCUMENTS" forState:UIControlStateNormal];
     self.documents.backgroundColor = VERYLIGHT_GRAY_COLOR;
    [self buttonAlignment:self.documents];
    
    [self.reports setImage:[UIImage imageNamed:ICON_REPORTS] forState:UIControlStateNormal];
    [self.reports setTitle:@"REPORTS" forState:UIControlStateNormal];
     self.reports.backgroundColor = VERYLIGHT_GRAY_COLOR;
    [self buttonAlignment:self.reports];
    
    [self.dashboards setImage:[UIImage imageNamed:ICON_DASHBOARD] forState:UIControlStateNormal];
    [self.dashboards setTitle:@"NEWS" forState:UIControlStateNormal];
     self.dashboards.backgroundColor = VERYLIGHT_GRAY_COLOR;
    [self buttonAlignment:self.dashboards];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(IBAction)codeSearchClicked:(id)sender {
    
    [self performSegueWithIdentifier:@"codeSearchSegue" sender:self];
}


-(void)buttonAlignment:(UIButton *) button {
    
    // the space between the image and text
    
    CGFloat spacing = 15.0;
    // lower the text and push it left so it appears centered
    //  below the image
    CGSize imageSize = button.imageView.image.size;
    button.titleEdgeInsets = UIEdgeInsetsMake(
                                                 0.0, - imageSize.width, - (imageSize.height + spacing), 0.0);
    // raise the image and push it right so it appears centered
    //  above the text
    CGSize titleSize = [button.titleLabel.text sizeWithAttributes:@{NSFontAttributeName: button.titleLabel.font}];
    button.imageEdgeInsets = UIEdgeInsetsMake(
                                                 - (titleSize.height + spacing), 0.0, 0.0, - titleSize.width);
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    

    
    return YES;
}

@end

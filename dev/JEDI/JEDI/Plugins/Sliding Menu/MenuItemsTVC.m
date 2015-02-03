//
//  MenuItemsTVC.m
//  ObjCExample
//
//  Created by Evgeny on 09.01.15.
//  Copyright (c) 2015 Evgeny Nazarov. All rights reserved.
//

#import "MenuItemsTVC.h"
#import "JEDI-Swift.h"

#define TABLE_HEADER_HEIGHT 70

@interface MenuItemsTVC ()

@property(nonatomic,retain) NSArray *header;
@property(nonatomic,retain) NSArray *homeSubTitles;
@property(nonatomic,retain) NSArray *pitchPerfectSubTitles;

@end

@implementation MenuItemsTVC


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.header =  @[@"Home",@"Pitch Perfect"];
        
        self.homeSubTitles = @[
                           @{@"title": @"Announcement", @"icon": ICON_HOME},
                           @{@"title": @"Profile", @"icon": ICON_HOME},
                           
                           ];
        
        self.pitchPerfectSubTitles = @[
                            @{@"title": @"Pending Meetings", @"icon": ICON_HOME},
                            @{@"title": @"Pending Submissions", @"icon": ICON_HOME},
                            @{@"title": @"Customer Search", @"icon": ICON_HOME},
                            @{@"title": @"Code Search", @"icon": ICON_HOME},
                            @{@"title": @"Logout", @"icon": ICON_HOME},
                           
                           ];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setContentInset:UIEdgeInsetsMake(64.f, 0, 0, 0)];
    [self.tableView setBackgroundColor:[UIColor blackColor]];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
 
    
}

#pragma mark - Table view data source

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return TABLE_HEADER_HEIGHT;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return TABLE_HEADER_HEIGHT;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return [self.header count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    if(section == 0)
        return [self.homeSubTitles count];
    if(section == 1)
        return [self.pitchPerfectSubTitles count];
    
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 0)];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, 20,150, 30);
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor blackColor];
    label.font = [UIFont boldSystemFontOfSize:20];
    label.text = [self.header objectAtIndex:section];
    headerView.backgroundColor = [UIColor lightGrayColor];
    [headerView addSubview:label];
    
    return headerView;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
   
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        cell.backgroundColor = [UIColor blackColor];
        
        UIView *selectionView = [[UIView alloc] initWithFrame:cell.bounds];
        selectionView.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:1.0f];
       [cell setSelectedBackgroundView:selectionView];
    }
    
    NSString *title = @"";
    
    if(indexPath.section == 0) {
        NSDictionary* dict = self.homeSubTitles[indexPath.row];
        title = dict[@"title"];

    }
    
    if(indexPath.section == 1) {
        NSDictionary* dict = self.pitchPerfectSubTitles[indexPath.row];
        title = dict[@"title"];
        
    }

    cell.textLabel.text = title;
    cell.textLabel.textColor = [UIColor whiteColor];
    
    return cell;
}

#pragma mark - UITableView Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *destTVC = nil;
    switch (indexPath.row) {
        case 0:
            destTVC = [storyboard instantiateViewControllerWithIdentifier:@"ViewController1"];
            break;
        default:
            destTVC = [storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
            break;
    }
    
    [self.sideMenuController setContentViewController:destTVC];
}

@end

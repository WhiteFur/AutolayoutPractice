//
//  ViewController.h
//  macdev
//
//  Created by Lin Cheng Kai on 14/2/12.
//  Copyright (c) 2014年 Lin Cheng Kai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

- (IBAction)removePressed:(id)sender;
@end

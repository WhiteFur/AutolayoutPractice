//
//  ViewController.m
//  macdev
//
//  Created by Lin Cheng Kai on 14/2/12.
//  Copyright (c) 2014年 Lin Cheng Kai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>
{
    NSArray *_data;
}

@end

@implementation ViewController

#pragma mark -
#pragma mark - table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_data count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.textLabel.text = _data[indexPath.row];
    
    return cell;
}

#pragma mark -
#pragma mark - lifecycle
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder])
    {
        _data = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
    }
    
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)removePressed:(id)sender {
    [_searchBar removeFromSuperview];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[tableView]" options:0 metrics:nil views:@{@"tableView": _tableView}]];
}
@end

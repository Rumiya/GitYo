//
//  ViewController.m
//  GitYo
//
//  Created by Admin on 10/9/15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "RootViewController.h"
#import "Spaceship.h"
#import "DetailViewController.h"

@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSArray *spaceships;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Spaceship *milli = [Spaceship new];
    milli.name = @"Millenium Falcon";
    milli.captain = @"Han Solo AKA Scruffy Lookin Nerf Herder";
    
    Spaceship *enter = [Spaceship new];
    enter.name = @"Enterprise";
    enter.captain = @"Jean Luc Picard";
    
    self.spaceships = [[NSArray alloc] initWithObjects:milli, enter, nil];
    
    }

# pragma mark - TableView Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.spaceships.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    Spaceship *spaceship = [self.spaceships objectAtIndex:indexPath.row];
    cell.textLabel.text = spaceship.name;
    cell.detailTextLabel.text = spaceship.captain;
    
    return cell;
}

@end

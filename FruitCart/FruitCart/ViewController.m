//
//  ViewController.m
//  FruitCart
//
//  Created by David Evans on 1/29/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "ViewController.h"
#import "Veg.h"
#import "Pumpkin.h"
#import "Potato.h"
#import "Onion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _cart = [NSMutableArray arrayWithCapacity:0];
    
        
    Pumpkin * pumpkinObj = [[Pumpkin alloc] init];
    [_cart addObject:pumpkinObj];
    
    Onion * onionObj = [[Onion alloc] init];
    [_cart addObject:onionObj];
    
    Potato * potatoObj = [[Potato alloc] init];
    [_cart addObject:potatoObj];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Veggies";
}

-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_cart count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TableViewCell"];
    }
    
    Veg * tempVeg = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempVeg name];
    cell.detailTextLabel.text = [tempVeg color];
    return cell;
}

@end

//
//  ViewController.m
//  FruitCart
//
//  Created by David Evans on 1/29/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "ViewController.h"
#import "Veg.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    
    
   
    NSString * pumpkinName = [NSString stringWithFormat:@"Pumpkin"];
        
    Veg * panonVeg = [[Veg alloc] initWithWithName:pumpkinName andColor:@"Orange" andShape:@"Circular"];
    [_cart addObject:panonVeg];
    
    
    NSString * onionName = [NSString stringWithFormat:@"Onion"];
    
    Veg * oanonVeg = [[Veg alloc] initWithWithName:onionName andColor:@"White" andShape:@"Round"];
    [_cart addObject:oanonVeg];
    
    NSString * potatoName = [NSString stringWithFormat:@"Potato"];
    
    Veg * poanonVeg = [[Veg alloc] initWithWithName:potatoName andColor:@"Brown" andShape:@"Oblong"];
    [_cart addObject:poanonVeg];
    
    
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

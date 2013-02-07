//
//  Veg.m
//  FruitCart
//
//  Created by austin Krause on 2/6/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "Veg.h"

@implementation Veg

-initWithWithName:(NSString *) inName andColor:(NSString *) inColor andShape:(NSString *) inShape
{
    _name = inName;
    _shape = inShape;
    _color = inColor;
    return self;
}

-(NSString *) description
{
    return _name;
}


@end

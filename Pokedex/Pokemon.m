//
//  Pokemon.m
//  Pokedex
//
//  Created by Winson Yap on 01/06/2017.
//  Copyright © 2017 Winson Yap. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

-(instancetype)initWithName:(NSString *)name detail:(NSString *)detail image:(UIImage *)image element:(NSString *)element{

self = [super init];
if(self) {
    _name = name;
    _detail = detail;
    _image = image;
    _element = element;
}
    return self;
}


@end

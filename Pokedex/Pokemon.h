//
//  Pokemon.h
//  Pokedex
//
//  Created by Winson Yap on 01/06/2017.
//  Copyright © 2017 Winson Yap. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface Pokemon:NSObject
@property (nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *detail;
@property (nonatomic,strong) UIImage *image;
@property(nonatomic,strong)NSString *element;

-(instancetype)initWithName:(NSString*)name detail:
(NSString*)detail image: (UIImage*)image element:(NSString*)element;

@end

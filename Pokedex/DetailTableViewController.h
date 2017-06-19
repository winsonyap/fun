//
//  DetailTableViewController.h
//  Pokedex
//
//  Created by Winson Yap on 31/05/2017.
//  Copyright © 2017 Winson Yap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pokemon.h"
@interface DetailTableViewController : UIViewController
//@property (strong ,nonatomic) NSDictionary *pokemonDictionary;
@property (nonatomic,strong) Pokemon *pokemon;
@end

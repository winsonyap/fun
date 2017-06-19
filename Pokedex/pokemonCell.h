//
//  pokemonCell.h
//  Pokedex
//
//  Created by Winson Yap on 31/05/2017.
//  Copyright © 2017 Winson Yap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface pokemonCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *pokemonImageView;
@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *pokemonDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *pokemonElementLabel;

@end

//
//  DetailTableViewController.m
//  Pokedex
//
//  Created by Winson Yap on 31/05/2017.
//  Copyright © 2017 Winson Yap. All rights reserved.
//

#import "DetailTableViewController.h"

@interface DetailTableViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UILabel *elementLabel;

@end

@implementation DetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.image = self.pokemon.image;
    self.nameLabel.text = self.pokemon.name;
    self.detailLabel.text = self.pokemon.detail;
    self.elementLabel.text = self.pokemon.element;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

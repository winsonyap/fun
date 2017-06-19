//
//  ViewController.m
//  Pokedex
//
//  Created by Winson Yap on 31/05/2017.
//  Copyright © 2017 Winson Yap. All rights reserved.
//

#import "ViewController.h"
#import "pokemonCell.h"
#import "DetailTableViewController.h"
#import "Pokemon.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSArray *pokemons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTableView];
    [self setupDefaultPokemons];
    
    
 }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupTableView{
    //all tableView configuration and setup
    self.tableView.dataSource = self; //set protocol
    self.tableView.delegate = self;
    
    UINib *pokemonCellNib = [UINib nibWithNibName:@"pokemonCell" bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:pokemonCellNib forCellReuseIdentifier:@"pokemonCell"];
    
    [self.tableView setRowHeight:180.0];
    
}

-(void)setupDefaultPokemons{
    
//    NSDictionary *pikachu = @{@"name":@"Pikachu",
//                              @"description":@"mouse like pokemon",
//                              @"element":@"electric",
//                              @"image":[UIImage imageNamed:@"pikachu"]};
//    NSDictionary *onyx = @{@"name":@"Onyx",
//                              @"description":@"a giant rock worm",
//                              @"element":@"rock",
//                              @"image":[UIImage imageNamed:@"onyx"]};
//    NSDictionary *unknown = @{@"name":@"Unknown",
//                              @"description":@"Unknown is a pokeball",
//                              @"element":@"unknown",
//                              @"image":[UIImage imageNamed:@"pokeball"]};
//
    
    Pokemon *pikachu = [[Pokemon alloc] initWithName:@"Pikachu" detail:@"a mouse like Pokemon" image:[UIImage imageNamed:@"pikachu"] element:@"Electric"];
    
    Pokemon *onyx = [[Pokemon alloc] initWithName:@"Onyx" detail:@"a giant rock worm" image:[UIImage imageNamed:@"onyx"] element:@"rock"];

    Pokemon *unknown = [[Pokemon alloc] initWithName:@"Unknown" detail:@"Unknown is a pokeball" image:[UIImage imageNamed:@"pokeball"] element:@"unknown"];

    self.pokemons = @[pikachu,onyx,unknown];
    
}





// implement protocol-UitableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.pokemons.count;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    pokemonCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCell"];
    
//    NSDictionary *pokemon = self.pokemons[indexPath.row];
//    
//        cell.pokemonNameLabel.text = pokemon[@"name"];
//        cell.pokemonDetailLabel.text = pokemon[@"description"];
//        cell.pokemonElementLabel.text = pokemon[@"element"];
//        cell.pokemonImageView.image = pokemon[@"image"];
    
    
    Pokemon *pokemon =self.pokemons[indexPath.row];
    
    cell.pokemonNameLabel.text = pokemon.name;
    cell.pokemonDetailLabel.text = pokemon.detail;
    cell.pokemonElementLabel.text = pokemon.element;
    cell.pokemonImageView.image = pokemon.image;
    
    cell.pokemonImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    
    DetailTableViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([DetailTableViewController class])];
    Pokemon *selectedPokemon =self.pokemons[indexPath.row];
    //controller.pokemonDictionary = selectedPokemon;
    controller .pokemon = selectedPokemon;
    [self.navigationController pushViewController:controller animated:YES];
    
    
    //
//    NSDictionary *selectedPokemon = self.pokemons[indexPath.row];
//    NSString *pokemonName = selectedPokemon[@"name"];
//    
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Select Pokemon" message:[NSString stringWithFormat:@"You Select %@",pokemonName ] preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
//    
//    [alert addAction:okAction];
//    [self presentViewController: alert animated:YES completion:nil];
    
}




@end

//
//  OnePlayerViewController.m
//  Dots And Boxes
//
//  Created by Martin Markov on 10/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "OnePlayerViewController.h"
#import "GameViewController.h"
#import "ComputerEasy.h"

@implementation OnePlayerViewController

-(IBAction)backButtonPressed {
    [self.navigationController popViewControllerAnimated:YES];
}

-(IBAction)startButtonPressed {
    GameViewController *gameController = [[GameViewController alloc] initWithNibName:@"GameViewController" bundle:nil];
    
    gameController.game = [[Game alloc] init];
    
    
    Player *player1 = [[Player alloc] initWithColor:@"blue" Name:@"Player1"];
    ComputerEasy *player2 = [[ComputerEasy alloc] initWithColor:@"red" Name:@"Computer"];    
    player2.game = gameController.game;
    gameController.game.player1 = player1;
    gameController.game.player2 = player2;
    gameController.game.currentPlayer = player1;
    [player1 release];
    [player2 release];
    
    [self.navigationController pushViewController:gameController animated:YES];
    [gameController release];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

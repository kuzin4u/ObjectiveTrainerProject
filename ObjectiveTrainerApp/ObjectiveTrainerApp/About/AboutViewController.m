//
//  AboutViewController.m
//  ObjectiveTrainerApp
//
//  Created by Сергей Кузин on 13.12.2017.
//  Copyright © 2017 Сергей Кузин. All rights reserved.
//

#import "AboutViewController.h"
#import "SWRevealViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

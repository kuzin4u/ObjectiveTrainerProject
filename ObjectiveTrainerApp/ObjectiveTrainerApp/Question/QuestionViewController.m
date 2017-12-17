//
//  QuestionViewController.m
//  ObjectiveTrainerApp
//
//  Created by Сергей Кузин on 13.12.2017.
//  Copyright © 2017 Сергей Кузин. All rights reserved.
//

#import "QuestionViewController.h"
#import "SWRevealViewController.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*  https://www.appcoda.com/ios-programming-sidebar-navigation-menu/(Eng)-(Rus)https://habrahabr.ru/post/255209/ - How To Add a Slide-out Sidebar Menu in Your Apps - Панель бокового меню в свое iOS-приложение
     On Storyboard: through Segue connection between RevealViewController and QuestionViewController  MenuViewController must choosen - "Reveal view controller set controller"   */
     [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
// https://arm1.ru/blog/poleznaya-shtuka-prefix-pch  - Prefix.pch
}

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

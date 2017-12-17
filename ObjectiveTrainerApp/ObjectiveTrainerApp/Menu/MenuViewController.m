//
//  MenuViewController.m
//  ObjectiveTrainerApp
//
//  Created by Сергей Кузин on 13.12.2017.
//  Copyright © 2017 Сергей Кузин. All rights reserved.
//

#import "MenuViewController.h"
#import "SWRevealViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    // Set Self as the  Data Source and Delegate for the TableView
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
   
    // Fetch the Menu Items
    self.menuItems = [[[MenuModel alloc] init] getMenuItems];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Table View Delegate Method
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Retrive Cell
    NSString *cellIdentifier =@"MenuItemCell";
    UITableViewCell *menuCell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    // Get Menu Item that it's asking for
    MenuItem *item = self.menuItems[indexPath.row];
    // Set menu item text and icon
    menuCell.textLabel.text = item.menuTitle;
    return menuCell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MenuItem *item = self.menuItems[indexPath.row];
    
    // Check which item was tapped
    /*   if([item.menuTitle isEqualToString:@"Easy Questions"])
         {
            // Go to Easy Questions
         }
         else if()    */
    switch (item.screenType)
    {
        case ScreenTypeQuestion:
            // Go to Question Screen
            [self performSegueWithIdentifier:@"GoToQuestionSegue" sender:self];
            break;
        case ScreenTypeStats:
            // Go to Stats Screen
            [self performSegueWithIdentifier:@"GoToStatsSegue" sender:self];            break;
        case ScreenTypeAbout:
            // Go to About Screen
[self performSegueWithIdentifier:@"GoToAboutSegue" sender:self];
            break;
        case ScreenTypeRemoveAds:
            // Go to Remove Ads Screen
            [self performSegueWithIdentifier:@"GoToRemoveAdsSegue" sender:self];            break;
    }
    /*
     if (item.screenType == ScreenTypeQuestion)
    {  // Go to Easy Questions}
    else if (item.screenType == ScreenTypeStats)
    {  // Go to Stats}
    else if(item.screenType == ScreenTypeAbout)
    {  // Go to About}
    else if (item.screenType == ScreenTypeRemoveAds)
    {  // Go to RemoveAds}
    */
        
}

#pragma  mark Segue Methods

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   // Set the Front ViewController to be the Destination one
    [self.revealViewController setFrontViewController:segue.destinationViewController];
    // Slide the Front ViewController back into place
    [self.revealViewController revealToggleAnimated:YES];
    
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

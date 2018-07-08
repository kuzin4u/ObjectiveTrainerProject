//
//  MenuItem.h
//  ObjectiveTrainerApp
//
//  Created by Сергей Кузин on 14.12.2017.
//  Copyright © 2017 Сергей Кузин. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (strong, nonatomic) NSString *menuTitle;
@property (strong, nonatomic) NSString *menuIcon;
@property (nonatomic) MenuItemScreenType screenType;

@end

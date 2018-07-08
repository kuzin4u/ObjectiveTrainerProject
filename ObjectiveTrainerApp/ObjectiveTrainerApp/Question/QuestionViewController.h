//
//  QuestionViewController.h
//  ObjectiveTrainerApp
//
//  Created by Сергей Кузин on 13.12.2017.
//  Copyright © 2017 Сергей Кузин. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionModel.h"
#import "Question.h"

@interface QuestionViewController : UIViewController

@property (strong, nonatomic) QuestionModel *model;
@property (strong, nonatomic) NSArray *questions;

// Properties for UI Elements
@property (strong, nonatomic) IBOutlet UILabel *questionText;
@property (strong, nonatomic) IBOutlet UIButton *questionAnswer1;
@property (strong, nonatomic) IBOutlet UIButton *questionAnswer2;

@property (strong, nonatomic) IBOutlet UIButton *questionAnswer3;


@end

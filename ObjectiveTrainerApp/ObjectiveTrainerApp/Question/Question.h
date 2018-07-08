//
//  Question.h
//  ObjectiveTrainerApp
//
//  Created by Сергей Кузин on 20.12.2017.
//  Copyright © 2017 Сергей Кузин. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) QuizQuestionType questionType;
@property (nonatomic) QuizQuestionDifficulty questionDifficulty;

@property (strong, nonatomic) NSString *questionText;

// Properties for Multipal Choice (MC)
@property (strong, nonatomic) NSString *questionAnswer1;
@property (strong, nonatomic) NSString *questionAnswer2;
@property (strong, nonatomic) NSString *questionAnswer3;

// Properties for fill is the blank
@property (strong, nonatomic) NSString *correctAnswerForBlank;

// Properties for find within image
@property (nonatomic) int offset_x;
@property (nonatomic) int offset_y;
@property (strong, nonatomic) NSString *questionImageName;

@end

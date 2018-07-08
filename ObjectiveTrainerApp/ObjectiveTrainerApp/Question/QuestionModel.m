//
//  QuestionModel.m
//  ObjectiveTrainerApp
//
//  Created by Сергей Кузин on 13.12.2017.
//  Copyright © 2017 Сергей Кузин. All rights reserved.
//

#import "QuestionModel.h"
#import "Question.h"

@implementation QuestionModel

- (id)init
{
    
   self = [super init];
   if (self)
   {
       // Initialize stuff is here
       self.easyQuestions = [[NSMutableArray alloc] init];
       self.mediumQuestions = [[NSMutableArray alloc] init];
       self.hardQuestions = [[NSMutableArray alloc] init];
       
   }
    return self;
}

- (NSMutableArray *) getQuestions:(QuizQuestionDifficulty) difficulty
{
    //  Create some Easy Questions
    Question *newQuestion = [[Question alloc] init]; // Наяальная Инициализация
    newQuestion.questionDifficulty = QuestionDifficultyEasy;
    newQuestion.questionType = QuestionTypeMC;
    newQuestion.questionText = @"This is a Test Question";
    newQuestion.questionAnswer1 = @"Answer 1";
    newQuestion.questionAnswer2 = @"Answer 2";
    newQuestion.questionAnswer3 = @"Answer 3";
    [self.easyQuestions addObject:newQuestion];
    
    newQuestion = [[Question alloc] init];   /* Объект newQuestion указывает на длугой адрес по сравнению с Начальной Инициализацией в прежыжцщей группе операторов  */
    newQuestion.questionDifficulty = QuestionDifficultyEasy;
    newQuestion.questionType = QuestionTypeBlank;
    newQuestion.questionText = @"This is a ___________ Question";
    newQuestion.correctAnswerForBlank = @"test";
    [self.easyQuestions addObject:newQuestion];
    
    newQuestion = [[Question alloc] init];   // Объект newQuestion
    newQuestion.questionDifficulty = QuestionDifficultyEasy;
    newQuestion.questionType = QuestionTypeImage;
    newQuestion.questionImageName = @"TestQuestionImage";
    newQuestion.offset_x = 50;
    newQuestion.offset_y = 50;
    [self.easyQuestions addObject:newQuestion];
    
    return self.easyQuestions;
}
    
@end

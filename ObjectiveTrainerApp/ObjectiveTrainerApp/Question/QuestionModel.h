//
/*
 КАК ЗАГРУЗИТЬ ПРИЛОЖЕНИЕ при ПОМОЩИ xCODE
 1. Debbuger Подготавливает и загружает программу на устройство iPhone 6S Plus
 2. На устройстве в "Настройках" надоуствновить:
 "НАСТРОЙКИ-ОСНОВНЫЕ-УПРАВЛЕНИЕ УСТРОЙСТВОМ-sergey.kuzin@list.ru-ДОВЕРЯТЬ sergey.kuzin@list.ru-
 -ДОВЕРЯТЬ Программам от "iPhone Developer sergey.kuzin@list.ru" на этом iPhone-ДОВЕРЯТЬ.
 3. Запуск Приложения
 */
//  QuestionModel.h
//  ObjectiveTrainerApp
//
//  Created by Сергей Кузин on 13.12.2017.
//  Copyright © 2017 Сергей Кузин. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionModel : NSObject
@property (strong, nonatomic) NSMutableArray *easyQuestions;
@property (strong, nonatomic) NSMutableArray *mediumQuestions;
@property (strong, nonatomic) NSMutableArray *hardQuestions;

- (NSMutableArray *) getQuestions:(QuizQuestionDifficulty) difficulty;


@end

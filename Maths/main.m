//
//  main.m
//  Maths
//
//  Created by sd79 on 2017-05-30.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Question.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // QuestionManager *manageQuestions = [[QuestionManager alloc]init];
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        
        NSLog(@"Would you like to play? Type the word 'Yes' to start the game or 'Quit' to stop the game.");
        InputCollector *firstAnswer = [[InputCollector alloc] init];
        
        NSString *finalUserInput = [firstAnswer inputForPrompt:@""];//user input
        BOOL gameOn = YES;
        
        if ([finalUserInput isEqualToString:@"Yes"  ]) {
            gameOn = YES;
        } else {
            gameOn = NO;
        }
        
        while (gameOn) {
            
            
            Question *question = [[Question alloc] init];
            question = [questionFactory generatedRandomQuestion];
            
            InputCollector *yourAnswer = [[InputCollector alloc] init];
            
            
            NSLog(@"%@", question.question); //retrieve random question
            
//            NSLog(@"%@", question.startTime );
            
            
            NSLog(@"Enter your answer");
            
            
            long systemGeneratedAnswer = [question answer];
            
            NSString *finalUserInput = [yourAnswer inputForPrompt:@""];//user input
            
            if ([finalUserInput isEqualToString:@"Quit" ]) {
                gameOn = NO;
                break;
            }
            
            int finalUserInputConvert = [finalUserInput intValue];
            
            if (systemGeneratedAnswer == finalUserInputConvert) {
                
                NSLog(@"You are correct!");
                [scoreKeeper correct];
                [scoreKeeper summary];
                
                
                NSLog(@"\n\n\nTry again!");
            }
            else {
                NSLog(@"You are not correct");
                [scoreKeeper wrong];
                [scoreKeeper summary];
                
                
                NSLog(@"\n\n\n Try another!");
            }
            
            
            [question userResponse];
            [scoreKeeper perecentageCorrect];
            double time = question.answerTime;
            int myTime = (int)time;
            NSLog(@"You have been playing for %d seconds", myTime);
            
        }
        
        
        NSLog(@"Thanks for playing");
        
    }
    
    return 0;
}

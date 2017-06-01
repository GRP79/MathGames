//
//  main.m
//  Maths
//
//  Created by sd79 on 2017-05-30.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSLog(@"Would you like to play? Type the word 'Yes' to start the game or 'Quit' to stop the game");
        InputCollector *firstAnswer = [[InputCollector alloc] init];

        NSString *finalUserInput = [firstAnswer inputForPrompt:@""];//user input
        BOOL gameOn = YES;

        if ([finalUserInput isEqualToString:@"Yes"  ]) {
            gameOn = YES;
        } else {
            gameOn = NO;
        }
        
        
        
        
        while (gameOn) {

        
        AdditionQuestion *yourQuestion = [[AdditionQuestion alloc] init];
            
        InputCollector *yourAnswer = [[InputCollector alloc] init];
        
        
        NSLog(@"%@", yourQuestion.question);
        
       
        NSLog(@"Enter your answer");
        
        long correctAnswers = [yourQuestion answer];
        
        NSString *finalUserInput = [yourAnswer inputForPrompt:@""];//user input
        
            if ([finalUserInput isEqualToString:@"Quit" ]) {
                gameOn = NO;
                break;
            }
            
        int finalUserInputConvert = [finalUserInput intValue];
     
        if (correctAnswers == finalUserInputConvert) {
            
            NSLog(@"You are correct!");
            NSLog(@"\n\n\nTry again!");
        }
        else
            NSLog(@"You are not correct");
        
         NSLog(@"The correct answer is %ld", (long)yourQuestion.answer);
            
            NSLog(@"\n\n\nTry again!");
            
    }
    
        NSLog(@"Thanks for playing");
}

    return 0;
    }

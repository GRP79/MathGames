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
       
        while (YES) {

        
//        InputCollector *inputCollector = [[InputCollector alloc] init];
        AdditionQuestion *yourQuestion = [[AdditionQuestion alloc] init];
        InputCollector *youAnswer = [[InputCollector alloc] init];
        
        
        NSLog(@"%@", yourQuestion.question);
        
       
        NSLog(@"Enter your answer");
        
        int correctAnswers = [yourQuestion answer];
        
        NSString *finalUserInput = [youAnswer inputForPrompt:@""];
        
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
    
        
}
    return 0;
}

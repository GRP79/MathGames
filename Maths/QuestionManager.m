//
//  QuestionManager.m
//  Maths
//
//  Created by sd79 on 2017-06-01.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _questions = [[NSMutableArray alloc] init];
        
    }
    return self;
}


-(NSString *)timeOutput {
    
    NSTimeInterval totalTime = 0.0;
    
    for (int i = 0; i < _questions.count; i++) {
        Question *newQuestion = [_questions objectAtIndex:i];
        totalTime = totalTime + newQuestion.answerTime;
        
    }
    
    NSString *timeIntervalConverted = [NSString stringWithFormat: @"%f", totalTime];
    
    return timeIntervalConverted;
    
    
}

@end

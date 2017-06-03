//
//  AdditionQuestion.m
//  Maths
//
//  Created by sd79 on 2017-05-30.
//  Copyright © 2017 Glen Posey. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Question.h"

@implementation Question : NSObject

- (instancetype) init {
    self = [super init];
    if (self) {
        
        //Generate random numbers
        _rightRandomNumber = (arc4random_uniform(89) + 10);
        _leftRandonmNumber = (arc4random_uniform(89) + 10);
        
        
        _leftValue = _leftRandonmNumber;
        _rightValue = _rightRandomNumber;
        
        
        _startTime = [NSDate date]; //determine the moment a question is started
        
    }
    return self;
    
}

- (NSInteger) userResponse { // overide the answer getter so it grabs the date first and stores the value in _endTime
    _endTime = [NSDate date];
    return  _answer;
}

//determine the difference between start and end time for each question
- (NSTimeInterval) answerTime {
    
    NSTimeInterval answerTime = [_endTime timeIntervalSinceDate:_startTime];
    return answerTime ;
    
}

-(void)generateQuestion;{
    
}


@end


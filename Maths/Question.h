//
//  AdditionQuestion.h
//  Maths
//
//  Created by sd79 on 2017-05-30.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString* question;
@property (nonatomic) NSInteger answer;

@property NSDate* startTime;
@property NSDate* endTime;
@property NSInteger  rightValue;
@property NSInteger  leftValue;
@property NSInteger  rightRandomNumber;
@property NSInteger  leftRandonmNumber;



- (instancetype) init;
- (NSInteger) userResponse;
- (NSTimeInterval) answerTime;

-(void)generateQuestion;

@end

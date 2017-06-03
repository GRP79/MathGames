//
//  QuestionFactory.h
//  Maths
//
//  Created by sd79 on 2017-06-01.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"


@interface QuestionFactory : NSObject


@property (nonatomic) NSArray* questionsubClasNames;



- (instancetype)init;
-(Question *) generatedRandomQuestion;



@end

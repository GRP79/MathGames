//
//  QuestionFactory.m
//  Maths
//
//  Created by sd79 on 2017-06-01.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _questionsubClasNames = @[@"AddQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];

    }
    return self;
}

-(Question *) generatedRandomQuestion{
    
NSString *selectRandomQuestion = [_questionsubClasNames objectAtIndex:arc4random_uniform(3)];
    
    return [[NSClassFromString(selectRandomQuestion) alloc]init];

}

    


@end


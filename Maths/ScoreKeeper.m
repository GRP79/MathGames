//
//  ScoreKeeper.m
//  Maths
//
//  Created by sd79 on 2017-06-02.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void) correct{
    _numberCorrect = _numberCorrect +1;
}

-(void) wrong{
    _numberIncorrect = _numberIncorrect +1;
}

-(void) summary{
    NSLog(@"#correct %ld # incorrect %ld", _numberCorrect, _numberIncorrect);
}

-(void) perecentageCorrect{
    
    _percentCorrect = (_numberCorrect / (_numberCorrect + _numberIncorrect))*100;
    
    NSLog(@"Percentage correct is %ld", (long)_percentCorrect);
}
@end

//
//  AdditionQuestion.m
//  Maths
//
//  Created by sd79 on 2017-05-30.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype) init {
    self = [super init];
    if (self) {
        
        int x = (arc4random_uniform(89) + 10);
        int y = (arc4random_uniform(89) + 10);
        
        int answers = x + y;
        
    _question = [NSString stringWithFormat:@"What is the sum of %d + %d", x, y];
        
       _answer = answers;
        
        
    }
    return self;
}


@end


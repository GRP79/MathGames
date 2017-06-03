//
//  SubtractionQueston.m
//  Maths
//
//  Created by sd79 on 2017-06-01.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import "SubtractionQueston.h"

@implementation SubtractionQueston


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion {
    super.answer = super.rightValue - super.leftValue;
    self.question = [NSString stringWithFormat:@"What is %ld - %ld", (long)super.rightValue, (long)super.leftValue];
    
}

@end

//
//  ScoreKeeper.h
//  Maths
//
//  Created by sd79 on 2017-06-02.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger numberCorrect;
@property (nonatomic) NSInteger numberIncorrect;
@property (nonatomic) NSInteger percentCorrect;


- (instancetype) init;

-(void) correct;
-(void) wrong;
-(void) summary;
-(void) perecentageCorrect;


@end

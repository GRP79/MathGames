//
//  QuestionManager.h
//  Maths
//
//  Created by sd79 on 2017-06-01.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray* questions;

@property (nonatomic) NSString* timeOutput;


- (NSMutableArray *) questions;

-(NSString *) timeOutput;


@end

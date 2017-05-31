//
//  InputCollector.m
//  Maths
//
//  Created by sd79 on 2017-05-31.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString*) inputForPrompt:(NSString *)prompt{
    char inputChars [255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    
    
    NSString *inputString = [NSMutableString stringWithUTF8String:inputChars];
    inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputString;
}


@end

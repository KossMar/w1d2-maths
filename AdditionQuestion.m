//
//  AdditionQuestion.m
//  W1D2-Maths
//
//  Created by Mar Koss on 2017-10-03.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(AdditionQuestion *) init
{
    if (self=[super init])
    {
        float a = arc4random_uniform(101);
        float b = arc4random_uniform(101);
        _b = b;
        _a = a;
        NSLog(@"%f + %f", a, b);
    }
    return self;
}

-(BOOL) checkAnswer: (int) guess
{
    return _a + _b == guess;
}


@end

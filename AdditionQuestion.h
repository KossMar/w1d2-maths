//
//  AdditionQuestion.h
//  W1D2-Maths
//
//  Created by Mar Koss on 2017-10-03.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString *question;
@property NSInteger answer;

@property int a;
@property int b;

-(instancetype) init;
-(BOOL) checkAnswer: (int)guess;


@end



#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        BOOL gameOn = YES;
        
        while (gameOn == YES)
        {
        
            
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            
            char inputChar[256];
            fgets(inputChar, 256, stdin);
            
            NSString *parsedResult = [InputHandler takeInput: inputChar];
            
            
            if ([parsedResult isEqual: @"quit"])
                {
                 gameOn = NO;
                }
            else
            {
            
                int userAnswer = [parsedResult intValue];
                NSLog(@"%d", userAnswer);
                
                BOOL check = [q1 checkAnswer: userAnswer];
                if (check == YES)
                {
                    NSLog(@"RIGHT!");
                }
            
                else
                {
                   NSLog(@"WRONG!");
                }
                
                NSLog(@"%@", [score showScore:check]);

                
            }
        
        
        
        }
        NSLog(@"You quit, loser!");
}
    return 0;
}

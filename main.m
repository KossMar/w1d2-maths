

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        
        AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
        
        char inputChar[256];
        NSLog(@"Solve the addition problem.");
        
        fgets(inputChar, 256, stdin);
        
        NSString *result = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
        
        NSString *parsedResult = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
//        NSLog(@"%@", parsedResult);
        
        int userAnswer = [parsedResult intValue];
        NSLog(@"%d", userAnswer);
        
        BOOL check = [q1 checkAnswer: userAnswer];
        if (check == 1) {
        NSLog(@"CORRECT");
        }
        else {
           NSLog(@"INCORRECT");
        }
        
        
        
        
        
    }
    return 0;
}

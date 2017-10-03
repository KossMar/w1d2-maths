

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        
        char inputChar[256];
        NSLog(@"enter a thing.");
        
        fgets(inputChar, 256, stdin);
        
        NSString *result = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
        
        NSString *parsedResult = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSLog(@"%@", parsedResult);
        
        
        
        
    }
    return 0;
}

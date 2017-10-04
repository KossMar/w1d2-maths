
#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property float rightAnswer;
@property float wrongAnswer;

-(NSString*) showScore:(BOOL)answerCheck;
@end



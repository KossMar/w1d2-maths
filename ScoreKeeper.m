

#import "ScoreKeeper.h"

@implementation ScoreKeeper



-(NSString*) showScore:(BOOL)answerCheck
{
    if (answerCheck == YES)
    {
        _rightAnswer++;
    }
    else
    {
        _wrongAnswer++;
    }
    
    float ratio = (_rightAnswer / (_rightAnswer + _wrongAnswer))*100;

    NSString *currentScore = [NSString stringWithFormat:@"Right:%f Wrong:%f Percentage:%f ", _rightAnswer, _wrongAnswer, ratio];
    return currentScore;
}

@end

//
//  Player.m
//  SnakesAndLadders
//
//  Created by Mike Cameron on 2018-04-14.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "Player.h"



@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gameOver = NO;
        _currentSquare = 0;
        _output = [NSString new];
        _gameLogic = @{
                       @4 : @14,
                       @9 : @31,
                       @17 : @7,
                       @20 : @38,
                       @28 : @84,
                       @40 : @59,
                       @51 : @67,
                       @63 : @81,
                       @64 : @60,
                       @89 : @26,
                       @95 : @75,
                       @99 : @78,
                       
                       };
        
    }
    return self;
}

-(void)roll {
    
    NSInteger rolled = arc4random_uniform(6) + 1;
    NSLog(@"%ld", rolled);
    self.currentSquare = self.currentSquare + rolled;
    if (self.currentSquare >= 100) {
        self.gameOver = YES;
        NSLog(@"Congrats!");
                };
    //NSString *result = [NSString stringWithFormat:@"You landed on square %ld ", self.currentSquare];
    
    //self.output = [self.output stringByAppendingFormat:@"%ld", self.currentSquare];
    //NSLog(@"%@", self.output);
    
    NSNumber *current = [NSNumber numberWithInteger:self.currentSquare];
    if ([self.gameLogic objectForKey:current]) {
        NSNumber *new = [self.gameLogic objectForKey:current];
        NSInteger newCurrent = [new integerValue];
        self.currentSquare = newCurrent;
        NSString *snake = [NSString stringWithFormat:@"You stepped on a snake! You move from %ld to %ld\n", current.integerValue, newCurrent];
        NSString *ladder =[NSString stringWithFormat:@"You stepped on a ladder! You move from %ld to %ld\n", current.integerValue, newCurrent];
        
        if (current.integerValue > newCurrent) {
            //result = [result stringByAppendingString:snake];
            NSLog(@"%@, %@", self.output, snake);
        } else if (current.integerValue < newCurrent) {
            //result = [result stringByAppendingString:ladder];
            NSLog(@"%@, %@", self.output, ladder);
        }
        
    } else {
        NSLog(@"%@", self.output);
    }
    
        }

-(NSString*)output {
    NSString *square = [NSString stringWithFormat:@"You landed on square %ld", self.currentSquare];
    return square;
}

@end

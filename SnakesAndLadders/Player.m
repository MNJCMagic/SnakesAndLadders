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
    self.laddered = NO;
    self.snaked = NO;
    NSInteger rolled = arc4random_uniform(6) + 1;
    NSLog(@"%ld", rolled);
    self.lastSquare = self.currentSquare;
    self.currentSquare = self.currentSquare + rolled;

    
    NSNumber *current = [NSNumber numberWithInteger:self.currentSquare];
    if ([self.gameLogic objectForKey:current]) {
        NSNumber *new = [self.gameLogic objectForKey:current];
        NSInteger newCurrent = [new integerValue];
        self.lastSquare = self.currentSquare;
        self.currentSquare = newCurrent;
        if (self.lastSquare > self.currentSquare) {
            self.snaked = YES;

        } else if (self.lastSquare < self.currentSquare) {

            self.laddered = YES;
        }
        
    }
    
        }

-(NSString*)output {
    if (self.currentSquare >= 100) {
        self.gameOver = YES;
        return @"Congrats!";
    };
    NSString *square = [NSString stringWithFormat:@"You landed on square %ld ", self.currentSquare];

    if (self.snaked == YES) {
        NSString *squareSnake = [NSString stringWithFormat:@"You landed on square %ld - a snake! You move to square %ld", self.lastSquare, self.currentSquare];
        return squareSnake;
    } else if (self.laddered == YES) {
        NSString *squareLadder = [NSString stringWithFormat:@"You landed on square %ld - a ladder! You move to square %ld", self. lastSquare, self.currentSquare];
        return squareLadder;
    }
    return square;
}

@end

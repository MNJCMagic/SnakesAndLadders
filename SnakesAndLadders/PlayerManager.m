//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Mike Cameron on 2018-04-15.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
        _currentIndex = 0;
    }
    return self;
}

-(void)createPlayers:(NSInteger)numberOfPlayers {
    int i;
    for (i = 1; i <= numberOfPlayers; i++) {
        // create new player
        Player *player = [Player new];
        //assign new player iterated name
        player.name = [NSString stringWithFormat:@"player%d", i];
        //add new player to playermanagers array of players
        [self.players addObject:player];
    }
    
}

-(Player*)currentPlayer {
    NSInteger count = [self.players count];
    NSInteger currentI = self.currentIndex;
    NSInteger current = currentI % count;
    return self.players[current];
}

-(void)managerRoll {
    [self.currentPlayer roll];
    self.currentIndex = self.currentIndex + 1;
}

-(NSString *)managerOutput {
    NSString *stringEnd = [self.currentPlayer output];
    return [NSString stringWithFormat:@"%@, %@", self.currentPlayer.name, stringEnd];
}


@end

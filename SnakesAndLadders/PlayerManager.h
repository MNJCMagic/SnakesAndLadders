//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Mike Cameron on 2018-04-15.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic, strong) NSMutableArray* players;
@property (nonatomic, assign) NSInteger currentIndex;
-(Player *)currentPlayer;
-(void)createPlayers:(NSInteger)numberOfPlayers;
-(void)managerRoll;
-(NSString*)managerOutput;



@end

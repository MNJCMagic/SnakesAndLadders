//
//  Player.h
//  SnakesAndLadders
//
//  Created by Mike Cameron on 2018-04-14.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) NSInteger currentSquare;
@property (nonatomic, assign) NSInteger lastSquare;
@property (nonatomic, strong) NSDictionary *gameLogic;
@property (nonatomic) BOOL snaked;
@property (nonatomic) BOOL laddered;
@property (nonatomic, strong) NSString* name;

@property (nonatomic) BOOL gameOver;
-(void)roll;

-(NSString*)output;


@end

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
@property (nonatomic, strong) NSDictionary *gameLogic;
@property (nonatomic, strong) NSString *output;
@property (nonatomic) BOOL gameOver;
-(void)roll;


@end

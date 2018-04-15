//
//  main.m
//  SnakesAndLadders
//
//  Created by Mike Cameron on 2018-04-14.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PlayerManager *playerManager = [PlayerManager new];
        
        while ([playerManager.players count] == 0) {
            char howMany[100];
            NSLog(@"How many players? Please enter a valid numeric value.");
            fgets(howMany, 100, stdin);
            NSString *howManyString = [[NSString alloc] initWithUTF8String:howMany];
            howManyString = [howManyString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([howManyString intValue]) {
            [playerManager createPlayers:[howManyString integerValue]];
        }
             }
        
        
        while (true) {
            NSLog(@"r to roll");
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([inputString isEqualToString:@"r"] || [inputString isEqualToString:@"roll"]) {
                // roll
                [playerManager managerRoll];
                // output result
                NSLog(@"%@", [playerManager managerOutput]);
                //check for game over
//                if ([playerManager gameOver]) {
//                    NSLog(@"You win!");
//                    break;
                }
            }
            
        }
        
    }
//return 0;


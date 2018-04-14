//
//  main.m
//  SnakesAndLadders
//
//  Created by Mike Cameron on 2018-04-14.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Player *currentPlayer = [Player new];
        
        
        while (true) {
            NSLog(@"r to roll");
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([inputString isEqualToString:@"r"] || [inputString isEqualToString:@"roll"]) {
                
                [currentPlayer roll];
                if ([currentPlayer gameOver]) {
                    NSLog(@"You win");
                    break;
                }
            }
            
        }
        
    }
    return 0;
}

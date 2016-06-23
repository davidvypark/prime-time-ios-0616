//
//  FISPrimeGenerator.m
//  PrimeTime
//
//  Created by David Park on 6/23/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISPrimeGenerator.h"

@implementation FISPrimeGenerator

-(NSArray *)primeNumber:(NSInteger)prime {
    NSMutableArray *primeArray = [[NSMutableArray alloc] init];
    
    NSUInteger numberToCheck = 2;
    
    while ([primeArray count] != prime) {
        NSUInteger numberOfFactors = 0;
        
        for (NSUInteger i = 2; i <= numberToCheck; i++) {
            if (numberToCheck % i == 0) {
                numberOfFactors ++;
            }
        }
        if (numberOfFactors == 1) {
            [primeArray addObject:@(numberToCheck)];
            
        }
        
        numberToCheck ++;
    }
    return primeArray;
}


@end

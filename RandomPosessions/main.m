//
//  main.m
//  RandomPosessions
//
//  Created by Jerrad Thramer on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possession.h"
int main (int argc, const char * argv[])
{

    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    
////Adding Items
//    [items addObject:@"One"];
//    [items addObject:@"two"];
//    [items addObject:@"Three"];
//    
//// adding items at index 0
//    [items insertObject:@"Zero" atIndex:0 ];
//    
//    for (int i=0; i < [items count]; i++){
//        NSLog(@"%@", [items objectAtIndex:i]);
//    }
    
    Possession *p = [[Possession alloc] init];
    // set stuff
    [p setPosessionName:@"Red Sofa"];
    [p setSerialNumber:@"42"];
    [p setValueInDollars:9001];
    
    //describe the object
    NSLog(@"%@", p);
    
    NSLog(@"%@ %@ %@ %d",[p posessionName], [p dateCreated], [p serialNumber], [p valueInDollars]);
    
    
    
    //unload

    [items release];
    
    items = nil;
    
    [pool drain];
    return 0;
}


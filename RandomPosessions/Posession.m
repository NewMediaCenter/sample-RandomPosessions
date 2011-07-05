//
//  Posession.m
//  RandomPosessions
//
//  Created by Jerrad Thramer on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Posession.h"

@implementation Posession

- (void)setPosessionName:(NSString *) str
{
    posessionName = str;
}
- (NSString *)posessionName
{
    return posessionName;
}
- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}
- (NSString *)serialNumber
{
    return serialNumber;
}
- (void)setValueInDollars:(int)i 
{
    valueInDollars = i;
}
- (int)valueInDollars
{
    return valueInDollars;
}
- (NSDate *)dateCreated
{
    return dateCreated;
}

- (id)init
{
    
    
}

@end

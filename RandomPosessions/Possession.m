//
//  Posession.m
//  RandomPosessions
//
//  Created by Jerrad Thramer on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Possession.h"

@implementation Possession
- (id)initWithPosessionName:(NSString *)name
             valueInDollars:(int)value
               serialNumber:(NSString *)sNumber
{
    [super init];
    if (self){
    //give the instance var's values
    [self setPosessionName:name];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc] init];
    }
    //ret
    return self;
}
- (id)init
{
    return [self initWithPosessionName:@"Posession"
                        valueInDollars:0
                          serialNumber:@""];
}
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
- (NSString *)description
{
    NSString *descriptionString = 
    [[NSString alloc] initWithFormat: @"%@ (%@): Worth $%d, recorded on %@",
     posessionName,
     serialNumber,
     valueInDollars,
     dateCreated];
    return descriptionString;
}


@end

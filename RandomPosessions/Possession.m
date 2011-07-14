//
//  Posession.m
//  RandomPosessions
//
//  Created by Jerrad Thramer on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Possession.h"

@implementation Possession
- (id)initWithPossessionName:(NSString *)name
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

+ (id)randomPossession
{
    //Creation of the array
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                    @"Shiny",
                                    @"Rusty", nil];
    //creation of an array of nouns
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                               @"Spork",
                               @"Mac", nil];
    //gets index of randoms adj/noun from lists
    int adjectiveIndex = rand() % [randomAdjectiveList count];
    int nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    int randomValue = rand() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    //Once again, ignore the memory problems with this method
    Possession *newPossession =
    [[self alloc] initWithPossessionName:randomName
                         valueInDollars:randomValue
                           serialNumber:randomSerialNumber];
    return newPossession;
    
}
- (id)init
{
    return [self initWithPossessionName:@"Posession"
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

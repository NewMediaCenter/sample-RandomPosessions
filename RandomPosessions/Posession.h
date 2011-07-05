//
//  Posession.h
//  RandomPosessions
//
//  Created by Jerrad Thramer on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Posession : NSObject
{
    NSString *posessionName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
    
}
- (void)setPosessionName:(NSString *)str;
- (NSString *)posessionName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)i;
- (int)valueInDollars;

- (NSDate *)dateCreated;

@end

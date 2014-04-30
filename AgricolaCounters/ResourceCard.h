//
//  ResourceCard.h
//  AgricolaCounters
//
//  Created by Michael Len on 4/29/14.
//  Copyright (c) 2014 Michael Len. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResourceCard : NSObject
typedef enum {
  CardTypeSheep,
  CardTypeWildBoar,
  CardTypeCattle,
  CardTypeRock,
  CardTypeReed,
  CardTypeWood
} CardType;
@property (nonatomic) int incrementBy;
@property (nonatomic) CardType cardType;
@property (nonatomic) int currentCount;
@property (nonatomic) NSString *description;

-(id)initWithCardType:(CardType) cardType incrementBy:(int) incrementBy;

+(NSString *)cardTypeToString:(CardType) cardType;

-(void)incrementCount;
@end

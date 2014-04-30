//
//  ResourceCard.m
//  AgricolaCounters
//
//  Created by Michael Len on 4/29/14.
//  Copyright (c) 2014 Michael Len. All rights reserved.
//

#import "ResourceCard.h"
@interface ResourceCard ()
@end
@implementation ResourceCard
static NSDictionary *_cardTypeToString;

+(NSDictionary*)cardTypeToString
{
  if (!_cardTypeToString)
    _cardTypeToString = @{ @(CardTypeSheep):@"Sheep",
                          @(CardTypeWildBoar):@"Wild Boar",
                          @(CardTypeCattle):@"Cattle",
                          @(CardTypeRock):@"Rock",
                          @(CardTypeReed):@"Reed",
                          @(CardTypeWood):@"Wood"
                          };// [[NSDictionary alloc] initwit;
  return _cardTypeToString;
}

-(id)initWithCardType:(CardType) cardType incrementBy:(int) incrementBy {
  self = [self init];
  self.cardType = cardType;
  self.incrementBy = incrementBy;
  return self;
}

-(void)incrementCount {
  self.currentCount += self.incrementBy;
}
+(NSString *)cardTypeToString:(CardType) cardType {
  return [[ResourceCard cardTypeToString] objectForKey:@(cardType)];
}
@end

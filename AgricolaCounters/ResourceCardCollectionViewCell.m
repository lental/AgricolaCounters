//
//  ResourceCardCollectionViewCell.m
//  AgricolaCounters
//
//  Created by Michael Len on 4/29/14.
//  Copyright (c) 2014 Michael Len. All rights reserved.
//

#import "ResourceCardCollectionViewCell.h"

@interface ResourceCardCollectionViewCell ()
@property (nonatomic) ResourceCard *resourceCard;
@end

@implementation ResourceCardCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  self.backgroundColor = [UIColor redColor];
  self.resourceText.text = @"Hello";
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setResourceCard:(ResourceCard *)resourceCard {
  self.resourceCard = resourceCard;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

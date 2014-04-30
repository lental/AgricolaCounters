//
//  ResourceCardCollectionViewCell.h
//  AgricolaCounters
//
//  Created by Michael Len on 4/29/14.
//  Copyright (c) 2014 Michael Len. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResourceCard.h"

@interface ResourceCardCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIButton *uiButton;
@property (weak, nonatomic) IBOutlet UILabel *resourceText;
@property (weak, nonatomic) IBOutlet UITextField *currentCountText;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *takeAllButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *editButton;

- (void)setResourceCard:(ResourceCard *)resourceCard;
@end

//
//  CardCollectionViewController.h
//  AgricolaCounters
//
//  Created by Michael Len on 4/29/14.
//  Copyright (c) 2014 Michael Len. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardCollectionViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (nonatomic) IBOutlet UICollectionView *collectionView;
-(IBAction)progressGame:(id)sender;
-(IBAction)takeAllFrom:(id)sender;
@end

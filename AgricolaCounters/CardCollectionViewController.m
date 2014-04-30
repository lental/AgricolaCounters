//
//  CardCollectionViewController.m
//  AgricolaCounters
//
//  Created by Michael Len on 4/29/14.
//  Copyright (c) 2014 Michael Len. All rights reserved.
//

#import "CardCollectionViewController.h"
#import "ResourceCardCollectionViewCell.h"
#import "ResourceCard.h"

@interface CardCollectionViewController ()
@property (nonatomic, strong) NSMutableArray *data;
@end

@implementation CardCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.collectionView.dataSource = self;
  self.collectionView.delegate = self;
  self.data = [[NSMutableArray alloc] initWithObjects:[[ResourceCard alloc] initWithCardType:CardTypeSheep incrementBy:1],
               [[ResourceCard alloc] initWithCardType:CardTypeReed incrementBy:2],
               [[ResourceCard alloc] initWithCardType:CardTypeWildBoar incrementBy:3],
               [[ResourceCard alloc] initWithCardType:CardTypeRock incrementBy:4],
               [[ResourceCard alloc] initWithCardType:CardTypeCattle incrementBy:4],
               [[ResourceCard alloc] initWithCardType:CardTypeSheep incrementBy:3],nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration {

  [self.collectionView reloadData];


}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  int row = [indexPath row];
  ResourceCardCollectionViewCell *resourceCardCell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"Resource" forIndexPath:indexPath];
  ResourceCard *resourceCard =self.data[row];


  resourceCardCell.resourceText.text = [NSString stringWithFormat:@"%d %@", resourceCard.incrementBy, [ResourceCard cardTypeToString:resourceCard.cardType] ];
  resourceCardCell.currentCountText.text = [NSString stringWithFormat: @"%d",resourceCard.currentCount];
  resourceCardCell.takeAllButton.tag = row;
  return resourceCardCell;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return self.data.count;
}
- (IBAction)progressGame:(id)sender {

  for (int i = 0; i < self.data.count; i++) {
    ResourceCard *resourceCard =self.data[i];
    [resourceCard incrementCount];
  }
  [self.collectionView reloadData];
}

- (IBAction)takeAllFrom:(id)sender {
  UIButton * pressedButton = sender;
  int row = pressedButton.tag;
  ResourceCard *resourceCard = self.data[row];
  resourceCard.currentCount = 0;
  [self.collectionView reloadData];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
  int numInRow = 2;
  int numInCol = 3;
  return CGSizeMake(self.collectionView.bounds.size.width/numInRow - (5 * numInRow), self.collectionView.bounds.size.height/numInCol - (5 * numInCol));
}

-(BOOL)prefersStatusBarHidden {
  return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

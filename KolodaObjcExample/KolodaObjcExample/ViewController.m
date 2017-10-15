//
//  ViewController.m
//  KolodaObjcExample
//
//  Created by LONG CHENG on 10/15/17.
//  Copyright © 2017 LONG CHENG. All rights reserved.
//

#import "ViewController.h"
@import Koloda;

@interface ViewController () <KolodaViewDataSource, KolodaViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
   [super viewDidLoad];
   // Do any additional setup after loading the view, typically from a nib.
   
   KolodaView* kolodaView = [[KolodaView alloc] initWithFrame:self.view.frame];
   kolodaView.delegate = self;
   kolodaView.dataSource = self;
   
   [self.view addSubview:kolodaView];
}


- (void)didReceiveMemoryWarning {
   [super didReceiveMemoryWarning];
   // Dispose of any resources that can be recreated.
}


- (UIView * _Nonnull)koloda:(KolodaView * _Nonnull)koloda viewForCardAt:(NSInteger)index {
   UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
   view.backgroundColor = UIColor.redColor;
   return view;
}

- (OverlayView * _Nullable)koloda:(KolodaView * _Nonnull)koloda viewForCardOverlayAt:(NSInteger)index {
   return nil;
}

- (NSInteger)kolodaNumberOfCards:(KolodaView * _Nonnull)koloda {
   return 10;
}

- (enum DragSpeed)kolodaSpeedThatCardShouldDrag:(KolodaView * _Nonnull)koloda {
   return DragSpeedDefault;
}

- (NSArray * _Nonnull)koloda:(KolodaView * _Nonnull)koloda allowedDirectionsForIndex:(NSInteger)index {
   return nil;
}

- (void)koloda:(KolodaView * _Nonnull)koloda didSelectCardAt:(NSInteger)index {
}

- (void)koloda:(KolodaView * _Nonnull)koloda didShowCardAt:(NSInteger)index {
}

- (void)koloda:(KolodaView * _Nonnull)koloda didSwipeCardAt:(NSInteger)index in:(enum SwipeResultDirection)direction {
}

- (void)koloda:(KolodaView * _Nonnull)koloda draggedCardWithPercentage:(CGFloat)finishPercentage in:(enum SwipeResultDirection)direction {
}

- (BOOL)koloda:(KolodaView * _Nonnull)koloda shouldDragCardAt:(NSInteger)index {
   return TRUE;
}

- (BOOL)koloda:(KolodaView * _Nonnull)koloda shouldSwipeCardAt:(NSInteger)index in:(enum SwipeResultDirection)direction {
   return TRUE;
}

- (void)kolodaDidResetCard:(KolodaView * _Nonnull)koloda {
}

- (void)kolodaDidRunOutOfCards:(KolodaView * _Nonnull)koloda {
}

- (BOOL)kolodaShouldApplyAppearAnimation:(KolodaView * _Nonnull)koloda {
   return TRUE;
}

- (BOOL)kolodaShouldMoveBackgroundCard:(KolodaView * _Nonnull)koloda {
   return TRUE;
}

- (BOOL)kolodaShouldTransparentizeNextCard:(KolodaView * _Nonnull)koloda {
   return TRUE;
}

- (NSNumber * _Nullable)kolodaSwipeThresholdRatioMargin:(KolodaView * _Nonnull)koloda {
   return nil;
}

@end

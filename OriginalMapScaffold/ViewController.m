//
//  ViewController.m
//  OriginalMapScaffold
//
//  Created by honjo2 on 2013/04/20.
//  Copyright (c) 2013年 honjo2. All rights reserved.
//

#import "ViewController.h"
#import "LocalStandardMap.h"

#define kAPIKey @"APIキー"
#define kZoom 13
#define kCoordinate CLLocationCoordinate2DMake(35.3, 139.3)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  id <MMMap> localStandardMap = [[LocalStandardMap alloc] init];
  MMMapView *mapView = [[MMMapView alloc] initWithFrame:[[self view] bounds] key:kAPIKey map:localStandardMap];
  
  [mapView setZoom:kZoom animated:NO];
  
  CLLocationCoordinate2D coordinate = kCoordinate;
  [mapView setCenterCoordinate:coordinate animated:NO];
  
  [self.view addSubview:mapView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

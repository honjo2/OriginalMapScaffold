//
//  LocalStandardMap.m
//  OriginalMapScaffold
//
//  Created by honjo2 on 2013/04/20.
//  Copyright (c) 2013年 honjo2. All rights reserved.
//

#import "LocalStandardMap.h"

@implementation LocalStandardMap

- (float)minZoom {
  return 6;
}

- (float)maxZoom {
  return 18;
}

- (UIImage *)imageForTile:(MMTile)tile {
  return [UIImage imageNamed:[NSString stringWithFormat:@"%d-%d-%d", tile.zoom, tile.x, tile.y]];
}

- (NSString *)copyright {
  return @"Map data © OpenStreetMap contributors, CC BY-SA";
}

@end

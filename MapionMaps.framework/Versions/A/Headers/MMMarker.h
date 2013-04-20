//
//  MMMarker.h
//  MapionMaps
//
//  Created by honjyo on 2013/04/10.
//  Copyright (c) 2013年 Mapion Co.,Ltd. All rights reserved.
//

#import <MapionMaps/MapionMaps.h>

@interface MMMarker : MMOverlay

- (id)initWithMapView:(MMMapView *)mapView centerCoordinate:(CLLocationCoordinate2D)coordinate;

@end

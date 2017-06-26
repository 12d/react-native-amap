//
//  AMapUrlTile.h
//  RCTAMap
//
//  Created by chen on 2017/6/21.
//  Copyright © 2017年 lvlv.io. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>

#import <React/RCTComponent.h>
#import <React/RCTView.h>

#import "AMapCoordinate.h"
#import "AMap.h"
#import "RCTConvert+AMapKit.h"

@interface AMapUrlTile : MAAnnotationView <MAOverlay>

@property (nonatomic, weak) AMap *map;
@property (nonatomic, strong) MATileOverlay *tileOverlay;
@property (nonatomic, strong) MATileOverlayRenderer *renderer;
@property (nonatomic, copy) NSString *urlTemplate;
#pragma mark MKOverlay protocol
@property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property(nonatomic, readonly) MAMapRect boundingMapRect;
//- (BOOL)intersectsMapRect:(MKMapRect)mapRect;
- (BOOL)canReplaceMapContent;

@end

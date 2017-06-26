//
//  AMapUrlTile.m
//  RCTAMap
//
//  Created by chen on 2017/6/21.
//  Copyright © 2017年 lvlv.io. All rights reserved.
//

#import "AMapUrlTile.h"
#import <React/UIView+React.h>

@implementation AMapUrlTile
{
    BOOL _urlTemplateSet;
}

- (void)setUrlTemplate:(NSString *)urlTemplate{
    _urlTemplate = urlTemplate;
    _urlTemplateSet = YES;
    [self createTileOverlayAndRendererIfPossible];
    [self update];
}

- (void) createTileOverlayAndRendererIfPossible
{
    if (!_urlTemplateSet) return;
    self.tileOverlay = [[MATileOverlay alloc] initWithURLTemplate:self.urlTemplate];
    self.tileOverlay.canReplaceMapContent = YES;
    self.renderer = [[MATileOverlayRenderer alloc] initWithTileOverlay:self.tileOverlay];
}

- (void) update
{
    if (!_renderer) return;
    
    if (_map == nil) return;
    [_map.mapView removeOverlay:self];
    [_map.mapView addOverlay:self];
}

#pragma mark MAOverlay implementation

- (CLLocationCoordinate2D) coordinate
{
    return self.tileOverlay.coordinate;
}

- (MAMapRect) boundingMapRect
{
    return self.tileOverlay.boundingMapRect;
}

- (BOOL)canReplaceMapContent
{
    return self.tileOverlay.canReplaceMapContent;
}

@end

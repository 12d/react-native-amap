//
//  AMapUrlTileManager.m
//  RCTAMap
//
//  Created by chen on 2017/6/21.
//  Copyright © 2017年 lvlv.io. All rights reserved.
//



#import "AMapUrlTileManager.h"
#import <React/RCTBridge.h>
#import <React/RCTConvert.h>
#import <React/RCTConvert+CoreLocation.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTViewManager.h>
#import <React/UIView+React.h>

#import "AMapMarker.h"
#import "AMapUrlTile.h"


@interface AMapUrlTileManager()

@end

@implementation AMapUrlTileManager

RCT_EXPORT_MODULE()

-(UIView *)view

{
    AMapUrlTile * tile = [AMapUrlTile new];
    return tile;
}

RCT_EXPORT_VIEW_PROPERTY(urlTemplate, NSString)
@end

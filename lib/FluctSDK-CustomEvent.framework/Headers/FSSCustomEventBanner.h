//
//  FSSCustomEventBanner.h
//
//  Fluct SDK
//  Copyright 2016 fluct, Inc. All rights reserved.
//

#import "FSSCustomEventBannerView.h"
#import <Foundation/Foundation.h>
@import GoogleMobileAds;

@interface FSSCustomEventBanner
    : NSObject <GADCustomEventBanner, FSSBannerViewDelegate>
@end

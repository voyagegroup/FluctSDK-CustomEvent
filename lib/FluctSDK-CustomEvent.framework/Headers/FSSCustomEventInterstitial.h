//
//  FSSCustomEventInterstitial.h
//
//  Fluct SDK
//  Copyright 2016 fluct, Inc. All rights reserved.
//

#import <FluctSDK/FluctSDK.h>
#import <Foundation/Foundation.h>
@import GoogleMobileAds;

@interface FSSCustomEventInterstitial
    : NSObject <GADCustomEventInterstitial, FSSInterstitialViewDelegate>

@end

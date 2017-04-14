//
//  BannerViewController.swift
//  Sample-Swift
//
//  Created by 清 貴幸 on 2017/04/13.
//  Copyright © 2017年 fluct, inc. All rights reserved.
//

import UIKit
import GoogleMobileAds

class BannerViewController: UIViewController {
    @IBOutlet weak var bannerView: DFPBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = DFPRequest.init()
        bannerView.adUnitID = "" // 任意のバナー用広告ユニットコードを記述して下さい
        bannerView.rootViewController = self
        bannerView.load(request)
    }
}

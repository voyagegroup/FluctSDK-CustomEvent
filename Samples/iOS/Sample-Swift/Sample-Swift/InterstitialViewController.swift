//
//  InterstitialViewController.swift
//  Sample-Swift
//
//  Created by 清 貴幸 on 2017/04/13.
//  Copyright © 2017年 fluct, inc. All rights reserved.
//

import UIKit
import GoogleMobileAds

class InterstitialViewController: UIViewController, GADInterstitialDelegate {
    var interstitialView: DFPInterstitial?
    @IBOutlet weak var showInterstitialButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTouchUpLoadInterstitialButton(_ sender: Any) {
        interstitialView = DFPInterstitial(adUnitID: "") // 任意のインタースティシャル用広告ユニットコードを記述して下さい
        let request = GADRequest()
        interstitialView?.load(request)
        interstitialView?.delegate = self
    }
    
    @IBAction func didTouchUpShowInterstitialButton(_ sender: Any) {
        interstitialView?.present(fromRootViewController: self)
        showInterstitialButton.isEnabled = false
    }
    
    func interstitialDidReceiveAd(_ ad: GADInterstitial) {
        showInterstitialButton.isEnabled = true
    }
}

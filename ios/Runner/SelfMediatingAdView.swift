//
//  SelfMediatingAdView.swift
//  Runner
//
//  Created by Seungsub Oh on 3/22/24.
//

import Foundation
import GoogleMobileAds
import AdFitSDK

class SelfMediatingAdView: UIView, GADBannerViewDelegate, AdFitBannerAdViewDelegate {
    
    static var width: Double = {
        let screen = UIApplication.shared
            .connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .filter({ $0.isKeyWindow })
            .first
        
        return Double(screen?.frame.size.width ?? .zero)
    }()
    
    lazy var admobBannerAd: GADBannerView = {
        let ad = GADBannerView(
            adSize: GADCurrentOrientationAnchoredAdaptiveBannerAdSizeWithWidth(Self.width)
        )
        
        ad.frame = .init(origin: .zero, size: .init(width: Self.width, height: 100))
        ad.adUnitID = "ca-app-pub-3940256099942544/2435281174"
        return ad
    }()
    
    lazy var kakaoBannerAd: AdFitBannerAdView = {
        let ad = AdFitBannerAdView(
            clientId: "",
            adUnitSize: "\(Self.width)x100"
        )
        
        ad.frame = .init(origin: .zero, size: .init(width: Self.width, height: 100))
        return ad
    }()
    
    let admobRequest: GADRequest = {
        let request = GADRequest()
        return request
    }()
    
    let refreshInterval = 30
    
    init() {
        super.init(
            frame: .init(
                origin: .zero,
                size: .init(width: Self.width, height: 100)
            )
        )
        
        admobBannerAd.delegate = self
        kakaoBannerAd.delegate = self
        
        admobBannerAd.load(admobRequest)
        kakaoBannerAd.loadAd()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadAd() {
        
    }
    
    func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
        self.addSubview(bannerView)
    }
    
    func adViewDidReceiveAd(_ bannerAdView: AdFitBannerAdView) {
        self.addSubview(bannerAdView)
    }
}

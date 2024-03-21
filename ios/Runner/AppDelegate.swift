import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      
      self.registrar(forPlugin: "TLAdKitPlugin")?.register(TLAdKitViewFactory(), withId: "TLAdKit-Type")
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

class TLAdKitViewFactory: NSObject, FlutterPlatformViewFactory {
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> any FlutterPlatformView {
        TLAdKitView()
    }
}

class TLAdKitView: NSObject, FlutterPlatformView {
    func view() -> UIView {
        return SelfMediatingAdView()
    }
}

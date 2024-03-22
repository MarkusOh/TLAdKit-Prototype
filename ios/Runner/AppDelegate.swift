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
      
      // Before Flutter launches the main application, we will go ahead and make adviews
      for preloadAreaIndex in ["Area-1", "Area-2", "Area-3", "Area-4", "Area-5", "Area-6", "Area-7", "Area-8"] {
          _ = SelfMediatingAdView.getAdView(for: preloadAreaIndex)
      }
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

class TLAdKitViewFactory: NSObject, FlutterPlatformViewFactory {
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> any FlutterPlatformView {
        guard let areaIndex = args as? String else {
            fatalError("When using AdKit View, please send the area index as creation param")
        }
        
        return TLAdKitView(areaIndex: areaIndex)
    }
    
    func createArgsCodec() -> any FlutterMessageCodec & NSObjectProtocol {
        FlutterStandardMessageCodec.sharedInstance()
    }
}

class TLAdKitView: NSObject, FlutterPlatformView {
    let areaIndex: String
    
    init(areaIndex: String) {
        self.areaIndex = areaIndex
    }
    
    func view() -> UIView {
        return SelfMediatingAdView.getAdView(for: areaIndex)
    }
}

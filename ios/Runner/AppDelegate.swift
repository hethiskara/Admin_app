import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
        let batteryChannel = FlutterMethodChannel(name: "device_information/idfv", binaryMessenger: controller.binaryMessenger)
        batteryChannel.setMethodCallHandler({
          (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
          if call.method == "getIDFV" {
            let idfv = UIDevice.current.identifierForVendor?.uuidString
            result(idfv)
          } else {
            result(FlutterMethodNotImplemented)
          }
        })
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}

//
//  AppDelegate.swift
//  APNsTutorial-iOS
//
//  Created by kimhyungyu on 2021/06/16.
//

import UIKit
import Firebase
//import UserNotifications


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
        UNUserNotificationCenter.current().delegate = self
//        Messaging.messaging().delegate = self

        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter
          .current()
          .requestAuthorization(
            options: authOptions,completionHandler: { (_, _) in }
          )
        UIApplication.shared.registerForRemoteNotifications()
        
        return true
    }
    
    func application(_ application: UIApplication,
                didRegisterForRemoteNotificationsWithDeviceToken
                    deviceToken: Data) {
//       self.sendDeviceTokenToServer(data: deviceToken)
    }

    // Sent to the delegate when APNs cannot successfully complete the registration process.
    func application(_ application: UIApplication,
                didFailToRegisterForRemoteNotificationsWithError
                    error: Error) {
       // Try again later.
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

//extension AppDelegate : MessagingDelegate {
//    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
//        print("파이어베이스 토큰: \(String(describing: fcmToken))")
//    }
//}

extension AppDelegate : UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter,willPresent notification: UNNotification,withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .list, .sound])
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter,
           didReceive response: UNNotificationResponse,
           withCompletionHandler completionHandler:
             @escaping () -> Void) {

       // Get the meeting ID from the original notification.
       let userInfo = response.notification.request.content.userInfo
       let meetingID = userInfo["MEETING_ID"] as! String
       let userID = userInfo["USER_ID"] as! String

       // Perform the task associated with the action.
       switch response.actionIdentifier {
       case "ACCEPT_ACTION":
          print("Accept action - meetingID: \(meetingID), userID: \(userID)")
          break

       case "DECLINE_ACTION":
            print("Decline action - meetingID: \(meetingID), userID: \(userID)")
          break

       // Handle other actions…

       default:
          break
       }

       // Always call the completion handler when done.
       completionHandler()
    }
}

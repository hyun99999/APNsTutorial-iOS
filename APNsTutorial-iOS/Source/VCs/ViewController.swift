//
//  ViewController.swift
//  APNsTutorial-iOS
//
//  Created by kimhyungyu on 2021/06/16.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    let userNotificationCenterr = UNUserNotificationCenter.current()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setCutomAction()
        requestNotificationAuthorization()
        sendNotification(seconds: 10)
    }
    
    func setCutomAction() {
        let acceptAction = UNNotificationAction(identifier: "ACCEPT_ACTION",
              title: "Accept",
              options: UNNotificationActionOptions(rawValue: 0))
        let declineAction = UNNotificationAction(identifier: "DECLINE_ACTION",
              title: "Decline",
              options: UNNotificationActionOptions(rawValue: 0))
        
        let meetingInviteCategory =
              UNNotificationCategory(identifier: "TEST_NOTIFICATION",
              actions: [acceptAction, declineAction],
              intentIdentifiers: [],
              hiddenPreviewsBodyPlaceholder: "",
              options: .customDismissAction)

        // Register the notification type.
        userNotificationCenterr.setNotificationCategories([meetingInviteCategory])
    }

    func requestNotificationAuthorization() {
        let authOptions = UNAuthorizationOptions(arrayLiteral: .alert, .badge, .sound)
        
        userNotificationCenterr.requestAuthorization(options: authOptions) {
            success, error in
            print("success: \(success)")
            if let error = error {
                print("Error: \(error)")
            }
        }
    }

    func sendNotification(seconds: Double) {
        let notificationContent = UNMutableNotificationContent()
        
        notificationContent.title = "알림 테스트 타이틀"
        notificationContent.body = "알림 테스트 바디"
        notificationContent.userInfo = ["MEETING_ID" : "meetingID",
                            "USER_ID" : "userID" ]
        notificationContent.categoryIdentifier = "TEST_NOTIFICATION"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: seconds, repeats: false)
        let request = UNNotificationRequest(identifier: "testNotification", content: notificationContent, trigger: trigger)
        
        userNotificationCenterr.add(request) { error in
            if let error = error {
                print("Notification Error: \(error)")
            }
        }
    }
}


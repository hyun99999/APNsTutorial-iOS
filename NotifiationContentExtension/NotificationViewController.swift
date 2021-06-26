//
//  NotificationViewController.swift
//  NotifiationContentExtension
//
//  Created by kimhyungyu on 2021/06/25.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet var label: UILabel?
    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }
    
    func didReceive(_ notification: UNNotification) {
        
        self.label?.text = notification.request.content.body
        self.testLabel.text = notification.request.content.title
    }

}

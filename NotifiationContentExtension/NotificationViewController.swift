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

    @IBOutlet var titleLabel: UILabel?
    @IBOutlet weak var bodyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }
    
    func didReceive(_ notification: UNNotification) {
        
        self.titleLabel?.text = notification.request.content.title
        self.bodyLabel.text = notification.request.content.body
    }

}

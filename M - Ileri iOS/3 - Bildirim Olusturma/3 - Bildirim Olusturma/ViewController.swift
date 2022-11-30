//
//  ViewController.swift
//  3 - Bildirim Olusturma
//
//  Created by Mahmut Gazi Doğan on 7.11.2022.
//

import UIKit
import UserNotifications


class ViewController: UIViewController {
    
    var bildirimSayisi:Int = 0
    var izinKontrol:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().delegate = self
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge],
                                                                completionHandler: {(granted,error) in
            self.izinKontrol = granted
            
            if granted{
                print("İzin alma işlemi başarılı")
            } else{
                print("İzin alma işlemi başarısız")
            }
            
        })
        
    }
    
    @IBAction func bildirimOlustur(_ sender: Any) {
        if izinKontrol{
            
            let evet = UNNotificationAction(identifier: "evet", title: "Evet", options: .foreground)
            let hayir = UNNotificationAction(identifier: "hayir", title: "Hayır", options: .foreground)
            let sil = UNNotificationAction(identifier: "sil", title: "Sil", options: .destructive)
            
            let kategori = UNNotificationCategory(identifier: "kat", actions: [evet,hayir,sil], intentIdentifiers: [], options: [])
            UNUserNotificationCenter.current().setNotificationCategories([kategori])
            
            bildirimSayisi += 1
            
            let icerik = UNMutableNotificationContent()
            icerik.title = "Başlık"
            icerik.subtitle = "Alt Başlık"
            icerik.body = "5, 4'ten büyük mü?"
            icerik.badge = Int(exactly: bildirimSayisi) as NSNumber?
            icerik.sound = UNNotificationSound.default
            icerik.categoryIdentifier = "kat"
            
            // Tekrarlı bildirim
            /* var date = DateComponents()
            date.minute = 30
            date.hour = 8
            date.day = 20
            date.month = 4  // 4. ayın 20. gününde saat 8:30'da bildirim verir.
            
            let tetikleme = UNCalendarNotificationTrigger(dateMatching: date, repeats: true) */
            
            let tetikleme = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
            
            let bildirimIstegi = UNNotificationRequest(identifier: "Bildirim Olusturma", content: icerik, trigger: tetikleme)
            
            UNUserNotificationCenter.current().add(bildirimIstegi)
            
        }
    }
    
}

extension ViewController:UNUserNotificationCenterDelegate{
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner,.sound,.badge])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        if response.actionIdentifier == "evet" {
            print("Doğru Cevap")
        }
        if response.actionIdentifier == "hayir" {
            print("Yanlış Cevap")
        }
        if response.actionIdentifier == "sil" {
            print("Cevap verilmedi.")
        }
        
        completionHandler()
        
    }
}

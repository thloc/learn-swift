//
//  ViewController.swift
//  learn_swift_KP
//
//  Created by Administrator on 11/23/19.
//  Copyright © 2019 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var imgHinh: UIImageView!
    

    // Actions
    @IBAction func XULY(_ sender: Any) {
        lbl.text = "Demo"
    }
    
    @IBAction func loadHinhLocal(_ sender: Any) {
        imgHinh.image = UIImage(named: "ios.png")
    }
    
    @IBAction func loadHinhInternet(_ sender: Any) {
        // URL
        let url = URL(string: "https://vnn-imgs-f.vgcloud.vn/2019/07/15/13/cach-doi-hinh-nen-tu-dong-moi-ngay-tren-ios-13.jpg")
        // Data
        do{
            let d = try Data(contentsOf: url!)
            imgHinh.image = UIImage(data: d)
        }catch {
            print("data error")
        }
        
        // hien thi
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbl.text = "Hello World"
    }
}

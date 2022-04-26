//
//  ViewController.swift
//  DeeplinkingSender
//
//  Created by Randika Wanninayaka on 2022-04-26.
//

import UIKit
import StoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openReceiver(_ sender: Any) {
        guard let url = URL(string: "ranApp://dfvbjkfvnj.com?username=kvdf&clientid=343") else{
             return
        }
        if(UIApplication.shared.canOpenURL(url)){
            // deeplinking
            UIApplication.shared.open(url, options: [:], completionHandler:nil)
        }else{
            //upcell
            let vc = SKStoreProductViewController()
            vc.loadProduct(withParameters: [SKStoreProductParameterITunesItemIdentifier: NSNumber(586447913)], completionBlock: nil)
                present(vc, animated: true, completion: nil)
        }
    }
    
}


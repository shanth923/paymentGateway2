//
//  ViewController.swift
//  paymentGateway2
//
//  Created by R Shantha Kumar on 1/20/20.
//  Copyright © 2020 R Shantha Kumar. All rights reserved.
//

import UIKit
import Razorpay

class ViewController: UIViewController,RazorpayPaymentCompletionProtocol {
    func onPaymentError(_ code: Int32, description str: String) {
        print("unable to do payment")
    }
    
    func onPaymentSuccess(_ payment_id: String) {
        print("payment success")
    }
    

    
    var razorPay:Razorpay!
    
    
    @IBAction func PAYMENT(_ sender: Any) {
        
        self.showPaymentForm()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        razorPay = Razorpay.initWithKey("rzp_live_IY4KpjQSIMCcXf", andDelegate: self)
        
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
        
       
    }
    
    func showPaymentForm(){
           let options: [String:Any] = [
                       "amount": "100", //This is in currency subunits. 100 = 100 paise= INR 1.
                       "currency": "INR",//We support more that 92 international currencies.
                       "description": "purchase description",
                       "order_id": "order_E2OQ2C0kSxWBgt",
                       "image": "https://lh3.googleusercontent.com/KW6nBuVoJX5ZbKMAJncJzuBcQj1vdEUpS5CiHhizA-R0v1M1puVQXsYW4_pl_2VBDcRzBQ=s85",
                       "name": "business or product name",
                       "prefill": [
                           "contact": "9493215373",
                           "email": "shanth923@gmail.com"
                       ],
                       "theme": [
                           "color": "#F37254"
                       ]
                   ]
           razorPay.open(options)
       }
    
    
    
    

}


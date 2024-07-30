//
//  ViewController.swift
//  harfNotu
//
//  Created by Alperen KARACA on 8.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var vizeTxt: UITextField!
    @IBOutlet weak var finalTxt: UITextField!
    @IBOutlet weak var notLbl: UILabel!
    @IBOutlet weak var ort: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notLbl.text = " "
        ort.text = " "
    }


    @IBAction func hesapla(_ sender: Any) {
        let vize = Int(vizeTxt.text!)!
        let final = Int(finalTxt.text!)!
        
        let not = ((vize * 40) / 100) + ((final * 60) / 100)
        
        var harf : String = "FF"
        
        if (not >= 80 ){
            harf = "AA"
        }
        
        if (not >= 60 && not < 80 ) {
            harf = "BB"
        }
        
        if (not >= 50 && not < 60) {
            harf = "CC"
        }
        
        if (not >= 40 && not < 50){
            harf = "DD"
        }
        
        if( not < 40 ) {
            harf = "FF"
        }
        
        ort.text = "Ortalamanız: \(not)"
        
        notLbl.text = "Harf Notunuz: \(harf)"
    }
}


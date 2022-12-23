//
//  ViewController.swift
//  InputOutput
//
//  Created by Aisultan Zhaksytayev on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {


    
    

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var descriptionText: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var photo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//
//        titleText.delegate = self
//        descriptionText.delegate = self
        submitButtonOutlet.layer.cornerRadius = 18
    }
    @IBOutlet weak var submitButtonOutlet: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func submitButton(_ sender: Any) {
        let titleTextO = titleText.text
        let descTextO = descriptionText.text
//        textView.text = textViewO
//        textView.text = descriptionText.text
        textView.text = "Title: \(titleText.text!)\nDescription: \(descriptionText.text!)"
//        textView.text = "Title: \(titleText.text!)\nDescription: \(descriptionText.text!)"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        titleText.resignFirstResponder()
    }
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}



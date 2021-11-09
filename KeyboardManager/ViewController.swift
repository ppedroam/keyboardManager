//
//  ViewController.swift
//  KeyboardManager
//
//  Created by Pedro Menezes on 20/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldName: UITextField!
    @IBOutlet weak var textfieldLastName: UITextField!
    @IBOutlet weak var textfieldEmail: UITextField!
    @IBOutlet weak var textfieldTelephone: UITextField!
    @IBOutlet weak var textfieldNationality: UITextField!
    @IBOutlet weak var textfieldAge: UITextField!

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    var keyboardManager: KeyboardAppearenceManaging?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        self.keyboardManager = KeyboardAppearenceManager(viewController: self,
                                                         topConstraint: topConstraint)
    }
}

extension ViewController: KeyboardAppearenceDelegate {
    func keyboardWillShow(_ notification: Notification) {
        keyboardManager?.keyboardWillShow(notification)
    }

    func keyboardWillHide(_ notification: Notification) {
        keyboardManager?.keyboardWillHide(notification)
    }
}



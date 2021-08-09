//
//  ViewController.swift
//  cursoIos
//
//  Created by Bruno Ornelas on 04/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Outlet componentes da tela
    @IBOutlet weak var ibCpf: UITextField!
    @IBOutlet weak var ibCelular: UITextField!
    @IBOutlet weak var ibCep: UITextField!
    @IBOutlet weak var ibEmail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)

    }
    
    
    
    
    @IBAction func actionButtonRegister(_ sender: Any) {
        
        shouldColorBorderTexfildIsNull(do: ibCpf)
        
    }
    
    
    
    //MARK: Metodos
    
    func shouldColorBorderTexfildIsNull(do textfiled : UITextField) {
        
        if textfiled.text == "" {
            textfiled.layer.borderColor = UIColor.red.cgColor
            textfiled.layer.borderWidth = 1.0
        }   else {
            textfiled.layer.borderWidth = 1.0
            textfiled.layer.borderColor = UIColor.clear.cgColor
        }
                
    }
    
    
    func isvalidCpf() -> Bool {
        return false
    }
}

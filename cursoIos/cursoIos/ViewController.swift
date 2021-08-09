//
//  ViewController.swift
//  cursoIos
//
//  Created by Bruno Ornelas on 04/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    //componentes da tela
    @IBOutlet weak var ibCpf: UITextField!
    @IBOutlet weak var ibCelular: UITextField!
    @IBOutlet weak var ibCep: UITextField!
    @IBOutlet weak var ibEmail: UITextField!
    @IBOutlet weak var ibNome: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)

    }
    
    
    
    
    @IBAction func actionButtonRegister(_ sender: Any) {
        
        shouldColorBorderTexfildIsNull(do: ibNome, cpfField: ibCpf, celularField: ibCelular, cepField: ibCep, emailField: ibEmail)
        
        
        
        if let nome = ibNome.text, let celular = ibCelular.text, let cep = ibCep.text, let email = ibEmail.text, let cpf = ibCpf.text {
            
            let pessoa = Pessoa(nome: nome, cpf: cpf, celular: celular, cep: cep, email: email)
            
        }
        
    }
    
    
    
    
    
    
    //MARK: Metodos
    
    func shouldColorBorderTexfildIsNull(do nomeField : UITextField, cpfField: UITextField, celularField: UITextField, cepField: UITextField, emailField: UITextField) {
        
        colorTexField(nomeTextField: nomeField)
        colorTexField(nomeTextField: cpfField)
        colorTexField(nomeTextField: celularField)
        colorTexField(nomeTextField: cepField)
        colorTexField(nomeTextField: emailField)
                
    }
    
    
    
    func colorTexField(nomeTextField: UITextField){
        if nomeTextField.hasText == false {
            nomeTextField.layer.borderColor = UIColor.red.cgColor
            nomeTextField.layer.borderWidth = 1.0
        }   else {
            nomeTextField.layer.borderWidth = 1.0
            nomeTextField.layer.borderColor = UIColor.clear.cgColor
        }
    }
    
    
    
    func isvalidCpf() -> Bool {
        return ibCpf.hasText
    }
}

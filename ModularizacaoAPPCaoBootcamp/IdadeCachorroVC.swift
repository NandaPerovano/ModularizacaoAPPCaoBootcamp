//
//  IdadeCachorroVC.swift
//  ModularizacaoAPPCaoBootcamp
//
//  Created by Fernanda Perovano on 19/10/23.
//

import UIKit

class IdadeCachorroVC: UIViewController {
    
    @IBOutlet weak var cachorroImage: UIImageView!
    @IBOutlet weak var perguntaIdadeLabel: UILabel!
    @IBOutlet weak var idadeCachorroTextField: UITextField!
    @IBOutlet weak var resultadoIdadeButton: UIButton!
    @IBOutlet weak var idadeHumanoLabel: UILabel!
    
    var viewModel = IdadeCachorroViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        idadeCachorroTextField.delegate = self
        arredondarImagem()
    }
    
    func arredondarImagem() {
        cachorroImage.layer.cornerRadius = 15
        cachorroImage.clipsToBounds = true
    }
    
    @IBAction func calcularResultadoButton(_ sender: Any) {
        viewModel.calcularIdadeCachorroEmIdadeHumana(idade: idadeCachorroTextField.text)
    }
}

extension IdadeCachorroVC: MultiplicacaoDelegate {
    func exibe(resultadoMultiplicacao: String) {
        idadeHumanoLabel.text = ("\(resultadoMultiplicacao) anos de idade em relação a idade humana")
        idadeCachorroTextField.text = ""
    }
}

extension IdadeCachorroVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}


//
//  IdadeCachorroViewModel.swift
//  ModularizacaoAPPCaoBootcamp
//
//  Created by Fernanda Perovano on 19/10/23.
//

import Foundation
import DogAge

protocol MultiplicacaoDelegate {
    func exibe(resultadoMultiplicacao: String)
}

class IdadeCachorroViewModel {
    
    var delegate: MultiplicacaoDelegate?
    
    func calcularIdadeCachorroEmIdadeHumana(idade: String?) {
        guard let idade = idade else { return }
        if let idadeCachorro = Int(idade) {
            let resultadoIdade = ageCalculate(idadeCachorro)
            let strResultadoIdade = String(resultadoIdade)
            delegate?.exibe(resultadoMultiplicacao: strResultadoIdade)
            return
        }
}
}

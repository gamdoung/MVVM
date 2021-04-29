//
//  MainModel.swift
//  MVVM-Practice
//
//  Created by Gam Doung on 29/4/2564 BE.
//
// ViewModel is MainViewModel

import Foundation

class MainViewModel: MainInterface , MainInteractorOutput {
    var input: MainInteractorInput { return self }
    var output: MainInteractorOutput { return self }
    
//MARK: - Data binding Output
    var showMessageAlert: ((String) -> Void)?
    var didError: (() -> Void)?
    
}

//MARK: - Data binding Input
extension MainViewModel: MainInteractorInput {
    func saveMessageData(message: String?) {
        guard let msg = message,
              !msg.isEmpty,
              msg == ""
        else {
            didError?()
            return
        }
        showMessageAlert?(msg)
    }
}

    

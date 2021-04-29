//
//  MainInteractor.swift
//  MVVM-Practice
//
//  Created by Gam Doung on 29/4/2564 BE.
//
// Interface (Data binding)

import Foundation

//MARK: - Data-binding
protocol MainInteractorInput {
    func saveMessageData(message: String?)
    }
    
protocol MainInteractorOutput: class {
    var showMessageAlert: ((String) -> Void)? { get set }
    var didError: (() -> Void)? { get set }
}

protocol MainInterface: MainInteractorInput, MainInteractorOutput {
    var input: MainInteractorInput { get } // input get data from View
    var output: MainInteractorOutput { get }
}

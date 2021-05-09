//
//  AgeConverterView.swift
//  Caoversor de Idades
//
//  Created by Wilton Garcia on 07/05/21.
//

import UIKit

final class AgeConverterView: UIView{
    
    private let viewBackground : UIView = {
        let viewBackground = UIView()
        viewBackground.backgroundColor = .systemBlue
        viewBackground.translatesAutoresizingMaskIntoConstraints = false
        return viewBackground
    }()
    
    private let textAppName: UILabel = {
       let textAppName = UILabel()
        textAppName.text = "Cãoversor de Idade"
        textAppName.font = textAppName.font.bold
        textAppName.font = textAppName.font.withSize(36)
        textAppName.translatesAutoresizingMaskIntoConstraints = false
        textAppName.backgroundColor = .clear
        return textAppName
    }()
    
    private let textInstruction: UITextView = {
        let textInstruction = UITextView()
        textInstruction.text = "Digite a idade do cachorro"
        textInstruction.translatesAutoresizingMaskIntoConstraints = false
        textInstruction.font = textInstruction.font?.withSize(18)
        textInstruction.backgroundColor = .clear
        return textInstruction
    }()
    
    private let fieldAge: UITextField = {
       let fieldAge = UITextField()
        fieldAge.keyboardType = UIKeyboardType.numberPad
        fieldAge.textColor = UIColor.black
        fieldAge.translatesAutoresizingMaskIntoConstraints = false
        fieldAge.placeholder = "Idade"
        fieldAge.backgroundColor = .white
       return fieldAge
    }()
    
    private let butonCalculate: UIButton = {
       let buttonCalculate = UIButton()
        buttonCalculate.titleLabel?.text = "Cãoverter"
        buttonCalculate.backgroundColor = .black
        buttonCalculate.setTitle("Cãoverter", for: .normal)
        buttonCalculate.addTarget(self, action: #selector(buttonCalculateAction), for: .touchUpInside)
        buttonCalculate.translatesAutoresizingMaskIntoConstraints = false
        return buttonCalculate
    }()
    
    private let textResult: UILabel = {
        let labelResult = UILabel()
        labelResult.text = "A idade em anos humanos é: 0 anos"
        labelResult.translatesAutoresizingMaskIntoConstraints = false
        labelResult.font = labelResult.font.withSize(18)
        labelResult.numberOfLines = 2
       return labelResult
    }()
    
    @objc func buttonCalculateAction(sender: UIButton){
        if let age = Int(fieldAge.text!){
            textResult.text = "A idade em anos humanos é: " + String(AgeConverterController().convertAge(Age: age)) + " anos"
            fieldAge.text  = "";
        }
    }
    
    
    private func setupBackround(){
        addSubview(viewBackground)
        
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            viewBackground.heightAnchor.constraint(equalTo: heightAnchor),
            viewBackground.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            viewBackground.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    private func setupTextAppName(){
        addSubview(textAppName)
        
        NSLayoutConstraint.activate([
            textAppName.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            textAppName.heightAnchor.constraint(equalToConstant: 30),
            textAppName.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            textAppName.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
            
        ])
    }
    
    private func setupTextInstruction(){
        addSubview(textInstruction)
        
        NSLayoutConstraint.activate([
            textInstruction.topAnchor.constraint(equalTo: textAppName.topAnchor, constant: 100),
            textInstruction.heightAnchor.constraint(equalToConstant: 30),
            textInstruction.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            textInstruction.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)

        ])
    }
    
    private func setupFieldAge(){
        addSubview(fieldAge)
        
        NSLayoutConstraint.activate([
            fieldAge.topAnchor.constraint(equalTo: textInstruction.topAnchor, constant: 50),
            fieldAge.heightAnchor.constraint(equalToConstant: 30),
            fieldAge.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            fieldAge.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30)

        ])
    }
    
    private func setupBottonCalculate(){
        addSubview(butonCalculate)
        
        NSLayoutConstraint.activate([
            butonCalculate.topAnchor.constraint(equalTo: fieldAge.topAnchor, constant: 100),
            butonCalculate.heightAnchor.constraint(equalToConstant: 30),
            butonCalculate.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            butonCalculate.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])
    }
    
    private func setResultLabel(){
        addSubview(textResult)
        
        NSLayoutConstraint.activate([
            textResult.topAnchor.constraint(equalTo: butonCalculate.topAnchor, constant: 100),
            textResult.heightAnchor.constraint(equalToConstant: 30),
            textResult.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            textResult.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])
    }
    
    convenience init(){
        self.init(frame:.zero)
        backgroundColor = .orange
        //setupBackround()
        setupTextAppName()
        setupTextInstruction()
        setupFieldAge()
        setupFieldAge()
        setupBottonCalculate()
        setResultLabel()
    }
    
}

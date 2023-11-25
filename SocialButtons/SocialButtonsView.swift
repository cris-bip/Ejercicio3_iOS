//
//  SocialButtonsView.swift
//  SocialButtons
//
//  Created by OITD on 24/11/23.
//

import UIKit

protocol SocialButtonDelegate{
    func button(_ button:UIButton, completion:@escaping () -> Unit)
    func setButtonImage(_ button: UIButton,
                        image: UIImage)
}

extension SocialButtonDelegate{
    func setButtonImage(_ button: UIButton,
                        image: UIImage){
        button.setImage(nil, for: .normal)
        button.titleLabel?.text = "Social button"
    }
}

class SocialButtonsView: UIView {
    
    var button1: UIButton?
    var button2: UIButton?
    var button3: UIButton?
    var button4: UIButton?
    var button5: UIButton?
    
    let margen = 10.0
    let buttonHeight = 44.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        button1 = UIButton(configuration: .filled())
        button1?.setTitle("WWW", for: .normal)
        
        button2 = UIButton(configuration: .filled())
        button2?.setTitle("facebook", for: .normal)
        
        button3 = UIButton(configuration: .filled())
        button3?.setTitle("twitter", for: .normal)
        
        button4 = UIButton(configuration: .filled())
        button4?.setTitle("instagram", for: .normal)
        
        button5 = UIButton(configuration: .filled())
        button5?.setTitle("Youtube", for: .normal)
        
        self.addSubview(button1!)
        self.addSubview(button2!)
        self.addSubview(button3!)
        self.addSubview(button4!)
        self.addSubview(button5!)

        button1!.translatesAutoresizingMaskIntoConstraints = false
        button1!.topAnchor.constraint(equalTo: self.topAnchor, constant: margen).isActive = true
        button1!.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margen).isActive = true
        button1!.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -margen).isActive = true
        button1!.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        button2!.translatesAutoresizingMaskIntoConstraints = false
        button2!.topAnchor.constraint(equalTo: button1!.bottomAnchor, constant: margen).isActive = true
        button2!.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margen).isActive = true
        button2!.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -margen).isActive = true
        button2!.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        button3!.translatesAutoresizingMaskIntoConstraints = false
        button3!.topAnchor.constraint(equalTo: button2!.bottomAnchor, constant: margen).isActive = true
        button3!.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margen).isActive = true
        button3!.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -margen).isActive = true
        button3!.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        button4!.translatesAutoresizingMaskIntoConstraints = false
        button4!.topAnchor.constraint(equalTo: button3!.bottomAnchor, constant: margen).isActive = true
        button4!.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margen).isActive = true
        button4!.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -margen).isActive = true
        button4!.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        button5!.translatesAutoresizingMaskIntoConstraints = false
        button5!.topAnchor.constraint(equalTo: button4!.bottomAnchor, constant: margen).isActive = true
        button5!.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margen).isActive = true
        button5!.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -margen).isActive = true
        button5!.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    

}

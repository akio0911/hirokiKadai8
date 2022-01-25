//
//  GreenViewController.swift
//  hirokiKadai8
//
//  Created by 河村宇記 on 2022/01/24.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet private weak var sliderValue: UISlider!
    @IBOutlet private weak var sliderLabel: UILabel!
    private let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.sliderValue.value = delegate.sliderValue
        self.sliderLabel.text = "\(delegate.sliderValue)"
    }
    
    @IBAction private func changeSlider(_ sender: Any) {
        delegate.sliderValue = self.sliderValue.value
        self.sliderLabel.text = "\(self.sliderValue.value)"
    }
    
}

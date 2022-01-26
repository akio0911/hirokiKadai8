//
//  OrangeViewController.swift
//  hirokiKadai8
//
//  Created by 河村宇記 on 2022/01/24.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet private weak var valueSlider: UISlider!
    @IBOutlet private weak var valueLabel: UILabel!
    private let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        valueSlider.value = delegate.sliderValue
        valueLabel.text = "\(delegate.sliderValue)"
    }
    
    @IBAction private func changeSlider(_ sender: Any) {
        delegate.sliderValue = valueSlider.value
        valueLabel.text = "\(valueSlider.value)"
    }
    
}

//
//  FindViewController.swift
//  FindMyPokemon
//
//  Created by nicwu on 2018/8/4.
//  Copyright © 2018年 nicwu. All rights reserved.
//

import UIKit

class FindViewController: UIViewController {

    @IBOutlet weak var starTextField: UITextField!
    
    @IBOutlet weak var personalitySegmentedControl: UISegmentedControl!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var masterSwitch: UISwitch!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var pokmonImage: UIImageView!
    @IBOutlet weak var pokmonLabel: UILabel!
    @IBOutlet weak var answerNo: UIImageView!
    @IBOutlet weak var iamLabel: UILabel!
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var gotcha: UIImageView!
    @IBOutlet weak var no: UIImageView!
    @IBOutlet weak var back: UIButton!
    
    var  identifier : Int?
    var  pokemon  =  ["胖丁", "波克比", "六尾", "小火龍", "皮卡丘", "傑尼龜", "伊布", "妙蛙種子", "大岩蛇"]
    var waterSigns = ["天蠍", "雙魚", "巨蟹"]
    var fireSigns = ["牡羊", "獅子", "射手"]
    var airSigns = ["水瓶", "雙子", "天秤"]
    var earthSigns = ["金牛", "處女", "摩羯"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let number = identifier {
            pokmonImage.image = UIImage(named: pokemon[number])
            pokmonLabel.text = pokemon[number]
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func ageSelect(_ sender: Any) {
        ageLabel.text = "\(Int(ageSlider.value))"
    }
    
    @IBAction func matchPokmon(_ sender: Any) {
        
        let id = identifier
        switch id {
        case 0, 6:
            if airSigns.contains(starTextField.text!), personalitySegmentedControl.selectedSegmentIndex == 1, ageSlider.value > 18, masterSwitch.isOn {
                Yes()
            }
            else {No()}
        case 2, 3:
            if fireSigns.contains(starTextField.text!), personalitySegmentedControl.selectedSegmentIndex == 1, ageSlider.value > 18, masterSwitch.isOn {
                Yes()
            }
            else {No()}
        case 4, 5, 1:
            if waterSigns.contains(starTextField.text!), personalitySegmentedControl.selectedSegmentIndex == 1, ageSlider.value > 18, masterSwitch.isOn {
                Yes()
            }
            else {No()}
        case 7, 8:
            if earthSigns.contains(starTextField.text!), personalitySegmentedControl.selectedSegmentIndex == 1, ageSlider.value > 18, masterSwitch.isOn {
                Yes()
            }
            else {No()}
        default:
            break
        }
    }
    
    func Yes() {
        pokmonImage.isHidden = false
        pokmonLabel.isHidden = true
        iamLabel.isHidden = true
        bg.isHidden = true
        answerNo.isHidden = true
        answer.isHidden = true
        no.isHidden = true
        gotcha.isHidden = false
        back.isHidden = false
    }
    
    func No() {
        pokmonImage.isHidden = true
        pokmonLabel.isHidden = true
        iamLabel.isHidden = true
        bg.isHidden = true
        answerNo.isHidden = false
        answer.isHidden = true
        no.isHidden = false
        gotcha.isHidden = true
        back.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

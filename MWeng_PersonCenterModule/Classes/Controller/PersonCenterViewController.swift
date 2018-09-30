//
//  PersonCenterViewController.swift
//  Pods
//
//  Created by 李孔文 on 2018/8/30.
//

import UIKit
import UZMeidator

public class PersonCenterViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        PersonCenterBotton()
        

    }



}
//UI设置
extension PersonCenterViewController{
    
    func PersonCenterBotton() {
        
        let bu = UIButton.init(frame: CGRect(x: self.view.center.x-100, y: self.view.center.y-20, width: 200, height: 50))
        bu.backgroundColor = UIColor.red
        bu.addTarget(self, action: #selector(ToPersonCenterVC), for: .touchUpInside)
        self.view.addSubview(bu)
        
    }
}

//方法设置
extension PersonCenterViewController{
    
    @objc func ToPersonCenterVC()  {
        
        let vc =   UZMediatorManager.sharedInstance().uzMediator_HybridVC(withParams: ["测试" : "code01"], withMessage: nil)
        self.navigationController?.pushViewController(vc!, animated: false)
    }
    
}

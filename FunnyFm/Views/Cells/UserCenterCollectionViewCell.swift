//
//  UserCenterCollectionViewCell.swift
//  FunnyFm
//
//  Created by Duke on 2018/12/13.
//  Copyright © 2018 Duke. All rights reserved.
//

import UIKit

class UserCenterCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLB: UILabel!
    @IBOutlet weak var subtitleLB: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.titleLB.textColor = CommonColor.title.color
        self.subtitleLB.textColor = CommonColor.content.color
        self.cornerRadius = 15.0
    }
    
    func configCell(_ dic: [String:String]){
        self.titleLB.text = dic["title"]
        self.subtitleLB.text = dic["subtitle"]
        self.logoImageView.image = UIImage.init(named: dic["imageName"]!)
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        UIView.animate(withDuration: 0.1) {
            self.alpha = 0.5
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        UIView.animate(withDuration: 0.1) {
            self.alpha = 1
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        UIView.animate(withDuration: 0.1) {
            self.alpha = 1
        }
    }

}
//
//  CollCell.swift
//  Bradley
//
//  Created by Samuel Kudadji on 6/12/17.
//  Copyright © 2017 Samuel Kudadji. All rights reserved.
//

import UIKit

class CollCell: UICollectionViewCell {
 
    
    var firstpic = UIImageView()
    
    
    
    var firstlike = UILabel()
    
    
    var flagg = UIImageView()
    
    
    
    
    var thecap = UILabel()
    
    
    var namcountry = UILabel()
    
    
    
    var thecountry = UILabel()
    
    
    var playB = UIView()
    
    var othercover = UIView()
    
    
    
    let gradient: CAGradientLayer = CAGradientLayer()
    
   
    
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)!
        
        
    }
    
    
    
    override func layoutSubviews() {
        
        
        self.backgroundColor = UIColor.white
        
        //UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.0)
        
        
        
        
        
        
        
        
        
        firstpic.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.01, width: self.bounds.width * 0.9, height: self.bounds.height * 0.37)
        
        firstpic.layer.cornerRadius = 2
        
        firstpic.contentMode = .scaleAspectFill
        
        firstpic.clipsToBounds = true
        
        
        
        flagg.frame = CGRect.init(x: self.bounds.width * 0.075, y: self.bounds.height * 0.26, width: self.bounds.width * 0.09, height: self.bounds.width * 0.09)
        
        
        
        flagg.contentMode = .scaleAspectFill
        
        flagg.clipsToBounds = true
        
        
        
        namcountry.frame = CGRect.init(x: self.bounds.width * 0.2, y: self.bounds.height * 0.23, width: self.bounds.width * 0.7, height: self.bounds.height * 0.1)
        
        namcountry.textColor = UIColor.white
        
        namcountry.numberOfLines = 2
        
        namcountry.textAlignment = .left
        
        
        namcountry.font = UIFont.init(name: "AvenirNext-Medium", size: 13)
        
        namcountry.clipsToBounds = true
        
        
        
        
        
        
        firstlike.frame = CGRect.init(x: self.bounds.width * 0.075, y: self.bounds.height * 0.875, width: self.bounds.width * 0.875, height: self.bounds.height * 0.1)
        
        //  firstlike.textColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        
        
        
        
        firstlike.textAlignment = .left
        // firstlike.font = UIFont.init(name: "AvenirNext-Bold", size: 15)
        
        firstlike.clipsToBounds = true
        
        
        
        thecountry.frame = CGRect.init(x: self.bounds.width * 0.1, y: self.bounds.height * 0.05, width: self.bounds.width * 0.8, height: self.bounds.height * 0.3)
        
        thecountry.textColor = UIColor.white
        
        
        thecountry.numberOfLines = 2
        
        thecountry.textAlignment = .center
        
        
        // thecountry.font = UIFont.init(name: "AvenirNext-Heavy", size: 25)
        
        thecountry.clipsToBounds = true
        
        
        
        
        
        
        thecap.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.4, width: self.bounds.width * 0.9, height: self.bounds.height * 0.475)
        
        thecap.textColor = UIColor.black
        
        thecap.numberOfLines = 10
        
        thecap.textAlignment = .left
        
        
        thecap.font = UIFont.init(name: "AvenirNext-Regular", size: 13)
        
        thecap.clipsToBounds = true
        
        
        
        
        
        
        othercover.frame = CGRect.init(x: 0, y: self.bounds.height - 1, width: self.bounds.width , height: 1)
        
        // othercover.layer.cornerRadius = 10
        
        othercover.backgroundColor = UIColor.init(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        
        othercover.clipsToBounds = true
        
        
        
        
        
        //
        
        
        
        self.contentView.addSubview(firstpic)
        
        
        
        self.contentView.addSubview(playB)
        
        
        
        
        self.contentView.addSubview(firstlike)
        
        self.contentView.addSubview(thecountry)
        
        self.contentView.addSubview(thecap)
        
        self.contentView.addSubview(flagg)
        
        self.contentView.addSubview(namcountry)
        
        
        
      //  self.contentView.addSubview(othercover)
        
        
        
        
        
    }
    
    
}

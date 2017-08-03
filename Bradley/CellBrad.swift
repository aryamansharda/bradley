//
//  CellBrad.swift
//  Bradley
//
//  Created by Samuel Kudadji on 6/9/17.
//  Copyright © 2017 Samuel Kudadji. All rights reserved.
//

import UIKit

class CellBrad: UITableViewCell {

    
    var dex = Int()
    
    
    var firstpic = UIImageView()
    
    
    
    var firstlike = UILabel()
    
    
    var flagg = UIImageView()
    
    
    
    
    var thecap = UILabel()
    
    
    var namcountry = UILabel()

    
    
    var thecountry = UILabel()
    
    
    var playB = UIView()
    
    var othercover = UIView()
    
    var newcover = UIView()
    
    var firstcoverMoji = UILabel()
    
    
    var titbel = UILabel()
    
    
    var likebel = UILabel()

    
    
    
    
    
    let gradient: CAGradientLayer = CAGradientLayer()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)!
        
        
    }
    
    
    
    override func layoutSubviews() {
        
        
        self.backgroundColor = UIColor.init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        
        //UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.0)
        
        
        
        firstcoverMoji.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.1, width: self.bounds.width * 0.9, height: self.bounds.height * 0.88)
        
        
        playB.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.1, width: self.bounds.width * 0.9, height: self.bounds.height * 0.88)
        
        
        
        
        
        playB.backgroundColor = UIColor.white
        
        playB.layer.cornerRadius = 5
        
        
        let colorTop = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        //UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        
        
        
        
        let colorBottom = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.0)
        
        
        gradient.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width * 0.9, height: self.bounds.height * 0.65)
        
        gradient.colors = [colorBottom.cgColor, colorTop.cgColor]
        
        gradient.locations = [0.65, 1.65]
        
       
        //
        
      //  self.playB.layer.insertSublayer(gradient, at: 0)
        
        
        // gradient.cornerRadius = 10
        
         playB.clipsToBounds = true
        
        
        
        
        
        
        
        
        firstpic.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width * 0.9, height: self.bounds.height * 0.3)
        
        
        
        firstpic.contentMode = .scaleAspectFill
        
        firstpic.clipsToBounds = true
        
        
        
        flagg.frame = CGRect.init(x: self.bounds.width * 0.025, y: self.bounds.height * 0.73, width: self.bounds.width * 0.1, height: self.bounds.width * 0.1)
        
        flagg.layer.cornerRadius = self.bounds.width * 0.05
        
        flagg.contentMode = .scaleAspectFill
        
        flagg.clipsToBounds = true

        
        
        namcountry.frame = CGRect.init(x: self.bounds.width * 0.15, y: self.bounds.height * 0.72, width: self.bounds.width * 0.475, height: self.bounds.height * 0.06)
        
        namcountry.textColor = UIColor.black
        
       namcountry.numberOfLines = 1
        
        namcountry.textAlignment = .left
        
        
    namcountry.font = UIFont(name: "AvenirNext-Bold", size: 13)
        
        namcountry.clipsToBounds = true

        namcountry.text = "Gregory Achibold"
        
        
        
        
        
        
        
        titbel.frame = CGRect.init(x: self.bounds.width * 0.15, y: self.bounds.height * 0.78, width: self.bounds.width * 0.475, height: self.bounds.height * 0.08)
        
        titbel.textColor = UIColor.lightGray
        
        titbel.numberOfLines = 2
        
        titbel.textAlignment = .left
        
        
        titbel.font = UIFont(name: "AvenirNext-Regular", size: 13)
        

        
        titbel.clipsToBounds = true

        titbel.text = "Marketing Consultant, Ghana"
        
        
        
        
        
        likebel.frame = CGRect.init(x: self.bounds.width * 0.675, y: self.bounds.height * 0.72, width: self.bounds.width * 0.275, height: self.bounds.height * 0.14)
        
        likebel.textColor = UIColor.darkGray
        
      
        
        likebel.textAlignment = .center
        
        
        let formattedStringing = NSMutableAttributedString()
                formattedStringing.boldu(text: "♥︎").normal(text: "  23k")
        
                  likebel.attributedText = formattedStringing
        
      
        
        
//        likebel.font = UIFont(name: "AvenirNext-Regular", size: 20)
        
        
        likebel.clipsToBounds = true
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        firstlike.frame = CGRect.init(x: self.bounds.width * 0.25, y: self.bounds.height * 0.25, width: self.bounds.width * 0.4, height: self.bounds.height * 0.1)
            
            //CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.75, width: self.bounds.width * 0.5, height: self.bounds.height * 0.1)
        
         firstlike.textColor = UIColor.white
        
        firstlike.backgroundColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)

        
       
        firstlike.layer.cornerRadius = 5
        
        //self.bounds.height * 0.05
        
        
        firstlike.textAlignment = .center
        
        
        firstlike.font = UIFont.init(name: "AvenirNext-Medium", size: 15)
        
        firstlike.clipsToBounds = true
        
        
        
        thecountry.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.05, width: self.bounds.width * 0.8, height: self.bounds.height * 0.15)
        
        thecountry.textColor = UIColor.white
        
        
        thecountry.numberOfLines = 2
        
        thecountry.textAlignment = .center
        
        
       // thecountry.font = UIFont.init(name: "AvenirNext-Heavy", size: 25)
        
        thecountry.clipsToBounds = true
        

        
        
        
        
        thecap.frame = CGRect.init(x: self.bounds.width * 0.075, y: self.bounds.height * 0.35, width: self.bounds.width * 0.75, height: self.bounds.height * 0.35)
        
        thecap.textColor = UIColor.black
        
        thecap.numberOfLines = 6
        
        thecap.textAlignment = .left
        
        
        thecap.font = UIFont.init(name: "Avenir-Light", size: 14)
        
        thecap.clipsToBounds = true
        
        
        
        
        
        
        othercover.frame = CGRect.init(x: 0, y: self.bounds.height * 0.7, width: self.bounds.width , height: 1.5)
        
        
        othercover.backgroundColor = UIColor.init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        
        othercover.clipsToBounds = true
        
        
        newcover.frame = CGRect.init(x: self.bounds.width * 0.65, y: self.bounds.height * 0.7, width: 1.5 , height: self.bounds.height * 0.18)
        
        
        newcover.backgroundColor = UIColor.init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        
        newcover.clipsToBounds = true

        
        
        
        
        
        //
        
          self.contentView.addSubview(firstcoverMoji)
        
        self.contentView.addSubview(playB)

        
        
        self.playB.addSubview(firstpic)
        

        
        
       
        
       
         self.playB.addSubview(firstlike)
        
         self.playB.addSubview(thecountry)
        
        self.playB.addSubview(thecap)
        
         self.playB.addSubview(flagg)
        
        self.playB.addSubview(namcountry)
        
        
        self.playB.addSubview(titbel)
        

        
        self.playB.addSubview(likebel)
        


        
        self.playB.addSubview(othercover)
        
        self.playB.addSubview(newcover)
        
        
        guard let cont = firstcoverMoji.layer.sublayers?.count else {
            
            return
        }


        
        if cont < 2  {
            
            shadowother(viewee: self.firstcoverMoji, culo: UIColor.white, colo: UIColor.init(red: 0.85, green: 0.85, blue: 0.85, alpha: 0.6), x: 5)
            
        }
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

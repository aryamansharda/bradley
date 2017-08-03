//
//  DCEll.swift
//  Bradley
//
//  Created by Samuel Kudadji on 6/10/17.
//  Copyright © 2017 Samuel Kudadji. All rights reserved.
//

import UIKit

class DCEll: UITableViewCell {

   
    
    var thepic = UIImageView()
    
    
    var title = UILabel()
    
    
    
    var thewords = UILabel()
    
    var line = UIView()
    
    var othercover = UIView()

   var firstcoverMoji = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)!
        
        
    }
    
    
    
    override func layoutSubviews() {
        
        
        self.backgroundColor =  UIColor.init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        
        //UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.0)
        
        
        
        
        
        
        
        title.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.06, width: self.bounds.width * 0.6, height: self.bounds.height * 0.92)
        
        title.textColor = UIColor.white
        
      //  title.backgroundColor = UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.0)
        
        title.numberOfLines = 2
        
        title.textAlignment = .left
        
        
        title.font = UIFont.init(name: "AvenirNext-Regular", size: 16)
        
        title.clipsToBounds = true
        
      
        
        
        
        
        
        thewords.frame = CGRect.init(x: self.bounds.width * 0.6, y: self.bounds.height * 0.5, width: self.bounds.width * 0.3, height: self.bounds.height * 0.35)
        
        thewords.textColor = UIColor.white
        
        thewords.numberOfLines = 2
        
        thewords.textAlignment = .left
        
//        let formattedStringing = NSMutableAttributedString()
//        formattedStringing.spacio(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
//        
//        thewords.attributedText = formattedStringing
        
        thewords.text = "endorsed by Jeremy Bluckshort"
       
        
        
        thewords.font = UIFont.init(name: "AvenirNext-Regular", size: 14)
        
        thewords.clipsToBounds = true
        
        
        
        thepic.frame = CGRect.init(x: self.bounds.width * 0.69, y: self.bounds.height * 0.15, width: self.bounds.width * 0.12, height: self.bounds.width * 0.12)
        
        thepic.layer.cornerRadius = self.bounds.width * 0.06
        
        
        
        thepic.contentMode = .scaleAspectFill
        
        thepic.clipsToBounds = true
        
        
        firstcoverMoji.frame = CGRect.init(x: self.bounds.width * 0.05 , y: self.bounds.height * 0.04, width: self.bounds.width * 0.9 , height: self.bounds.height * 0.8 )

         line.frame = CGRect.init(x: self.bounds.width * 0.05 , y: self.bounds.height * 0.04, width: self.bounds.width * 0.9 , height: self.bounds.height * 0.8 )
        
        
        line.backgroundColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        line.layer.cornerRadius = 5
        
        
        line.clipsToBounds = true
        
        
        othercover.frame = CGRect.init(x: self.bounds.width * 0.6, y: self.bounds.height * 0.03, width: 1.5 , height: self.bounds.height * 0.74 )
            
        
        
        othercover.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.9)
            
        
        
        
        othercover.clipsToBounds = true
        
        
        
        
        
        //
        
        
        
    
         self.contentView.addSubview(firstcoverMoji)
        
        self.contentView.addSubview(line)

        
        self.line.addSubview(title)
        
        self.line.addSubview(thewords)
        
            self.line.addSubview(othercover)
        
         self.line.addSubview(thepic)
        
        
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

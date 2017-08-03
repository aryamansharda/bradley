//
//  ExtraBradleys.swift
//  Bradley
//
//  Created by Samuel Kudadji on 6/9/17.
//  Copyright © 2017 Samuel Kudadji. All rights reserved.
//

import Foundation

import UIKit

import AVKit

import ImageIO

import MobileCoreServices

import AVFoundation


class TextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10);
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
}


func shadowother(viewee : UIView, culo : UIColor, colo : UIColor, x : CGFloat) {
    
    var shadowLayer0: CAShapeLayer!
    
    shadowLayer0 = CAShapeLayer()
    shadowLayer0.path = UIBezierPath(roundedRect: viewee.bounds, cornerRadius: x).cgPath
    shadowLayer0.fillColor = culo.cgColor
    
    
    
    shadowLayer0.shadowColor = colo.cgColor
    shadowLayer0.shadowPath = shadowLayer0.path
    shadowLayer0.shadowOffset = CGSize.init(width: 0, height: 1)
    shadowLayer0.shadowOpacity = 0.9
    shadowLayer0.shadowRadius = 3.5
    
    // shadowLayer0.cornerRadius = viewee.bounds.height * 0.5
    
    
    viewee.layer.insertSublayer(shadowLayer0, at: 0)
    
    
    
    
    
    
}


class Labelum: UIView {
    
    var title = UILabel()
    
    
    
    
    
    
    
    override func layoutSubviews() {
        
        
        
        
        
        self.addSubview(title)
        
    }
    
}


class Cells: UIView {
    
    var title = UILabel()
    
    var location = UILabel()
    
    var amount = Labelum()
    
    var pay = Labelum()
    
    var time = UILabel()
    
    
    
    override func layoutSubviews() {
        
        // shadowcell(viewee: self, culo: UIColor.white, colo: UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0), x: 0.0, y: 0.0)
        
        
        time.frame = CGRect.init(x: self.bounds.width * 0.5, y: 0, width: self.bounds.width * 0.475, height: self.bounds.height * 0.15)
        
        time.textColor = UIColor.init(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        
        
        time.textAlignment = .right
        time.font = UIFont.init(name: "AvenirNext-Medium", size: 12)
        
        time.clipsToBounds = true
        
        
        title.frame = CGRect.init(x: self.bounds.width * 0.025, y: self.bounds.height * 0.35, width: self.bounds.width * 0.95, height: self.bounds.height * 0.15)
        
        title.textColor = UIColor.darkGray
        
        title.numberOfLines = 2
        
        title.textAlignment = .center
        title.font = UIFont.init(name: "AvenirNext-Bold", size: 15)
        
        title.clipsToBounds = true
        
        
        location.frame = CGRect.init(x: self.bounds.width * 0.025, y: self.bounds.height * 0.55, width: self.bounds.width * 0.95, height: self.bounds.height * 0.15)
        
        location.textColor = UIColor.lightGray
        
        
        
        location.textAlignment = .center
        location.font = UIFont.init(name: "AvenirNext-Bold", size: 12)
        
        location.clipsToBounds = true
        
        amount.frame = CGRect.init(x: self.bounds.width * 0.3, y: 0, width: self.bounds.width * 0.4, height: self.bounds.height * 0.4)
        
        amount.title.frame = amount.bounds
        
        amount.title.textColor = UIColor.init(red: 234/255, green: 151/255, blue: 28/255, alpha: 1.0)
        
        
        
        
        
        amount.title.textAlignment = .center
        amount.title.font = UIFont.init(name: "AvenirNext-Bold", size: 30)
        
        
        // shadowpic(viewee: self.amount, culo: UIColor.init(red: 252/255, green: 203/255, blue: 29/255, alpha: 1.0), colo: UIColor.init(red: 234/255, green: 151/255, blue: 28/255, alpha: 1.0), x: 3.0, y: 0.0)
        
        
        pay.frame = CGRect.init(x: 0, y: self.bounds.height * 0.8, width: self.bounds.width , height: self.bounds.height * 0.2)
        
        pay.backgroundColor = UIColor.init(red: 40/255, green: 220/255, blue: 175/255, alpha: 1.0)
        
        //UIColor.init(red: 234/255, green: 151/255, blue: 28/255, alpha: 1.0)
        
        
        //UIColor.init(red: 197/255, green: 59/255, blue: 62/255, alpha: 1.0)
        
        pay.title.frame = pay.bounds
        
        pay.title.textColor = UIColor.white
        
        pay.title.text = "pay for this lunch"
        
        pay.title.textAlignment = .center
        pay.title.font = UIFont.init(name: "AvenirNext-Bold", size: 25)
        
        
        // shadowpic(viewee: self.pay, culo: UIColor.init(red: 252/255, green: 203/255, blue: 29/255, alpha: 1.0), colo: UIColor.init(red: 234/255, green: 151/255, blue: 28/255, alpha: 1.0), x: -3.0, y: 0.0)
        
        
        
        
        // shadowpic(viewee: self.pay, culo: UIColor.init(red: 197/255, green: 59/255, blue: 62/255, alpha: 1.0), colo: UIColor.init(red: 255/255, green: 116/255, blue: 105/255, alpha: 1.0), x: 3.0, y: 0.0)
        
        
        
        
        self.addSubview(title)
        
        self.addSubview(location)
        
        self.addSubview(amount)
        
        self.addSubview(pay)
        
        self.addSubview(time)
        
        self.layer.cornerRadius = 7
        
        self.clipsToBounds = true
        
    }
    
}


func shadowcell(viewee : UIView, culo : UIColor, colo : UIColor, x : CGFloat, y: CGFloat) {
    
    var shadowLayer0: CAShapeLayer!
    
    shadowLayer0 = CAShapeLayer()
    shadowLayer0.path = UIBezierPath(roundedRect: viewee.bounds, cornerRadius: 7).cgPath
    shadowLayer0.fillColor = culo.cgColor
    
    
    
    shadowLayer0.shadowColor = colo.cgColor
    shadowLayer0.shadowPath = shadowLayer0.path
    shadowLayer0.shadowOffset = CGSize.init(width: x, height: y)
    shadowLayer0.shadowOpacity = 0.9
    shadowLayer0.shadowRadius = 2
    
    // shadowLayer0.cornerRadius = viewee.bounds.height * 0.5
    
    
    viewee.layer.insertSublayer(shadowLayer0, at: 0)
    
    
    
    
    
}


func shadowpic(viewee : UIView, culo : UIColor, colo : UIColor, x : CGFloat, y: CGFloat) {
    
    var shadowLayer0: CAShapeLayer!
    
    shadowLayer0 = CAShapeLayer()
    shadowLayer0.path = UIBezierPath(roundedRect: viewee.bounds, cornerRadius: 7).cgPath
    shadowLayer0.fillColor = culo.cgColor
    
    
    
    shadowLayer0.shadowColor = colo.cgColor
    shadowLayer0.shadowPath = shadowLayer0.path
    shadowLayer0.shadowOffset = CGSize.init(width: x, height: y)
    shadowLayer0.shadowOpacity = 0.9
    shadowLayer0.shadowRadius = 0
    
    // shadowLayer0.cornerRadius = viewee.bounds.height * 0.5
    
    
    viewee.layer.insertSublayer(shadowLayer0, at: 0)
    
    
    
    
    
}

func shadowfeature(viewee : UIView, culo : UIColor, colo : UIColor, x : CGFloat, y: CGFloat) {
    
    var shadowLayer0: CAShapeLayer!
    
    shadowLayer0 = CAShapeLayer()
    shadowLayer0.path = UIBezierPath(roundedRect: viewee.bounds, cornerRadius: 7).cgPath
    shadowLayer0.fillColor = culo.cgColor
    
    
    
    shadowLayer0.shadowColor = colo.cgColor
    shadowLayer0.shadowPath = shadowLayer0.path
    shadowLayer0.shadowOffset = CGSize.init(width: x, height: y)
    shadowLayer0.shadowOpacity = 0.9
    shadowLayer0.shadowRadius = 4
    
    shadowLayer0.borderColor = UIColor.lightGray.cgColor
    
    shadowLayer0.borderWidth = 0.5
    
    viewee.layer.insertSublayer(shadowLayer0, at: 0)
    
    
    
    
    
}

class leyer: UIView {
    
    
    
    
    var vacations = UILabel()
    
    var moving = UILabel()
    
   
    
    var themove = UIView()
    
    var othercover = UIView()
    
    
    override func layoutSubviews() {
        
        self.backgroundColor = UIColor.clear
        
        
        vacations.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width * 0.5 , height: self.bounds.height )
        
        
        vacations.textColor = UIColor.white
        
        
        vacations.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        vacations.textAlignment = .center
        vacations.text = "vacationing"
        
        
        moving.frame = CGRect.init(x: self.bounds.width * 0.5, y: 0, width: self.bounds.width * 0.5 , height: self.bounds.height )
        
        
        moving.textColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.6)
        
        
        moving.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        moving.textAlignment = .center
        
        moving.text = "moving"
        
        
        
        
        
        
        themove.frame = CGRect.init(x: self.bounds.width * 0.08 , y: self.bounds.height * 0.81, width: self.bounds.width * 0.34 , height: self.bounds.height * 0.05 )
        
        themove.layer.cornerRadius = self.bounds.height * 0.025
        
        
        themove.backgroundColor = UIColor.white
        themove.clipsToBounds = true
        
        
        vacations.isUserInteractionEnabled = true
        
        moving.isUserInteractionEnabled = true
        
        
        
        vacations.tag = 1
        
        moving.tag = 2
        
        
        othercover.frame = CGRect.init(x: 0, y: self.bounds.height - 0.5, width: self.bounds.width , height: 0.5)
        
        // othercover.layer.cornerRadius = 10
        
        othercover.backgroundColor = UIColor.lightGray
        
        othercover.clipsToBounds = true
        
        
        
        
       
        
        self.addSubview(self.moving)
        
        self.addSubview(self.vacations)
        
        self.addSubview(self.themove)
        
       // self.addSubview(self.othercover)
        
    }
    
}








class loyal: UIView {
    
    
    
    
    var posts = UILabel()
    
    var subs = UILabel()
    
    
    
    var themove = UIView()
    
    var othercover = UIView()
    
    
    override func layoutSubviews() {
        
        self.backgroundColor = UIColor.clear
        
        
        posts.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width * 0.5 , height: self.bounds.height )
        
        
        posts.textColor = UIColor.white
        
        
        posts.font = UIFont(name: "AvenirNext-Bold", size: 15)
        
        posts.textAlignment = .center
        posts.text = "posts"
        
        
        subs.frame = CGRect.init(x: self.bounds.width * 0.5, y: 0, width: self.bounds.width * 0.5 , height: self.bounds.height )
        
        
        subs.textColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.6)
        
        
        subs.font = UIFont(name: "AvenirNext-Bold", size: 15)
        
        subs.textAlignment = .center
        
        subs.text = "subscriptions"
        
        
        
        
        
        
        themove.frame = CGRect.init(x: self.bounds.width * 0.08 , y: self.bounds.height * 0.2, width: self.bounds.width * 0.34 , height: self.bounds.height * 0.6 )
        
        themove.layer.cornerRadius = 5
        
        
        themove.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.4)
        
        themove.clipsToBounds = true
        
        
        posts.isUserInteractionEnabled = true
        
        subs.isUserInteractionEnabled = true
        
        
        
        posts.tag = 1
        
        subs.tag = 2
        
        
        othercover.frame = CGRect.init(x: 0, y: self.bounds.height - 0.5, width: self.bounds.width , height: 0.5)
        
        // othercover.layer.cornerRadius = 10
        
        othercover.backgroundColor = UIColor.lightGray
        
        othercover.clipsToBounds = true
        
        
        
        
         self.addSubview(self.themove)
        
        self.addSubview(self.subs)
        
        self.addSubview(self.posts)
        
       
        
        // self.addSubview(self.othercover)
        
    }
    
}



class theplus: UIView {
    
    
    
    
    var top = UILabel()
    
    var bottom = UILabel()
    
    
    
    
    
    
    override func layoutSubviews() {
        
        self.backgroundColor = UIColor.white
        
        
        top.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width , height: self.bounds.height * 0.75 )
        
        
        top.textColor = UIColor.black
        
        top.numberOfLines = 2
        
        top.font = UIFont.init(name: "AvenirNext-Regular", size: 14)
        
        top.textAlignment = .left
        
        top.text = "Five bottles of cough syrup and a pack of malaria prophylaxis"
        
        
        bottom.frame = CGRect.init(x: 8, y: self.bounds.height * 0.75, width: self.bounds.width - 16 , height: self.bounds.height * 0.25 )
        
        
        bottom.textColor = UIColor.lightGray
        
        
        
        bottom.font = UIFont.init(name: "AvenirNext-Regular", size: 13)
        
        bottom.textAlignment = .left
        
        bottom.text = "Add a short explanation why this is important"

        
    }
    
}


class adding: UIView {
    
    
    
    
    var vaca = UILabel()
    
    var movi = UILabel()
    
    
    
    var themove = UIView()
    
    var othercover = UIView()
    
    var firstSwitch = UISwitch()
    
    var secondSwitch = UISwitch()
    
    
    override func layoutSubviews() {
        
        self.backgroundColor = UIColor.clear
            
            //UIColor.init(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.0)
        
        firstSwitch.frame.origin.x = self.bounds.width * 0.05
        
        secondSwitch.frame.origin.x = self.bounds.width * 0.05
        
        
        firstSwitch.frame.origin.y = self.bounds.height * 0.1
        
        secondSwitch.frame.origin.y = self.bounds.height * 0.6
        
        firstSwitch.onTintColor = UIColor(red: 16.0/255.0, green: 197.0/255.0, blue: 197.0/255.0, alpha: 1.0)
        
        
        secondSwitch.onTintColor = UIColor(red: 16.0/255.0, green: 197.0/255.0, blue: 197.0/255.0, alpha: 1.0)
        
        
        firstSwitch.isOn = true
        
        secondSwitch.isOn = false

        
        
        
        vaca.frame = CGRect.init(x: self.bounds.width * 0.25, y: self.bounds.height * 0.15, width: self.bounds.width * 0.525 , height: self.bounds.height * 0.3 )
        
        
        vaca.textColor = UIColor.darkGray
        
       // vaca.backgroundColor = UIColor.white
            
            //UIColor(red: 16.0/255.0, green: 197.0/255.0, blue: 197.0/255.0, alpha: 1.0)
        
        
        vaca.font = UIFont(name: "AvenirNext-Bold", size: 15)

        
        vaca.textAlignment = .left
        vaca.text = "VACATIONING"
        
       // vaca.layer.cornerRadius = self.bounds.height * 0.4
        
        
        vaca.clipsToBounds = true
        
        
        
        movi.frame = CGRect.init(x: self.bounds.width * 0.25, y: self.bounds.height * 0.65, width: self.bounds.width * 0.525 , height: self.bounds.height * 0.3 )
        
        
       // movi.backgroundColor = UIColor.white
        
        
        movi.textColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.2)
        
        movi.font = UIFont(name: "AvenirNext-Bold", size: 15)

        
        movi.textAlignment = .left
        
        movi.text = "MOVING"
        
       // movi.layer.cornerRadius = self.bounds.height * 0.4

        
        movi.clipsToBounds = true
        
        
        
        
        
        themove.frame = CGRect.init(x: self.bounds.width * 0.05 , y: self.bounds.height * 0.15, width: self.bounds.width * 0.4 , height: self.bounds.height * 0.7 )
        
        themove.layer.cornerRadius = 2
        
        
        themove.backgroundColor = UIColor.black
            
            //UIColor(red: 16.0/255.0, green: 197.0/255.0, blue: 197.0/255.0, alpha: 1.0)
            
            //UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.8)
        
        themove.clipsToBounds = true
        
        
        vaca.isUserInteractionEnabled = true
        
        movi.isUserInteractionEnabled = true
        
        
        
        vaca.tag = 1
        
        movi.tag = 2
        
        
        othercover.frame = CGRect.init(x: 0, y: self.bounds.height - 0.5, width: self.bounds.width , height: 0.5)
        
        // othercover.layer.cornerRadius = 10
        
        othercover.backgroundColor = UIColor.lightGray
        
        othercover.clipsToBounds = true
        
        
        
        
        self.addSubview(self.firstSwitch)
        
        self.addSubview(self.vaca)
        
        self.addSubview(self.movi)
        
        
        
         self.addSubview(self.secondSwitch)
        
    }
    
}































class Bottomer: UIView {
    
    
    
    
    var home = UILabel()
    
    var add = UILabel()
    
    
    var profile = UILabel()
    
    
    
    var themove = UIView()
    
    var othercover = UIView()
    
    
    override func layoutSubviews() {
        
        self.backgroundColor = UIColor(red: 253.0/255.0, green: 253.0/255.0, blue: 253.0/255.0, alpha: 1.0)
        
        
        home.frame = CGRect.init(x: self.bounds.width * 0.16, y: 0, width: self.bounds.width * 0.16 , height: self.bounds.height )
        
        
        home.textColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        
        home.font = UIFont(name: "AvenirNext-Medium", size: 20)
        
        home.textAlignment = .left
        home.text = "✿"
        
        
        add.frame = CGRect.init(x: self.bounds.width * 0.44, y: self.bounds.height * 0.15, width: self.bounds.width * 0.12 , height: self.bounds.height * 0.7 )
        
        
        add.textColor = UIColor.white
        
        add.backgroundColor = UIColor.black
            
            //UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        add.layer.cornerRadius = 7
        
        add.layer.borderColor = UIColor.black.cgColor
            
            //UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0).cgColor
        
        add.layer.borderWidth = 2
        
        
        add.font = UIFont(name: "AvenirNext-Regular", size: 25)
        
        add.textAlignment = .center
        
        add.text = "＋"
        
        add.clipsToBounds = true
        
        
        profile.frame = CGRect.init(x: self.bounds.width * 0.72, y: 0, width: self.bounds.width * 0.12 , height: self.bounds.height )
        
        
        profile.textColor = UIColor.black
        
        
        profile.font = UIFont(name: "AvenirNext-Regular", size: 20)
        
        profile.textAlignment = .right
        
        profile.text = "●O●"
        
        
        
        
        
        
//        themove.frame = CGRect.init(x: self.bounds.width * 0.08 , y: self.bounds.height * 0.81, width: self.bounds.width * 0.34 , height: self.bounds.height * 0.05 )
//        
//        themove.layer.cornerRadius = self.bounds.height * 0.025
//        
//        
//        themove.backgroundColor = UIColor.white
//        themove.clipsToBounds = true
        
        
        home.isUserInteractionEnabled = true
        
        add.isUserInteractionEnabled = true
        
        profile.isUserInteractionEnabled = true
        
        
        
        home.tag = 1
        
        add.tag = 2
        
        profile.tag = 3
        
        
        othercover.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width , height: 0.5)
        
        // othercover.layer.cornerRadius = 10
        
        othercover.backgroundColor = UIColor.darkGray
        
        othercover.clipsToBounds = true
        
        
        
        
        
        
        self.addSubview(self.add)
        
        self.addSubview(self.home)
        
        self.addSubview(self.profile)
        
         self.addSubview(self.othercover)
        
    }
    
}




class ComLike: UIView {
    
    
    
    
    var onestar = UILabel()
    
    var twostar = UILabel()
    
    
    var threestar = UILabel()
    
    
    var fourstar = UILabel()
    
    var fivestar = UILabel()
    
    
    
    var comment = UILabel()
    
    var more = UILabel()
    
    var othercover = UIView()
    
    
    override func layoutSubviews() {
        
        self.backgroundColor = UIColor(red: 253.0/255.0, green: 253.0/255.0, blue: 253.0/255.0, alpha: 1.0)
        
        
        onestar.frame = CGRect.init(x: self.bounds.width * 0.45, y: self.bounds.height * 0.1, width: self.bounds.width * 0.05 , height: self.bounds.height * 0.8 )
        
        
        onestar.textColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        
        onestar.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        onestar.textAlignment = .center
        onestar.text = "★"
        
        
        twostar.frame = CGRect.init(x: self.bounds.width * 0.51, y: self.bounds.height * 0.1, width: self.bounds.width * 0.05 , height: self.bounds.height * 0.8 )
        
        
        twostar.textColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        
        twostar.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        twostar.textAlignment = .center
        twostar.text = "★"
        

        
        threestar.frame = CGRect.init(x: self.bounds.width * 0.57, y: self.bounds.height * 0.1, width: self.bounds.width * 0.05 , height: self.bounds.height * 0.8 )
        
        
        threestar.textColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        threestar.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        threestar.textAlignment = .center
        
        threestar.text = "★"
        
        
        
        fourstar.frame = CGRect.init(x: self.bounds.width * 0.63, y: self.bounds.height * 0.1, width: self.bounds.width * 0.05 , height: self.bounds.height * 0.8 )
        
        
        fourstar.textColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        
        fourstar.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        fourstar.textAlignment = .center
        fourstar.text = "☆"
        
        
        
        fivestar.frame = CGRect.init(x: self.bounds.width * 0.69, y: self.bounds.height * 0.1, width: self.bounds.width * 0.05 , height: self.bounds.height * 0.8 )
        
        
        fivestar.textColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        
        fivestar.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        fivestar.textAlignment = .center
        
        fivestar.text = "☆"

        
        
        comment.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.1, width: self.bounds.width * 0.35 , height: self.bounds.height * 0.8 )
        
        
        comment.textColor = UIColor.white
        
        comment.layer.cornerRadius = 5
        
        comment.backgroundColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
            
            //UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        comment.layer.borderColor = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0).cgColor
        
        comment.layer.borderWidth = 2
        
        
        comment.font = UIFont(name: "AvenirNext-Medium", size: 15)
        
        comment.textAlignment = .center
        
        comment.text = "comments"
        
        comment.clipsToBounds = true


        
        
        more.frame = CGRect.init(x: self.bounds.width * 0.85, y: self.bounds.height * 0.1, width: self.bounds.width * 0.1 , height: self.bounds.height * 0.8 )
        
        
        more.textColor = UIColor.black
        
        
        more.font = UIFont(name: "AvenirNext-Bold", size: 15)
        
        more.textAlignment = .center
        
        more.text = "●●●"

        
        
        
        
        
        
        //        themove.frame = CGRect.init(x: self.bounds.width * 0.08 , y: self.bounds.height * 0.81, width: self.bounds.width * 0.34 , height: self.bounds.height * 0.05 )
        //
        //        themove.layer.cornerRadius = self.bounds.height * 0.025
        //
        //
        //        themove.backgroundColor = UIColor.white
        //        themove.clipsToBounds = true
        
        
        onestar.isUserInteractionEnabled = true
        
        twostar.isUserInteractionEnabled = true
        
        threestar.isUserInteractionEnabled = true
        
        
        fourstar.isUserInteractionEnabled = true
        
        fivestar.isUserInteractionEnabled = true
        
        comment.isUserInteractionEnabled = true
        
        
        more.isUserInteractionEnabled = true
        
        
        onestar.tag = 1
        
        twostar.tag = 2
        
        threestar.tag = 3
        
        fourstar.tag = 4
        
        fivestar.tag = 5
        
        
        othercover.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width , height: 0.5)
        
        
        
        othercover.backgroundColor = UIColor.darkGray
        
        othercover.clipsToBounds = true
        
        
        
        
        
        
        self.addSubview(self.onestar)
        
        self.addSubview(self.twostar)
        
        self.addSubview(self.threestar)
        
        self.addSubview(self.fourstar)
        
        self.addSubview(self.fivestar)
        
        
        self.addSubview(self.comment)
        
        
        
        self.addSubview(self.othercover)
        
        self.addSubview(self.more)
        
    }
    
}














class Comy: UIView {
    
    
    var cover = UIView()
    
    var profile = UIImageView()
    
    var ment = UITextField()
    
    var othercover = UIView()
    
    
    
    override func layoutSubviews() {
        self.backgroundColor = UIColor.black

        
        
        
        profile.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.2, width: self.bounds.width * 0.1, height: self.bounds.width * 0.1)
        
        profile.layer.cornerRadius = self.bounds.width * 0.05
        
        profile.image = UIImage.init(named: "c")
        
        profile.contentMode = .scaleAspectFill
        
        profile.clipsToBounds = true
        
        
        ment.frame = CGRect.init(x: self.bounds.width * 0.175, y: self.bounds.height * 0.1, width: self.bounds.width * 0.8, height: self.bounds.height * 0.8)
        
        ment.attributedPlaceholder = NSAttributedString.init(string: "What do you think?", attributes: [NSForegroundColorAttributeName : UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.5)])
        
        ment.tintColor = UIColor.white
        
      //  ment.text = "What do you think?"
        
        ment.font = UIFont.init(name: "AvenirNext-Regular", size: 14)
        
        ment.textColor = UIColor.white
        
        ment.textAlignment = .left
        
        ment.clipsToBounds = true
        
        
        cover.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width , height: 0.5)
        
        
        
        cover.backgroundColor = UIColor.darkGray
        
        cover.clipsToBounds = true
        
        
        othercover.frame = CGRect.init(x: 0, y: self.bounds.height - 0.5, width: self.bounds.width , height: 0.5)
        
        
        
        othercover.backgroundColor = UIColor.darkGray
        
        othercover.clipsToBounds = true
        
        
        self.addSubview(self.ment)
        
        self.addSubview(self.cover)
        
        self.addSubview(self.profile)
        
        self.addSubview(self.othercover)
        

    }
    
}
















class OnTop: UIView {
    
    
    
    var profile = UIImageView()
    
    var name = UILabel()
    
    var title = UILabel()
    
    
    
    override func layoutSubviews() {
        self.backgroundColor = UIColor.black
            
            //UIColor(red: 234.0/255.0, green: 181.0/255.0, blue: 49.0/255.0, alpha: 1.0)
            
            //UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        
        profile.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.3, width: self.bounds.width * 0.12, height: self.bounds.width * 0.12)
        
        profile.layer.cornerRadius = self.bounds.width * 0.06
        
        profile.image = UIImage.init(named: "c")
        
        profile.contentMode = .scaleAspectFill
        
        profile.clipsToBounds = true
        
        
        name.frame = CGRect.init(x: self.bounds.width * 0.225, y: self.bounds.height * 0.2, width: self.bounds.width * 0.7, height: self.bounds.height * 0.2)
        
        name.textColor = UIColor.white
        
        name.text = "Gregory Achibold"
        
        name.textAlignment = .left
        
        
        name.font = UIFont.init(name: "AvenirNext-Medium", size: 15)
        
        name.clipsToBounds = true
        
        
        
        title.frame = CGRect.init(x: self.bounds.width * 0.225, y: self.bounds.height * 0.5, width: self.bounds.width * 0.7, height: self.bounds.height * 0.2)
        
        title.textColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.7)
        
        title.text = "Chief Marketing Officer @ Michelletti, LLC"
        
        title.textAlignment = .left
        
        
        title.font = UIFont.init(name: "AvenirNext-Regular", size: 13)
        
        title.clipsToBounds = true
        
        
        self.addSubview(self.name)
        
        self.addSubview(self.title)
        
        self.addSubview(self.profile)

        
        
        
    }
    
}



func getimage(rl: URL, timi : CMTimeValue) -> UIImage {
    
    var uiImage = UIImage()
    
    do {
        let asset = AVURLAsset(url: rl, options: nil)
        
        let context = CIContext(options: nil)
        let imgGenerator = AVAssetImageGenerator(asset: asset)
        imgGenerator.appliesPreferredTrackTransform = true
        
        var time: CMTime = asset.duration
        time.timescale = 4
        
        time.value = timi
        let cgImage = try imgGenerator.copyCGImage(at: time, actualTime: nil)
        uiImage = UIImage(cgImage: cgImage)
        
        
        
        
        
        
        
        // lay out this image view, or if it already exists, set its image property to uiImage
    } catch let error as NSError {
        print("Error generating thumbnail: \(error)")
    }
    
    return uiImage
    
}

class Terms : UIView {
    
    let termsView = UIView()
    
    let termsTitle = UILabel()
    
    let seprate = UIView()
    
    let termsOnTerms = UITextView()
    
    let TermButton = UIButton()
    
    
    override func layoutSubviews() {
        
        
        let termwords = "Please read these Terms and Conditions carefully before using the Buy Me Lunch mobile application operated by AppendiQs Inc. Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service. By accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service. Our Service allows you to post, link, store, share and otherwise make available certain information, text, graphics, or other material. Our Service may contain links to third­ party web sites or services that are not owned or controlled by AppendiQs Inc. AppendiQs, Inc has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that AppendiQs Inc shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods or services available on or through any such web sites or services. We reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material we will try to provide at least 50 days' notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion. If you have any questions about these Terms, please contact us at bavariancockney@gmail.com"
        
        
        
        termsView.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        
        termsView.backgroundColor = UIColor.white
        
        termsTitle.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.03, width: self.bounds.width * 0.9, height: self.bounds.height * 0.11)
        
        //CGRectMake(screenQ.width * 0.05, screenQ.height * 0.03, screenQ.width * 0.9, screenQ.height * 0.11)
        
        termsTitle.textColor = UIColor.black
        
        termsTitle.textAlignment = .center
        
        termsTitle.text = "Terms and Conditions"
        
        termsTitle.backgroundColor = UIColor.clear
        
        termsTitle.font = UIFont(name: "Avenir-Medium", size: 17)
        
        
        
        TermButton.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.03, width: self.bounds.width * 0.15, height: self.bounds.height * 0.05)
        
        TermButton.setTitle("close", for: .normal)
        
        TermButton.backgroundColor = UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
        
        TermButton.setTitleColor(UIColor.lightGray, for: .normal)
        
        
        
        //CGRectMake(screenQ.width * 0.05, screenQ.height * 0.05, screenQ.height * 0.04, screenQ.height * 0.04)
        
        
        
        
        
        seprate.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.12, width: self.bounds.width * 0.9, height: 2)
        
        //CGRectMake(screenQ.width * 0.05, screenQ.height * 0.12, screenQ.width * 0.9, 2)
        
        seprate.layer.cornerRadius = 1
        
        seprate.alpha = 0.05
        
        seprate.backgroundColor = UIColor.black
        
        
        termsOnTerms.frame = CGRect.init(x: self.bounds.width * 0.05, y: self.bounds.height * 0.13, width: self.bounds.width * 0.9, height: self.bounds.height * 0.85)
        
        //CGRectMake(screenQ.width * 0.05, screenQ.height * 0.13, screenQ.width * 0.9, self.screenQ.height * 0.85)
        
        termsOnTerms.textColor = UIColor.black
        
        termsOnTerms.textAlignment = .left
        
        termsOnTerms.text = termwords
        
        termsOnTerms.showsVerticalScrollIndicator = false
        termsOnTerms.showsHorizontalScrollIndicator = false
        termsOnTerms.allowsEditingTextAttributes = false
        
        termsOnTerms.backgroundColor = UIColor.clear
        
        termsOnTerms.font = UIFont(name: "Avenir-Medium", size: 14)
        
        
        self.addSubview(termsView)
        
        self.termsView.addSubview(termsTitle)
        
        self.termsView.addSubview(TermButton)
        
        self.termsView.addSubview(seprate)
        
        self.termsView.addSubview(termsOnTerms)
        
        
        
        
        
    }
    
    
    
}

extension NSMutableAttributedString {
    
    
    
    func bold(text:String) -> NSMutableAttributedString {
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 4
        let attrs:[String:AnyObject] = [NSFontAttributeName : UIFont(name: "AvenirNext-Bold", size: 13)!, NSForegroundColorAttributeName: UIColor.darkGray, NSParagraphStyleAttributeName: paragraphStyle]
        let boldString = NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(boldString)
        return self
    }
    
    func boldi(text:String) -> NSMutableAttributedString {
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 4
        let attrs:[String:AnyObject] = [NSFontAttributeName : UIFont(name: "AvenirNext-Bold", size: 15)!, NSForegroundColorAttributeName: UIColor(red: 16.0/255.0, green: 197.0/255.0, blue: 197.0/255.0, alpha: 1.0), NSParagraphStyleAttributeName: paragraphStyle]
        let boldString = NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(boldString)
        return self
    }
    
    func boldu(text:String) -> NSMutableAttributedString {
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 4
        let attrs:[String:AnyObject] = [NSFontAttributeName : UIFont(name: "AvenirNext-Regular", size: 20)!, NSForegroundColorAttributeName: UIColor.darkGray, NSParagraphStyleAttributeName: paragraphStyle]
        let boldString = NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(boldString)
        return self
    }
    
    
    func normal(text:String)->NSMutableAttributedString {
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 4
        
        let attrs:[String:AnyObject] = [NSFontAttributeName : UIFont(name: "AvenirNext-Regular", size: 13)!, NSForegroundColorAttributeName: UIColor.lightGray, NSParagraphStyleAttributeName: paragraphStyle]
        let normal =  NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(normal)
        return self
    }
    
    
    func country(text:String)->NSMutableAttributedString {
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 4
        
        let attrs:[String:AnyObject] = [NSFontAttributeName : UIFont(name: "AvenirNext-Heavy", size: 20)!, NSForegroundColorAttributeName: UIColor.clear, NSParagraphStyleAttributeName: paragraphStyle, NSStrokeColorAttributeName : UIColor.white, NSStrokeWidthAttributeName : NSNumber.init(value: 8) ]
        let normal =  NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(normal)
        return self
    }
    
    
    
    
    func countri(text:String)->NSMutableAttributedString {
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 4
        
        let attrs:[String:AnyObject] = [NSFontAttributeName : UIFont(name: "AvenirNext-Heavy", size: 18)!, NSForegroundColorAttributeName: UIColor.clear, NSParagraphStyleAttributeName: paragraphStyle, NSStrokeColorAttributeName : UIColor.white, NSStrokeWidthAttributeName : NSNumber.init(value: 8) ]
        let normal =  NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(normal)
        return self
    }
    

    
    
    func spacio(text:String)->NSMutableAttributedString {
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 4
        
        let attrs:[String:AnyObject] = [NSFontAttributeName : UIFont(name: "AvenirNext-Medium", size: 16)!, NSForegroundColorAttributeName: UIColor.darkGray, NSParagraphStyleAttributeName: paragraphStyle ]
        let normal =  NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(normal)
        return self
    }
}









extension UIImageView {
    
    public func loadGif(name: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(name: name)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
}

extension UIImage {
    
    public class func gif(data: Data) -> UIImage? {
        // Create source from data
        guard let source = CGImageSourceCreateWithData(data as CFData, nil) else {
            print("SwiftGif: Source for the image does not exist")
            return nil
        }
        
        return UIImage.animatedImageWithSource(source)
    }
    
    public class func gif(url: String) -> UIImage? {
        // Validate URL
        guard let bundleURL = URL(string: url) else {
            print("SwiftGif: This image named \"\(url)\" does not exist")
            return nil
        }
        
        // Validate data
        guard let imageData = try? Data(contentsOf: bundleURL) else {
            print("SwiftGif: Cannot turn image named \"\(url)\" into NSData")
            return nil
        }
        
        return gif(data: imageData)
    }
    
    public class func gif(name: String) -> UIImage? {
        // Check for existance of gif
        guard let bundleURL = Bundle.main
            .url(forResource: name, withExtension: "gif") else {
                print("SwiftGif: This image named \"\(name)\" does not exist")
                return nil
        }
        
        // Validate data
        guard let imageData = try? Data(contentsOf: bundleURL) else {
            print("SwiftGif: Cannot turn image named \"\(name)\" into NSData")
            return nil
        }
        
        return gif(data: imageData)
    }
    
    internal class func delayForImageAtIndex(_ index: Int, source: CGImageSource!) -> Double {
        var delay = 0.1
        
        // Get dictionaries
        let cfProperties = CGImageSourceCopyPropertiesAtIndex(source, index, nil)
        let gifPropertiesPointer = UnsafeMutablePointer<UnsafeRawPointer?>.allocate(capacity: 0)
        if CFDictionaryGetValueIfPresent(cfProperties, Unmanaged.passUnretained(kCGImagePropertyGIFDictionary).toOpaque(), gifPropertiesPointer) == false {
            return delay
        }
        
        let gifProperties:CFDictionary = unsafeBitCast(gifPropertiesPointer.pointee, to: CFDictionary.self)
        
        // Get delay time
        var delayObject: AnyObject = unsafeBitCast(
            CFDictionaryGetValue(gifProperties,
                                 Unmanaged.passUnretained(kCGImagePropertyGIFUnclampedDelayTime).toOpaque()),
            to: AnyObject.self)
        if delayObject.doubleValue == 0 {
            delayObject = unsafeBitCast(CFDictionaryGetValue(gifProperties,
                                                             Unmanaged.passUnretained(kCGImagePropertyGIFDelayTime).toOpaque()), to: AnyObject.self)
        }
        
        delay = delayObject as? Double ?? 0
        
        if delay < 0.1 {
            delay = 0.1 // Make sure they're not too fast
        }
        
        return delay
    }
    
    internal class func gcdForPair(_ a: Int?, _ b: Int?) -> Int {
        var a = a
        var b = b
        // Check if one of them is nil
        if b == nil || a == nil {
            if b != nil {
                return b!
            } else if a != nil {
                return a!
            } else {
                return 0
            }
        }
        
        // Swap for modulo
        if a! < b! {
            let c = a
            a = b
            b = c
        }
        
        // Get greatest common divisor
        var rest: Int
        while true {
            rest = a! % b!
            
            if rest == 0 {
                return b! // Found it
            } else {
                a = b
                b = rest
            }
        }
    }
    
    internal class func gcdForArray(_ array: Array<Int>) -> Int {
        if array.isEmpty {
            return 1
        }
        
        var gcd = array[0]
        
        for val in array {
            gcd = UIImage.gcdForPair(val, gcd)
        }
        
        return gcd
    }
    
    internal class func animatedImageWithSource(_ source: CGImageSource) ->    UIImage? {
        let count = CGImageSourceGetCount(source)
        var images = [CGImage]()
        var delays = [Int]()
        
        // Fill arrays
        for i in 0..<count {
            // Add image
            if let image = CGImageSourceCreateImageAtIndex(source, i, nil) {
                images.append(image)
            }
            
            // At it's delay in cs
            let delaySeconds = UIImage.delayForImageAtIndex(Int(i),
                                                            source: source)
            delays.append(Int(delaySeconds * 1000.0)) // Seconds to ms
        }
        
        // Calculate full duration
        let duration: Int = {
            var sum = 0
            
            for val: Int in delays {
                sum += val
            }
            
            return sum
        }()
        
        // Get frames
        let gcd = gcdForArray(delays)
        var frames = [UIImage]()
        
        var frame: UIImage
        var frameCount: Int
        for i in 0..<count {
            frame = UIImage(cgImage: images[Int(i)])
            frameCount = Int(delays[Int(i)] / gcd)
            
            for _ in 0..<frameCount {
                frames.append(frame)
            }
        }
        
        // Heyhey
        let animation = UIImage.animatedImage(with: frames,
                                              duration: Double(duration) / 1000.0)
        
        return animation
    }
    
}




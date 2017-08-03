//
//  ProfileVC.swift
//  Bradley
//
//  Created by Samuel Kudadji on 6/12/17.
//  Copyright © 2017 Samuel Kudadji. All rights reserved.
//

import UIKit

import Foundation

import AVFoundation

import AVKit

import SDWebImage


class ProfileVC: UIViewController,  UITextFieldDelegate, UIScrollViewDelegate,  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let screenQ: CGRect = UIScreen.main.bounds
    
    var myName = UILabel()
    
    
    var rounder = UIView()
    
    var Cover = UIView()
    
    var whatIdo = TextField()

    
    var whereIam = TextField()

     var goback = UILabel()
    
    var myFAce = UIImageView()
    
    var theleyer = loyal()
    
    var bottom = Bottomer()
    
    var mageray = [String]()
    
    var cray = [String]()
    
    var bouta = Bool()
    
   
    
    
    
    @IBOutlet weak var cblContent: UICollectionView!
    
    let gradient: CAGradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        self.view.backgroundColor = UIColor(red: 16.0/255.0, green: 197.0/255.0, blue: 197.0/255.0, alpha: 1.0)
        
        
        let colorTop = UIColor(red: 41.0/255.0, green: 166.0/255.0, blue: 198.0/255.0, alpha: 1.0)
        //UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        
        
        
        
        let colorBottom = UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        
        gradient.frame = self.view.bounds
        
        gradient.colors = [colorBottom.cgColor, colorTop.cgColor]
        
        gradient.locations = [0.05, 0.3]
        
        //   gradient.startPoint = CGPoint.init(x: 0, y: 0.05)
        //
        //  gradient.endPoint = CGPoint.init(x: 1, y: 0.05)
        //
        
      //  self.view.layer.insertSublayer(gradient, at: 0)
        
        
        
        self.cblThings()
        
        
        
        
        self.mageray = ["https://unsplash.com/search/photos/ghana?photo=EDGMza4RMZc", "https://unsplash.com/?photo=vXpcpTl2Tt4", "https://unsplash.com/?photo=ALBc326eGas", "https://unsplash.com/search/city?photo=RA5ntyyDHlw", "https://unsplash.com/search/street?photo=c7jn_0eWVwQ", "https://unsplash.com/search/street?photo=cdBSNjP_v0w"]
        
        self.cray = ["Ghana", "Trinidad & Tobago", "★★★★", "Malta", "Japan", "★★★" ]
        
        // Do any additional setup after loading the view.
    }
    
    func cblThings() {
        
        
        
        cblContent.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.43, width: self.screenQ.width , height: self.screenQ.height * 0.57)
        
        cblContent.backgroundColor = UIColor.white
        cblContent.showsHorizontalScrollIndicator = false
        
        cblContent.showsVerticalScrollIndicator = false
        
        cblContent.delegate = self
        
        cblContent.dataSource = self
        
        
        cblContent.allowsSelection = true
        
        
        
        //UIColor(red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, alpha: 1.0)
        
        self.cblContent.removeFromSuperview()
        
        
        self.view.addSubview(cblContent)
        
        
        
        Cover.frame = CGRect.init(x: 0, y: 0, width: self.screenQ.width , height: self.screenQ.height * 0.4)
        
        self.view.addSubview(Cover)
        
        Cover.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.dismisser)))
        
        
        
        
        goback.frame = CGRect.init(x: self.screenQ.width * 0.025, y: self.screenQ.height * 0.03, width: self.screenQ.width * 0.08, height: self.screenQ.width * 0.08)
        
        goback.textColor = UIColor.white
        
        goback.textAlignment = .center
        
        goback.text = "◀︎"
        
        goback.font = UIFont.init(name: "AvenirNext-Heavy", size: 18)
        
        
        //
        
        goback.clipsToBounds = true
        
        goback.isUserInteractionEnabled = true
        
        goback.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.leave)))
        
        
        
        
        
        self.view.addSubview(goback)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        theleyer.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.35, width: self.screenQ.width , height: self.screenQ.height * 0.08)
        
      //  self.view.addSubview(theleyer)
        
        whatIdo.frame = CGRect.init(x:self.screenQ.width * 0.05, y: self.screenQ.height * 0.24, width: self.screenQ.width * 0.9  , height: self.screenQ.height * 0.05)
        
        whatIdo.attributedPlaceholder = NSAttributedString.init(string: "What do you do? Eg: CFO @ KFC China", attributes: [NSForegroundColorAttributeName : UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.5)])
        
        whatIdo.tintColor = UIColor.white
        
        
        
        whatIdo.font = UIFont.init(name: "Avenir-Medium", size: 14)
        
        whatIdo.textColor = UIColor.white
        
        whatIdo.textAlignment = .center
        
        whatIdo.clipsToBounds = true
        
        self.view.addSubview(self.whatIdo)
        
        
        whereIam.frame = CGRect.init(x:self.screenQ.width * 0.05, y: self.screenQ.height * 0.30, width: self.screenQ.width * 0.9  , height: self.screenQ.height * 0.05)
        
        whereIam.attributedPlaceholder = NSAttributedString.init(string: "Where in the world are you? ", attributes: [NSForegroundColorAttributeName : UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.5)])
        
        whereIam.tintColor = UIColor.white
        
        
        
        whereIam.font = UIFont.init(name: "Avenir-Medium", size: 14)
        
        whereIam.textColor = UIColor.white
        
        whereIam.textAlignment = .center
        
        whereIam.clipsToBounds = true
        
        self.view.addSubview(self.whereIam)
        
        
        myName.frame = CGRect.init(x:self.screenQ.width * 0.05, y: self.screenQ.height * 0.18, width: self.screenQ.width * 0.9  , height: self.screenQ.height * 0.05)
        
        //  myName.backgroundColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.4)
        
        myName.font = UIFont.init(name: "Avenir-Medium", size: 15)
        
        // myName.layer.cornerRadius = 2
        
        myName.textAlignment = .center
        
        myName.textColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        
        myName.text = "Vladimir Beachcrust"
        
        myName.clipsToBounds = true
        
        self.view.addSubview(self.myName)
        
        
        rounder.frame = CGRect.init(x: self.screenQ.width * 0.4 - 2, y: self.screenQ.height * 0.06 - 2, width: self.screenQ.width * 0.2 + 4 , height: self.screenQ.width * 0.2 + 4)
        
        rounder.layer.cornerRadius = self.screenQ.width * 0.1 + 2
        
        rounder.backgroundColor = UIColor.white
        
        rounder.clipsToBounds = true
        
        self.view.addSubview(self.rounder)
        
        
        
        myFAce.frame = CGRect.init(x: self.screenQ.width * 0.4, y: self.screenQ.height * 0.06, width: self.screenQ.width * 0.2 , height: self.screenQ.width * 0.2)
        
        myFAce.layer.cornerRadius = self.screenQ.width * 0.1
        
        
        myFAce.image = UIImage.init(named: "e4")
        
        myFAce.contentMode = .scaleAspectFill
        
        myFAce.clipsToBounds = true
        
        self.view.addSubview(self.myFAce)

        
        
    }

    
    func letsplaycom( ) {
        
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "coma") as? ComVC {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
        
    }

    
    
//    func talbeThings() {
//        
//        
//        
//        
//        tblContent.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.03, width: self.screenQ.width , height: self.screenQ.height * 0.97)
//        
//        
//        
//        
//        
//        tblContent.delegate = self
//        
//        tblContent.dataSource = self
//        
//        tblContent.rowHeight = self.screenQ.height * 0.5
//        
//        tblContent.allowsSelection = true
//        
//        tblContent.backgroundColor = UIColor.clear
//        
//        
//        tblContent.separatorColor = UIColor.clear
//        
//        tblContent.showsVerticalScrollIndicator = false
//        
//        tblContent.showsHorizontalScrollIndicator = false
//        
//        tblContent.contentInset.top = self.screenQ.height * 0.4
//        
//        // tblContent.contentInset = UIEdgeInsetsMake(self.screenQ.height * 0.1, 0, 0, 0)
//        
//        self.tblContent.removeFromSuperview()
//        
//        self.view.addSubview(tblContent)
//        
//        
//        Cover.frame = CGRect.init(x: 0, y: -self.screenQ.height * 0.4, width: self.screenQ.width , height: self.screenQ.height * 0.4)
//        
//        self.tblContent.addSubview(Cover)
//        
//        Cover.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.dismisser)))
//        
//        
//        
//        
//        goback.frame = CGRect.init(x: self.screenQ.width * 0.025, y: -self.screenQ.height * 0.4, width: self.screenQ.width * 0.08, height: self.screenQ.width * 0.08)
//        
//        goback.textColor = UIColor.white
//        
//        goback.textAlignment = .center
//        
//        goback.text = "◀︎"
//        
//        goback.font = UIFont.init(name: "AvenirNext-Heavy", size: 18)
//        
//        
//        //
//        
//        goback.clipsToBounds = true
//        
//        goback.isUserInteractionEnabled = true
//        
//        goback.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.leave)))
//        
//
//        
//        
//        
//        self.tblContent.addSubview(goback)
//
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        theleyer.frame = CGRect.init(x: 0, y: -self.screenQ.height * 0.1, width: self.screenQ.width , height: self.screenQ.height * 0.08)
//        
//        self.tblContent.addSubview(theleyer)
//        
//        whatIdo.frame = CGRect.init(x:self.screenQ.width * 0.05, y: -self.screenQ.height * 0.21, width: self.screenQ.width * 0.9  , height: self.screenQ.height * 0.05)
//        
//        whatIdo.attributedPlaceholder = NSAttributedString.init(string: "What do you do? Eg: CFO @ KFC China", attributes: [NSForegroundColorAttributeName : UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.5)])
//        
//        whatIdo.tintColor = UIColor.white
//        
//        
//        
//        whatIdo.font = UIFont.init(name: "AvenirNext-Regular", size: 14)
//        
//        whatIdo.textColor = UIColor.white
//        
//        whatIdo.textAlignment = .center
//        
//        whatIdo.clipsToBounds = true
//        
//         self.tblContent.addSubview(self.whatIdo)
//        
//        
//        whereIam.frame = CGRect.init(x:self.screenQ.width * 0.05, y: -self.screenQ.height * 0.15, width: self.screenQ.width * 0.9  , height: self.screenQ.height * 0.05)
//        
//        whereIam.attributedPlaceholder = NSAttributedString.init(string: "Where in the world are you? ", attributes: [NSForegroundColorAttributeName : UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.5)])
//        
//        whereIam.tintColor = UIColor.white
//        
//        
//        
//        whereIam.font = UIFont.init(name: "AvenirNext-Regular", size: 14)
//        
//        whereIam.textColor = UIColor.white
//        
//        whereIam.textAlignment = .center
//        
//        whereIam.clipsToBounds = true
//        
//         self.tblContent.addSubview(self.whereIam)
//
//        
//        myName.frame = CGRect.init(x:self.screenQ.width * 0.05, y: -self.screenQ.height * 0.27, width: self.screenQ.width * 0.9  , height: self.screenQ.height * 0.05)
//        
//      //  myName.backgroundColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.4)
//        
//        myName.font = UIFont.init(name: "Avenir-Medium", size: 15)
//        
//       // myName.layer.cornerRadius = 2
//        
//        myName.textAlignment = .center
//        
//        myName.textColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
//        
//        myName.text = "Vladimir Beachcrust"
//        
//        myName.clipsToBounds = true
//        
//        self.tblContent.addSubview(self.myName)
//        
//        
//        myFAce.frame = CGRect.init(x: self.screenQ.width * 0.4, y: -self.screenQ.height * 0.4, width: self.screenQ.width * 0.2 , height: self.screenQ.width * 0.2)
//        
//        myFAce.layer.cornerRadius = self.screenQ.width * 0.1
//        
//        
//        myFAce.image = UIImage.init(named: "e4")
//        
//        myFAce.contentMode = .scaleAspectFill
//        
//        myFAce.clipsToBounds = true
//        
//        self.tblContent.addSubview(self.myFAce)
//        
//        NotificationCenter.default.addObserver(self, selector: #selector(self.scrollto), name: Notification.Name.UIKeyboardDidShow, object: nil)
//        
//        
//        NotificationCenter.default.addObserver(self, selector: #selector(self.scrollto), name: Notification.Name.UIKeyboardWillShow, object: nil)
//        
//
//        
//        
//    }
    
    func dismisser() {
        
        self.view.endEditing(true)
    }
    
    
//    func scrollto() {
//        
//        
//        
//        tblContent.contentOffset.y = -self.screenQ.height * 0.4
//        
//        
//        
//    }
//    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        if scrollView == tblContent {
//            
//            print(tblContent.contentOffset.y)
//            
//            if tblContent.contentOffset.y > 1 {
//                
//                self.forbouta()
//                
//                
//                
//                
//            }
//            
//            
//            if tblContent.contentOffset.y < 0 {
//                
//                
//                self.otherbouta()
//                
//            }
//            
//            
//            
//        }
//    }
    
    func otherbouta() {
        
        
        if bouta == true {
            
          //  self.view.layer.insertSublayer(gradient, at: 0)
            
            self.view.backgroundColor = UIColor(red: 16.0/255.0, green: 197.0/255.0, blue: 197.0/255.0, alpha: 1.0)
            
            UIApplication.shared.statusBarStyle = .lightContent
            
            
            bouta = false
            
        }
        
        
    }
    
    func forbouta() {
        
        
        if bouta == false {
            
         //   self.view.layer.sublayers?.remove(at: 0)
            
            self.view.backgroundColor = UIColor.white
            
            UIApplication.shared.statusBarStyle = .default
            
            bouta = true
            
        }
        
    }
    
    func randInRange(min: Int, max: Int) -> Int {
        // arc4random_uniform(_: UInt32) returns UInt32, so it needs explicit type conversion to Int
        // note that the random number is unsigned so we don't have to worry that the modulo
        // operation can have a negative output
        return  Int(arc4random_uniform(UInt32(max - min))) + min
    }
    
    
    func leave() {
        
        UIApplication.shared.isStatusBarHidden = false
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        
        
        
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
        
    }

    
    func letsplaythis( ) {
        
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dirty") as? DirtyVC {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        cblContent.collectionViewLayout.invalidateLayout()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       // self.letsplaythis()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pro", for: indexPath) as! CollCell
        
        
      //  cell.frame = CGRect.init(x: 0, y: 0, width: self.screenQ.width * 0.48 , height: self.screenQ.height * 0.55)
        
        
        var themage = mageray[indexPath.item]
        
        // cell.firstpic.sd_setImage(with: NSURL.init(string: themage) as! URL)
        
        if indexPath.item == 0 || indexPath.item == 3 {
            
            cell.firstpic.image = UIImage.init(named: "a")
            
            let formattedStringing = NSMutableAttributedString()
            formattedStringing.boldi(text: "$5000").normal(text: "  per week")
            
            cell.firstlike.attributedText = formattedStringing
            
        }
        
        if indexPath.item == 1 || indexPath.item == 4 {
            
            cell.firstpic.image = UIImage.init(named: "b")
            
            let formattedStringing = NSMutableAttributedString()
            formattedStringing.boldi(text: "$9000").normal(text: "  per week")
            
            cell.firstlike.attributedText = formattedStringing
            
        }
        
        if indexPath.item == 2 || indexPath.item == 5 {
            
            cell.firstpic.image = UIImage.init(named: "c")
            
            let formattedStringing = NSMutableAttributedString()
            formattedStringing.boldi(text: "$2000").normal(text: "  per week")
            
            cell.firstlike.attributedText = formattedStringing
            
            
            
        }
        
        
        if indexPath.row == 2 {
            
            cell.flagg.image = UIImage.init(named: "f1")
            
            cell.namcountry.text = "Saint Lucia"
        }
        
        if indexPath.row == 5 {
            
            cell.flagg.image = UIImage.init(named: "f2")
            
            cell.namcountry.text = "Macedonia"
        }
        
        let formattedStringin = NSMutableAttributedString()
        formattedStringin.countri(text: cray[indexPath.row])
        cell.thecountry.attributedText = formattedStringin
        
        
        
        cell.thecap.text = "A thick blanket and flat shoes • Take malaria prophylaxis a week before coming • Four thousand dollars • a portable battery for your laptop • A sense of humor • A local you can trust to answer your questions"
        

        
        return cell
        
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let picDimension = self.view.frame.size.width / 4.0
        return CGSize.init(width: self.screenQ.width * 0.45, height: self.screenQ.height * 0.55)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let leftRightInset = self.view.frame.size.width / 14.0
        return UIEdgeInsetsMake(0, 5, 5, 5)
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

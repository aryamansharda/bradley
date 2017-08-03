//
//  DirtyVC.swift
//  Bradley
//
//  Created by Samuel Kudadji on 6/10/17.
//  Copyright © 2017 Samuel Kudadji. All rights reserved.
//

import UIKit

import Foundation

import AVFoundation

import AVKit

import SDWebImage

class DirtyVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    
    let screenQ: CGRect = UIScreen.main.bounds
    
    var topimage = UIImageView()
    
    var whichcountry = UILabel()
    
    var goback = UILabel()
    
    var stars = UILabel()
    
    var comeTop = OnTop()
    
    var tabpics = [String]()
    
    var bottom = ComLike()
    
    var titleBel = UILabel()
    
    var thewords = UILabel()
    
     var newScroller = UIScrollView()
    
    var chosenciel = DCEll()

    @IBOutlet weak var tblContent: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UIApplication.shared.statusBarStyle = .default
        
        self.view.backgroundColor = UIColor.white
            
            //UIColor(red: 48.0/255.0, green: 192.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        topimage.frame = CGRect.init(x: 0, y: 0, width: self.screenQ.width , height: self.screenQ.height * 0.15)
        
        topimage.image = UIImage.init(named: "e4")
        
        topimage.contentMode = .scaleAspectFill
        
        topimage.clipsToBounds = true
        
       // self.view.addSubview(self.topimage)
        

        
        
        whichcountry.frame = CGRect.init(x: self.screenQ.width * 0.15, y: self.screenQ.height * 0.04, width: self.screenQ.width * 0.8, height: self.screenQ.height * 0.16)
        
        whichcountry.textColor = UIColor.white
        
        
      //  whichcountry.numberOfLines = 2
        
        whichcountry.textAlignment = .center
        
        
//        let formattedStringin = NSMutableAttributedString()
//        formattedStringin.country(text: "Ghana")
//        whichcountry.attributedText = formattedStringin
//        
        whichcountry.text = "Malta"
        
        whichcountry.font = UIFont(name: "AvenirNext-Heavy", size: 35)
        
        whichcountry.clipsToBounds = true
        
        whichcountry.sizeToFit()
        
       // self.view.addSubview(self.whichcountry)
        
        
        
        stars.frame = CGRect.init(x: self.screenQ.width * 0.175, y: self.screenQ.height * 0.12, width: self.screenQ.width * 0.7, height: self.screenQ.width * 0.03)
        
        stars.textColor = UIColor.white
        
        stars.textAlignment = .left
        
        stars.text = "★★★★ 4590 ratings"
        
        stars.font = UIFont.init(name: "AvenirNext-Medium", size: 15)
        
        
         stars.clipsToBounds = true
        
        self.view.addSubview(self.stars)

        
        //
        
       

        
        
        
        self.scrolnignar()
        
        self.talbeThings()
        
        tabpics = ["e1", "e2", "e3", "e4", "e5", "e6"]
        
        
       // bottom.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.92, width: self.screenQ.width , height: self.screenQ.height * 0.08)
        
      //  self.view.addSubview(bottom)

        bottom.onestar.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.letratethis(sender:))))
        
        bottom.twostar.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.letratethis(sender:))))
        
        bottom.threestar.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.letratethis(sender:))))
        
        bottom.fourstar.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.letratethis(sender:))))
        
        bottom.fivestar.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.letratethis(sender:))))
        
        
        
        bottom.comment.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.letsplaythis)))
        
        
        bottom.more.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.morethings)))
        
        

        

        // Do any additional setup after loading the view.
    }
    
    
    
    func letratethis(sender: UIGestureRecognizer) {
        
        var rater = sender.view as! UILabel
        
        
        if sender.view!.tag == 5 {
            
            
            bottom.onestar.text = "★"
            
             bottom.twostar.text = "★"
            
             bottom.threestar.text = "★"
            
             bottom.fourstar.text = "★"
            
             bottom.fivestar.text = "★"
            
            
            
        }
        
        if sender.view!.tag == 4 {
            
            
            bottom.onestar.text = "★"
            
            bottom.twostar.text = "★"
            
            bottom.threestar.text = "★"
            
            bottom.fourstar.text = "★"
            
            bottom.fivestar.text = "☆"
            
            
            
        }

        
        
        if sender.view!.tag == 3 {
            
            
            bottom.onestar.text = "★"
            
            bottom.twostar.text = "★"
            
            bottom.threestar.text = "★"
            
            bottom.fourstar.text = "☆"
            
            bottom.fivestar.text = "☆"
            
            
            
        }

        
        
        if sender.view!.tag == 2 {
            
            
            bottom.onestar.text = "★"
            
            bottom.twostar.text = "★"
            
            bottom.threestar.text = "☆"
            
            bottom.fourstar.text = "☆"
            
            bottom.fivestar.text = "☆"
            
            
            
        }

        
        
        if sender.view!.tag == 1 {
            
            
            bottom.onestar.text = "★"
            
            bottom.twostar.text = "☆"
            
            bottom.threestar.text = "☆"
            
            bottom.fourstar.text = "☆"
            
            bottom.fivestar.text = "☆"
            
            
            
        }

        
        
        
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
    
    func scrolnignar() {
        
        
        newScroller.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.03, width: self.screenQ.width  , height: self.screenQ.height * 0.97 )
        
        
        newScroller.contentSize = CGSize.init(width: self.screenQ.width * 2, height: self.screenQ.height * 0.77)
        
        newScroller.delegate = self
        
        // newScroller.backgroundColor = UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.0)
        
        newScroller.contentOffset = CGPoint(x:0 , y:0)
        
        newScroller.showsVerticalScrollIndicator = false
        
        newScroller.showsHorizontalScrollIndicator = false
        
        newScroller.isScrollEnabled = false
        
        newScroller.isDirectionalLockEnabled = true
        
        newScroller.isPagingEnabled = true
        
        newScroller.bounces = false
        
        newScroller.clipsToBounds = true
        
        self.view.addSubview(newScroller)
        
        
        titleBel.frame = CGRect.init(x: self.screenQ.width * 1.025, y: self.screenQ.height * 0.025, width: self.screenQ.width * 0.95, height: self.screenQ.height * 0.12)
        
        titleBel.textColor = UIColor.black
        
        titleBel.numberOfLines = 2
        
        titleBel.textAlignment = .center
        
        
        titleBel.font = UIFont.init(name: "Avenir-Heavy", size: 18)
        
        titleBel.clipsToBounds = true
        
        titleBel.text = "An airbed for when its too cold outside"
        
        
        
        
        
        thewords.frame = CGRect.init(x: self.screenQ.width * 1.1, y: self.screenQ.height * 0.15, width: self.screenQ.width * 0.8, height: self.screenQ.height * 0.5)
        
        thewords.textColor = UIColor.darkGray
        
        thewords.numberOfLines = 15
        
        thewords.textAlignment = .left
        
                let formattedStringing = NSMutableAttributedString()
                formattedStringing.spacio(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas elit quis sem accumsan placerat. Nunc at scelerisque lectus. Donec sit amet felis sit amet purus ultricies elementum in sit amet ante. Fusce fringilla egestas sapien, vitae maximus ligula commodo vel. Mauris ornare hendrerit lorem. Morbi mollis, risus in viverra imperdiet, felis felis semper magna, semper ultricies ipsum metus id massa. Curabitur interdum purus ac sapien venenatis aliquet. Aenean placerat dictum lectus eu feugiat. Maecenas tincidunt sollicitudin purus at tincidunt. Praesent tristique elit vel lectus aliquam blandit ac finibus ipsum.")
        
                thewords.attributedText = formattedStringing
        
      //  thewords.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas elit quis sem accumsan placerat. Nunc at scelerisque lectus. Donec sit amet felis sit amet purus ultricies elementum in sit amet ante. Fusce fringilla egestas sapien, vitae maximus ligula commodo vel. Mauris ornare hendrerit lorem. Morbi mollis, risus in viverra imperdiet, felis felis semper magna, semper ultricies ipsum metus id massa. Curabitur interdum purus ac sapien venenatis aliquet. Aenean placerat dictum lectus eu feugiat. Maecenas tincidunt sollicitudin purus at tincidunt. Praesent tristique elit vel lectus aliquam blandit ac finibus ipsum. Praesent in ornare libero. Etiam fringilla ac odio non aliquet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras nunc felis, convallis eu condimentum quis, egestas mattis velit. Sed suscipit facilisis rutrum."
        
        thewords.sizeToFit()
        
       // thewords.font = UIFont.init(name: "AvenirNext-Medium", size: 14)
        
        thewords.clipsToBounds = true
        
        
        self.newScroller.addSubview(titleBel)
        
        
        
        self.newScroller.addSubview(thewords)
        

        
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == newScroller {
            
            
            
            if self.newScroller.contentOffset.x < 1 {
                
              //  self.topimage.image = UIImage.init(named: "a")
                
                self.newScroller.isScrollEnabled = false
                
            }
            
            
            if self.newScroller.contentOffset.x > self.screenQ.width * 0.99 {
                
               // self.topimage.image = chosenciel.thepic.image!
                
                self.newScroller.isScrollEnabled = true
                
            }
            
        }
        
    }
    
    func slider() {
        
        
        
        
        UIView.animate(withDuration:0.6,
                       delay: 0.0,
                       usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 2.0,
                       options: UIViewAnimationOptions.curveLinear, animations: {
                        
                        
                        
                        
                        
                        
                        self.newScroller.contentOffset.x = self.screenQ.width
                        
                        
                        
                        
                        
                        
        }, completion:nil)
        
    }
    
    
    func morethings() {
        
        
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel) { (action) in
            
            
            
            // ...
        }
        
        
        
        
        alertController.addAction(cancelAction)
        
        
        
        
        
        
        let subscribe = UIAlertAction(title: "subscribe to this post", style: .default) { (action) in
            
            
            
           
            
           
            
            // ...
        }
        
        
        
        
        alertController.addAction(subscribe)
        
        
        let report = UIAlertAction(title: "report this post", style: .default) { (action) in
            
            
            
            
            
            
            
            // ...
        }
        
        
        
        
        alertController.addAction(report)
        

        
        
        
        present(alertController, animated: true, completion: nil)
        


        
    }
    
    func letsplaythis( ) {
        
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "coma") as? ComVC {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
        
    }
    
    
    func letsprofile( ) {
        
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "prof") as? ProfileVC {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
        
    }

    
    
    func talbeThings() {
        
        
        
        
        tblContent.frame = CGRect.init(x: 0, y: 0, width: self.screenQ.width  , height: self.screenQ.height * 0.97 )
        
        
      //  tblContent.backgroundColor = UIColor.init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        
        
        tblContent.delegate = self
        
        tblContent.dataSource = self
        
        tblContent.rowHeight = self.screenQ.height * 0.4
        
       // tblContent.allowsSelection = false
        
        tblContent.backgroundColor = UIColor.clear
        
        
        tblContent.separatorColor = UIColor.clear
        
        tblContent.showsVerticalScrollIndicator = false
        
        tblContent.showsHorizontalScrollIndicator = false
        
        tblContent.contentInset.top = self.screenQ.height * 0.05
        
        // tblContent.contentInset = UIEdgeInsetsMake(self.screenQ.height * 0.1, 0, 0, 0)
        
        self.tblContent.removeFromSuperview()
        
        self.newScroller.addSubview(tblContent)
        
        
        
        goback.frame = CGRect.init(x: self.screenQ.width * 0.025, y: -self.screenQ.height * 0.04, width: self.screenQ.width * 0.08, height: self.screenQ.width * 0.08)
        
        goback.textColor = UIColor.black
        
        goback.textAlignment = .center
        
        goback.text = "◀︎"
        
        goback.font = UIFont.init(name: "AvenirNext-Heavy", size: 20)
        
        
        //
        
        goback.clipsToBounds = true
        
        goback.isUserInteractionEnabled = true
        
        goback.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.leave)))
        
        
        self.tblContent.addSubview(self.goback)

        
        
       

        
        
      //  comeTop.frame = CGRect.init(x: 0, y: -self.screenQ.height * 0.15, width: self.screenQ.width , height: self.screenQ.height * 0.15)
        
        
     
        
        
       // self.tblContent.addSubview(comeTop)
        
        comeTop.profile.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.letsprofile)))
        
        comeTop.profile.isUserInteractionEnabled = true

        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var ret = Int()
        
        //
        ret = 6
        
        
        return ret
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 0.01
    }
    
    
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        if type(of: view) === UITableViewHeaderFooterView.self {
            (view as! UITableViewHeaderFooterView).backgroundView!.backgroundColor = UIColor.clear
        }
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        let cieel = tableView.indexPathForSelectedRow
        
        chosenciel = tableView.cellForRow(at: cieel!) as! DCEll

        self.slider()
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: DCEll!
        
        cell = tableView.dequeueReusableCell(withIdentifier:"dcell", for: indexPath) as! DCEll
        
        
        cell.frame = CGRect.init(x: 0, y: 0, width: self.screenQ.width , height: self.screenQ.height * 0.2)
        
        cell.title.text = " An airbed for when its too cold outside"
        
        cell.thepic.image = UIImage.init(named: tabpics[indexPath.row])

        
        //\(indexPath.row + 1) ●
        
        return cell
        
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

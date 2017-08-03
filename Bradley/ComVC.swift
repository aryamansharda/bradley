//
//  ComVC.swift
//  Bradley
//
//  Created by Samuel Kudadji on 6/11/17.
//  Copyright © 2017 Samuel Kudadji. All rights reserved.
//

import UIKit

import Foundation

import AVFoundation

import AVKit

import SDWebImage

class ComVC: UIViewController , UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate, UITextFieldDelegate {
    
    
    let screenQ: CGRect = UIScreen.main.bounds
    
    
    @IBOutlet weak var tblContent: UITableView!
    
    var thecommy = UILabel()
    
    var goback = UILabel()
    
    var whatcommy = Comy()
    
    var tabpics = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UIApplication.shared.statusBarStyle = .default
        
         self.view.backgroundColor = UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.0)
        
        thecommy.frame = CGRect.init(x: self.screenQ.width * 0.15, y: self.screenQ.height * 0.025, width: self.screenQ.width * 0.7, height: self.screenQ.height * 0.08)
        
        thecommy.textColor = UIColor.black
        
        
      
        
        thecommy.textAlignment = .center
        
        
        thecommy.text = "comments"
        
        thecommy.font = UIFont(name: "AvenirNext-Medium", size: 18)
        
        thecommy.clipsToBounds = true
        
        
        
        self.view.addSubview(self.thecommy)
        
        
        goback.frame = CGRect.init(x: self.screenQ.width * 0.025, y: self.screenQ.height * 0.04, width: self.screenQ.width * 0.08, height: self.screenQ.width * 0.08)
        
        goback.textColor = UIColor.black
        
        goback.textAlignment = .center
        
        goback.text = "◀︎"
        
        goback.font = UIFont.init(name: "AvenirNext-Heavy", size: 18)
        
        
        //
        
        goback.clipsToBounds = true
        
        goback.isUserInteractionEnabled = true
        
        goback.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.leave)))
        
        
        view.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.dismisser)))
        

        
        self.view.addSubview(self.goback)
        
        whatcommy.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.1, width: self.screenQ.width , height: self.screenQ.height * 0.1)
        
        whatcommy.clipsToBounds = true
        
        self.view.addSubview(self.whatcommy)
        
        self.talbeThings()
        
        tabpics = ["e1", "e2", "e3", "e4", "e5", "e6"]
        


        // Do any additional setup after loading the view.
    }
    
    
    
    func dismisser() {
        
        self.view.endEditing(true)
    }
    
    
    
    func talbeThings() {
        
        
        
        
        tblContent.frame = CGRect.init(x: 0, y: self.screenQ.height * 0.2, width: self.screenQ.width  , height: self.screenQ.height * 0.8 )
        
        
        
        
        
        tblContent.delegate = self
        
        tblContent.dataSource = self
        
        tblContent.rowHeight = self.screenQ.height * 0.15
        
         tblContent.allowsSelection = false
        
        tblContent.backgroundColor = UIColor.clear
        
        
        tblContent.separatorColor = UIColor.clear
        
        tblContent.showsVerticalScrollIndicator = false
        
        tblContent.showsHorizontalScrollIndicator = false
        
        tblContent.contentInset.top = self.screenQ.height * 0.03
        
        // tblContent.contentInset = UIEdgeInsetsMake(self.screenQ.height * 0.1, 0, 0, 0)
        
        self.tblContent.removeFromSuperview()
        
        self.view.addSubview(tblContent)
        
        
        
        

        
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
        
        
        
       
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: ComCell!
        
        cell = tableView.dequeueReusableCell(withIdentifier:"com", for: indexPath) as! ComCell
        
        
        cell.frame = CGRect.init(x: 0, y: 0, width: self.screenQ.width , height: self.screenQ.height * 0.2)
        
        cell.title.text = "Valeri Costilo"
        
        cell.thepic.image = UIImage.init(named: tabpics[indexPath.row])
        
        
        return cell
        
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

//
//  RecommendationViewController.swift
//  Ear
//
//  Created by Melody on 6/26/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit

class ResultVC: UIViewController {
    
    static var shared = ResultVC()
    
    //MARK: - Properties
    
    var mHeadImage = "\(Outfits.shared.mHead).png"
    var mTopImage = "\(Outfits.shared.mTop).png"
    var mTopAccImage = "\(Outfits.shared.mTopAcc).png"
    var mBottomImage = "\(Outfits.shared.mBottom).png"
    var mFootweaerImage = "\(Outfits.shared.mFootwear).png"
    var mFootAccImage = "\(Outfits.shared.mFootAcc).png"
    var mAccImage = "\(Outfits.shared.mAccessory).png"
    
    var fHeadImage = "\(Outfits.shared.fHead).png"
    var fTopImage = "\(Outfits.shared.fTop).png"
    var fTopAccImage = "\(Outfits.shared.fTopAcc).png"
    var fBottomImage = "\(Outfits.shared.fBottom).png"
    var fFootweaerImage = "\(Outfits.shared.fFootwear).png"
    var fFootAccImage = "\(Outfits.shared.fFootAcc).png"
    var fAccImage = "\(Outfits.shared.fAccessory).png"
    
    var bgImage = "\(WeatherDataService.shared.category).png"
    
    var mHeadArr = SwitchClothesService.shared.mHeads
    var mTopArr = SwitchClothesService.shared.mTops
    var mTopAccArr = SwitchClothesService.shared.mTopAccs
    var mBottomArr = SwitchClothesService.shared.mBottoms
    var mShoeArr = SwitchClothesService.shared.mShoes
    
    var fHeadArr = SwitchClothesService.shared.fHeads
    var fTopArr = SwitchClothesService.shared.fTops
    var fTopAccArr = SwitchClothesService.shared.fTopAccs
    var fBottomArr = SwitchClothesService.shared.fBottoms
    var fShoeArr = SwitchClothesService.shared.fShoes
    
    var selectedIndex = 0
    var changeTapCount = 0
    
    var mTopTapCount = 0
    var mTopAccTapCount = 0
    var mBottomTapCount = 0
    var mShoeTapCount = 0
    var mHeadTapCount = 0
    
    var fTopTapCount = 0
    var fTopAccTapCount = 0
    var fBottomTapCount = 0
    var fShoeTapCount = 0
    var fHeadTapCount = 0
    
    //MARK: - Outlets
    
    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var topAccImageView: UIImageView!
    @IBOutlet weak var bottomImageView: UIImageView!
    @IBOutlet weak var shoeImageView: UIImageView!
    @IBOutlet weak var accImageView: UIImageView!
    @IBOutlet weak var tempBGImageView: UIImageView!
    @IBOutlet weak var roomImageView: UIImageView!
    
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    
    //MARK: - Public Methods
    
    
    //MARK: - Private Methods
    
    
    //MARK: - Actions
    
    @IBAction func changeItemButtonTapped(_ sender: UITabBarItem) {
        changeTapCount += 1
        sender.title = "Done"
        
        genderSegmentedControl.isHidden = true
        topImageView.isUserInteractionEnabled = true
        bottomImageView.isUserInteractionEnabled = true
        headImageView.isUserInteractionEnabled = true
        shoeImageView.isUserInteractionEnabled = true
        
        roomImageView.image = UIImage(named: "resultBG.png")
        
        if changeTapCount % 2 == 0 {
            topImageView.isUserInteractionEnabled = false
            bottomImageView.isUserInteractionEnabled = false
            headImageView.isUserInteractionEnabled = false
            shoeImageView.isUserInteractionEnabled = false
            topAccImageView.isHidden = false
            genderSegmentedControl.isHidden = false
            
            roomImageView.image = UIImage(named: "roomBG.png")
            
            sender.title = "Change Outfit"
        }
    }

   

    @IBAction func topImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            mTopTapCount += 1
            
            if mTopTapCount >= mTopArr.count {
                mTopTapCount = 0
            }
            
            mTopImage = "\(mTopArr[mTopTapCount]).png"
            topImageView.image = UIImage(named: mTopImage)

        case 1:
            fTopTapCount += 1
            
            if fTopTapCount >= fTopArr.count {
                fTopTapCount = 0
            }
            
            fTopImage = "\(fTopArr[fTopTapCount]).png"
            topImageView.image = UIImage(named: fTopImage)
        default: break
        }
        
    }
    
    @IBAction func topAccImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            mTopAccTapCount += 1
            
            if mTopAccTapCount >= mTopAccArr.count {
                mTopAccTapCount = 0
            }
            
            mTopAccImage = "\(mTopAccArr[mTopAccTapCount]).png"
            topAccImageView.image = UIImage(named: mTopAccImage)
            
        case 1:
            fTopAccTapCount += 1
            
            if fTopAccTapCount >= fTopAccArr.count {
                fTopAccTapCount = 0
            }
            fTopAccImage = "\(fTopAccArr[fTopAccTapCount]).png"
            topAccImageView.image = UIImage(named: fTopAccImage)
            
        default: break
        }

    }
    
    
    @IBAction func bottomImgTapped(_ sender: UITapGestureRecognizer) {
        
        
        switch selectedIndex {
        case 0:
            mBottomTapCount += 1
            
            if mBottomTapCount >= mBottomArr.count {
                mBottomTapCount = 0
            }
            
            mBottomImage = "\(mBottomArr[mBottomTapCount]).png"
            bottomImageView.image = UIImage(named: mBottomImage)
        case 1:
            fBottomTapCount += 1
            
            if fBottomTapCount >= fBottomArr.count {
                fBottomTapCount = 0
            }
            fBottomImage = "\(fBottomArr[fBottomTapCount]).png"
            bottomImageView.image = UIImage(named: fBottomImage)
            
        default: break
        }
        
    }
    
    
    @IBAction func headImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            mHeadTapCount += 1
            
            if mHeadTapCount >= mHeadArr.count {
                mHeadTapCount = 0
            }
            
            mHeadImage = "\(mHeadArr[mHeadTapCount]).png"
            headImageView.image = UIImage(named: mHeadImage)
            
        case 1:
            fHeadTapCount += 1
            
            if fHeadTapCount >= fHeadArr.count {
                fHeadTapCount = 0
            }
            
            fHeadImage = "\(fHeadArr[fHeadTapCount]).png"
            headImageView.image = UIImage(named: fHeadImage)
            
        default: break
        }
        
    }
    
    @IBAction func shoeImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            mShoeTapCount += 1
            
            if mShoeTapCount >= mShoeArr.count {
                mShoeTapCount = 0
            }
            
            mFootweaerImage = "\(mShoeArr[mShoeTapCount]).png"
            shoeImageView.image = UIImage(named: mFootweaerImage)
            
        case 1:
            fShoeTapCount += 1
            
            if fShoeTapCount >= fShoeArr.count {
                fShoeTapCount = 0
            }
            
            fFootweaerImage = "\(fShoeArr[fShoeTapCount]).png"
            shoeImageView.image = UIImage(named: fFootweaerImage)
            
        default: break
        }
        
    }
    
    @IBAction func genderSelector(_ sender: Any) {
        selectedIndex = (sender as AnyObject).selectedSegmentIndex
        decideGender()
    }
    
    func decideGender() {
        switch selectedIndex {
        case 0:
            headImageView.image = UIImage(named: mHeadImage)
            topImageView.image = UIImage(named: mTopImage)
            topAccImageView.image = UIImage(named: mTopAccImage)
            bottomImageView.image = UIImage(named: mBottomImage)
            shoeImageView.image = UIImage(named: mFootweaerImage)
            accImageView.image = UIImage(named: mAccImage)
            
            print("Male")
        case 1:
            headImageView.image = UIImage(named: fHeadImage)
            topImageView.image = UIImage(named: fTopImage)
            topAccImageView.image = UIImage(named: fTopAccImage)
            bottomImageView.image = UIImage(named: fBottomImage)
            shoeImageView.image = UIImage(named: fFootweaerImage)
            accImageView.image = UIImage(named: fAccImage)
            
            print("Female")
            print("-----")
        default:
            break
        }

    }
    
    //MARK: - Override Methods
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        
//        Outfits.shared.getClothingCombo(WeatherData.shared)
//        Outfits.shared.printSetting()
//        
//        Outfits.shared.fGetClothingCombo(WeatherData.shared)
//        Outfits.shared.printSetting()
//        Outfits.shared.decideTemp()
//        self.decideGender()
//        
//
//        
//    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        selectedIndex = UserTemp.shared.gender
        
        Outfits.shared.getClothingCombo(WeatherData.shared)
        Outfits.shared.printSetting()
        
        Outfits.shared.fGetClothingCombo(WeatherData.shared)
        Outfits.shared.printSetting()
        Outfits.shared.decideTemp()
        self.decideGender()
        

        
        
        genderSegmentedControl.selectedSegmentIndex = selectedIndex
        genderSegmentedControl.layer.cornerRadius = 4
        let mask = CAShapeLayer()
        mask.frame = CGRect(x: 0, y: 0, width: genderSegmentedControl.bounds.width-1 , height: genderSegmentedControl.bounds.size.height);
        let maskPath = UIBezierPath(roundedRect: mask.frame,
                                    byRoundingCorners: [.bottomLeft, .bottomRight, .topLeft, .topRight],
                                    cornerRadii: CGSize(width: 4.0, height: 4.0))
        mask.path = maskPath.cgPath
        
        self.view.updateConstraintsIfNeeded()
        self.view.layoutIfNeeded()
        
        print("DF")
        roomImageView.image = UIImage(named: "roomBG.png")
        tempBGImageView.image = UIImage(named: bgImage)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        let topTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.topImgTapped(_:)))
        topTapRecognizer.numberOfTapsRequired = 1
        topTapRecognizer.numberOfTouchesRequired = 1
        topImageView.isUserInteractionEnabled = false
        topImageView.addGestureRecognizer(topTapRecognizer)
        
        let topAccTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.topAccImgTapped(_:)))
        topAccTapRecognizer.numberOfTapsRequired = 1
        topAccTapRecognizer.numberOfTouchesRequired = 1
        topAccImageView.isUserInteractionEnabled = false
        topAccImageView.addGestureRecognizer(topAccTapRecognizer)
        
        let bottomTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.bottomImgTapped(_:)))
        bottomTapRecognizer.numberOfTapsRequired = 1
        bottomTapRecognizer.numberOfTouchesRequired = 1
        bottomImageView.isUserInteractionEnabled = false
        bottomImageView.addGestureRecognizer(bottomTapRecognizer)
        
        let headTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.headImgTapped(_:)))
        headTapRecognizer.numberOfTapsRequired = 1
        headTapRecognizer.numberOfTouchesRequired = 1
        headImageView.isUserInteractionEnabled = false
        headImageView.addGestureRecognizer(headTapRecognizer)

        let shoeTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.shoeImgTapped(_:)))
        shoeTapRecognizer.numberOfTapsRequired = 1
        shoeTapRecognizer.numberOfTouchesRequired = 1
        shoeImageView.isUserInteractionEnabled = false
        shoeImageView.addGestureRecognizer(shoeTapRecognizer)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        //self.topImageView.gestureRecognizers?.forEach(topImageView.removeGestureRecognizer)
       // self.bottomImageView.gestureRecognizers?.removeAll()
       //bottomImageView.gestureRecognizers?.forEach(bottomImageView.removeGestureRecognizer)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    

    
}

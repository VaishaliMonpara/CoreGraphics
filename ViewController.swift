//
//  ViewController.swift
//  CoreGraphicsDemo
//
//  Created by MAC0001 on 31/03/20.
//  Copyright © 2020 MAC0001. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var view1: UIView!
  @IBOutlet weak var view2: UIView!
  @IBOutlet weak var view3: UIView!
  @IBOutlet weak var view4: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view1.roundCornerTopLeft(cornerRadius: 40)
    view2.roundCornerTopRight(cornerRadius: 40)
    view3.roundCornerBottomLeft(cornerRadius: 40)
    view4.roundCornerBottomRight(cornerRadius: 40)
  }


}


extension UIView {
  
  //    TopLeft (layerMinXMinYCorner) = 1
  //    TopRight (layerMaxXMinYCorner) = 2
  //    BottomLeft (layerMinXMaxYCorner) = 4
  //    BottomRight (layerMaxXMaxYCorner) = 8
  
  func roundCornerTopLeft(cornerRadius: CGFloat)
  {
    self.layer.cornerRadius = cornerRadius
    self.layer.maskedCorners = [.layerMinXMinYCorner]
  }
  
  func roundCornerTopRight(cornerRadius: CGFloat)
  {
    self.layer.cornerRadius = cornerRadius
    self.layer.maskedCorners = [.layerMaxXMinYCorner]
  }
  
  func roundCornerBottomLeft(cornerRadius: CGFloat)
  {
    self.layer.cornerRadius = cornerRadius
    self.layer.maskedCorners = [.layerMinXMaxYCorner]
  }
  
  func roundCornerBottomRight(cornerRadius: CGFloat)
  {
    self.layer.cornerRadius = cornerRadius
    self.layer.maskedCorners = [.layerMaxXMaxYCorner]
  }
}

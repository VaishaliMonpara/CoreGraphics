# CoreGraphics
CoreGraphics Demo

1. Only side Round Coner

  //    TopLeft (layerMinXMinYCorner) = 1
  
  //    TopRight (layerMaxXMinYCorner) = 2
  
  //    BottomLeft (layerMinXMaxYCorner) = 4
  
  //    BottomRight (layerMaxXMaxYCorner) = 8
  
  //Top Left Corner Rounded
 
 extension UIView {
  
    func roundCornerTopLeft(cornerRadius: CGFloat)
    {
      self.layer.cornerRadius = cornerRadius
      self.layer.maskedCorners = [.layerMinXMinYCorner]

    }
  }
  
 2. You can also round corner two side

  extension UIView {
  
    func roundCornerTopLeftandTopRight(cornerRadius: CGFloat)
    {
      self.layer.cornerRadius = cornerRadius
      self.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]

    }
  }

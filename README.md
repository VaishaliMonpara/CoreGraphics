# CoreGraphics
CoreGraphics Demo

1. Only side Round Coner

  //    TopLeft (layerMinXMinYCorner) = 1
  //    TopRight (layerMaxXMinYCorner) = 2
  //    BottomLeft (layerMinXMaxYCorner) = 4
  //    BottomRight (layerMaxXMaxYCorner) = 8
  
  //Top Left Corner Rounded
 func roundCornerTopLeft(cornerRadius: CGFloat)
  {
    self.layer.cornerRadius = cornerRadius
    self.layer.maskedCorners = [.layerMinXMinYCorner]
  }
  
  - you can also round corner two side
  
  func roundCornerTopLeftandTopRight(cornerRadius: CGFloat)
  {
    self.layer.cornerRadius = cornerRadius
    self.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
  }
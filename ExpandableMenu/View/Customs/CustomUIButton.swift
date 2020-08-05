//
//  CustomUIButton.swift
//  ExpandableMenu
//
//  Created by Lucas Lombard on 05/08/2020.
//  Copyright © 2020 Lucas Lombard. All rights reserved.
//

import UIKit
import FontAwesome_swift

class CustomUIButton: UIButton {

  // MARK: - Methods
  override init(frame: CGRect) {
    super.init(frame: frame)
    setCorner()
  }
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setCorner()
  }

  /// This method sets corner radius and background color
  func setCorner() {
    self.backgroundColor = .lightGray
    self.layer.cornerRadius = frame.size.height / 2
    self.clipsToBounds = false
  }

  // MARK: - These following methods manage menu button's design
  /// This method sets design of oppening menu
  func setOpenMenuBTN() {
    self.titleLabel?.font = .fontAwesome(ofSize: 16, style: .solid)
    self.setTitle(.fontAwesomeIcon(name: .arrowDown), for: .normal)
    self.tintColor = .black
  }

  /// This method sets design of closing menu
  func setCloseMenuBTN() {
    self.titleLabel?.font = .fontAwesome(ofSize: 16, style: .solid)
    self.setTitle(.fontAwesomeIcon(name: .arrowUp), for: .normal)
    self.tintColor = .black
  }
}

//
//  AnimateMenu.swift
//  ExpandableMenu
//
//  Created by Lucas Lombard on 05/08/2020.
//  Copyright © 2020 Lucas Lombard. All rights reserved.
//

import Foundation
import UIKit

// MARK: - This class manage animation of menu's action
class AnimateMenu {

  // MARK: - Methods
  /// This methood manage opening view animation
  func openAnime(view: UIView, btnOp: UIButton, btnCl: UIButton) {
    UIView.animate(withDuration: 0.5, animations: {
      view.isHidden = false
      btnOp.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
    }) { (_) in
      UIView.animate(withDuration: 0.5) {
        view.alpha = 1
      }
      btnCl.isHidden = false
      btnOp.transform = CGAffineTransform.identity
      btnOp.isHidden = true
    }
  }

  /// This method manage closing view animation
  func closeAnime(view: UIView, btnCl: UIButton, btnOp: UIButton) {
    UIView.animate(withDuration: 0.5, animations: {
      view.alpha = 0
      btnCl.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
    }) { (_) in
      UIView.animate(withDuration: 0.5) {
        view.isHidden = true
      }
      btnOp.isHidden = false
      btnCl.transform = CGAffineTransform.identity
      btnCl.isHidden = true
    }
  }

}

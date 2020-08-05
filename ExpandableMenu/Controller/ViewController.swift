//
//  ViewController.swift
//  ExpandableMenu
//
//  Created by Lucas Lombard on 05/08/2020.
//  Copyright © 2020 Lucas Lombard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  // MARK: - Properties
  let animateMenu = AnimateMenu()

  // MARK: - Outlets
  /// View One
  @IBOutlet weak var openOne: CustomUIButton!
  @IBOutlet weak var closeOne: CustomUIButton!
  @IBOutlet weak var viewOne: UIView!
  /// View Two
  @IBOutlet weak var openTwo: CustomUIButton!
  @IBOutlet weak var closeTwo: CustomUIButton!
  @IBOutlet weak var viewTwo: UIView!
  /// View Three
  @IBOutlet weak var openThree: CustomUIButton!
  @IBOutlet weak var closeThree: CustomUIButton!
  @IBOutlet weak var viewThree: UIView!

  // MARK: - Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    setButtonDesign()
    setViewAtFirst()
  }
}

// MARK: - This extension manage // MENU \\
extension ViewController {

  // MARK: - Action
  /// This action manage opening menu
  @IBAction func openMenuAction(_ sender: CustomUIButton) {
    switch sender.tag {
    case 0: animateMenu.openAnime(view: viewOne, btnOp: openOne, btnCl: closeOne)
    case 1: animateMenu.openAnime(view: viewTwo, btnOp: openTwo, btnCl: closeTwo)
    case 2: animateMenu.openAnime(view: viewThree, btnOp: openThree, btnCl: closeThree)
    default: print("Error: switch sender.tag opening menu failed.")
    }
  }

  /// This action manage closing menu
  @IBAction func closeMenuAction(_ sender: CustomUIButton) {
    switch sender.tag {
    case 0: animateMenu.closeAnime(view: viewOne, btnCl: closeOne, btnOp: openOne)
    case 1: animateMenu.closeAnime(view: viewTwo, btnCl: closeTwo, btnOp: openTwo)
    case 2: animateMenu.closeAnime(view: viewThree, btnCl: closeThree, btnOp: openThree)
    default: print("Error: switch sender.tag closing menu failed.")
    }
  }
}

// MARK: - This extension manage // DESIGN \\
extension ViewController {

  // MARK: - Methods
  /// This method sets buttons design
  func setButtonDesign() {
    openOne.setOpenMenuBTN()
    openTwo.setOpenMenuBTN()
    openThree.setOpenMenuBTN()
    closeOne.setCloseMenuBTN()
    closeTwo.setCloseMenuBTN()
    closeThree.setCloseMenuBTN()
  }

  /// This methods manage view's appereance
  func setViewAtFirst() {
    viewOne.isHidden = true
    viewOne.alpha = 0
    viewTwo.isHidden = true
    viewTwo.alpha = 0
    viewThree.isHidden = true
    viewThree.alpha = 0
  }
}

//
//  UIViewCustomizing.swift
//  iOS-QuakeReport
//
//  Created by Marty Hernandez Avedon on 11/28/17.
//  Copyright © 2017 Marty Hernandez Avedon. All rights reserved.
//
import UIKit

protocol UIViewCustomizing {
    func initializeViews() -> Void
    func setUpHierarchyFor(views: UIView..., parent: UIView) -> Void
    func prepareToConstrain(views: UIView...) -> Void
    func apply(constraints: [NSLayoutConstraint]) -> Void
    func style(views: UIView...) -> Void
}

extension UIViewCustomizing {
    func setUpHierarchyFor(views: UIView..., parent: UIView) -> Void {
        for view in views {
            parent.addSubview(view)
        }
    }
    
    func prepareToConstrain(views: UIView...) -> Void {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    func apply(constraints: [NSLayoutConstraint]) {
        NSLayoutConstraint.activate(constraints)
    }
}

//
//  ViewController.swift
//  TinkBank
//
//  Created by Данил Габдуллин on 21.05.2024.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        let action = UIAction { _ in
            let controller = UIHostingController(rootView: SwiftUIView())
            self.show(controller, sender: nil)
        }
        
        let button = UIButton(configuration: .bordered(), primaryAction: action)
        button.setTitle("Show", for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}


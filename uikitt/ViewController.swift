//
//  ViewController.swift
//  uikitt
//
//  Created by Uladzislau Komar on 20.02.24.
//

import UIKit

class ViewController: UIViewController {

    let label: UILabel = {
        let label = UILabel()
        label.text = "Hello world"
        label.textColor = .white
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)

        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}


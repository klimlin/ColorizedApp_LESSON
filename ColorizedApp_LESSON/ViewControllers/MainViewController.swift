//
//  MainViewController.swift
//  ColorizedApp_LESSON
//
//  Created by MAcbook on 19.11.2022.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? ColorViewController else { return }
        colorVC.viewColor = view.backgroundColor
        colorVC.delegate = self
    }

}

// MARK: - ColorDelegate

extension MainViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

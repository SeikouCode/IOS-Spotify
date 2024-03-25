//
//  AlbumDetailsViewController.swift
//  Spotify
//
//  Created by Aneli  on 25.03.2024.
//

import UIKit

class AlbumDetailsViewController: BaseViewController {

    var albumId: String?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupGradient()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        baseSetupNavigationBar()
    }
    
    private func setupGradient() {
        let firstColor = UIColor(
            red: 0.0/255.0,
            green: 128.0/255.0,
            blue: 174.0/255.0,
            alpha: 1
        ).cgColor
        
        let secondColor = UIColor.black.cgColor
        let gradient = CAGradientLayer()
        gradient.colors = [firstColor, secondColor]
        gradient.locations = [0.0, 0.4]
        gradient.type = .axial
        gradient.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradient, at: 0)
    }
}
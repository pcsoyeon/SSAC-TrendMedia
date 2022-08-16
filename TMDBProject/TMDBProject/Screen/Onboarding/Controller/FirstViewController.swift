//
//  FirstViewController.swift
//  TMDBProject
//
//  Created by 소연 on 2022/08/16.
//

import UIKit

import SokyteUIFramework

final class FirstViewController: UIViewController {
    
    // MARK: - UI Property
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Custom Method
    
    private func configureUI() {
        view.backgroundColor = .black
        configureLabel()
        configureImageView()
    }
    
    private func configureLabel() {
        titleLabel.text = "트렌드를 한눈에"
        titleLabel.textColor = .white
        
        descriptionLabel.text = """
                                최근 유행하는 예능이 무엇일까요?
                                요즘 영화관에서 사람들이 많이 찾는 영화는 무엇일까요?
                                트렌드 미디어 정보를 한눈에 알아보아요!
                                """
        descriptionLabel.textColor = .white
    }
    
    private func configureImageView() {
        imageView.image = UIImage(named: " ")
    }
    
    private func configureButton() {
        
    }
    
    // MARK: - IBAction
    
    @IBAction func touchUpSkipButton(_ sender: UIButton) {
        
    }
    
    @IBAction func touchUpNextButton(_ sender: UIButton) {
        
    }
}

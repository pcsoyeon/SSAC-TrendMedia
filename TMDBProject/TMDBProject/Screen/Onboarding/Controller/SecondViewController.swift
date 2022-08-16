//
//  SecondViewController.swift
//  TMDBProject
//
//  Created by 소연 on 2022/08/16.
//

import UIKit

class SecondViewController: UIViewController {

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
        configureButton()
    }
    
    private func configureLabel() {
        titleLabel.text = "영화/드라마/예능 모든 정보를!"
        titleLabel.textColor = .white
        
        descriptionLabel.text = """
                                영화, 드라마 뿐만 아니라 예능까지
                                모든 미디어 정보를 확인할 수 있어요
                                """
        descriptionLabel.textColor = .white
    }
    
    private func configureImageView() {
        imageView.image = UIImage(named: " ")
    }
    
    private func configureButton() {
        skipButton.setTitle("넘기기", for: .normal)
        skipButton.setTitleColor(.white, for: .normal)
        
        skipButton.layer.cornerRadius = 10
        skipButton.clipsToBounds = true
        skipButton.backgroundColor = .orange
        
        nextButton.setTitle("다음", for: .normal)
        nextButton.setTitleColor(.white, for: .normal)
        
        nextButton.layer.cornerRadius = 10
        nextButton.clipsToBounds = true
        nextButton.backgroundColor = .systemMint
    }
    
    // MARK: - IBAction
    
    @IBAction func touchUpSkipButton(_ sender: UIButton) {
        
    }
    
    @IBAction func touchUpNextButton(_ sender: UIButton) {
        
    }
}

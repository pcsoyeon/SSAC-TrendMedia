//
//  ThirdViewController.swift
//  TMDBProject
//
//  Created by 소연 on 2022/08/16.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
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
        titleLabel.text = "미디어의 자세한 정보까지!"
        titleLabel.textColor = .white
        
        descriptionLabel.text = """
                                각 미디어는 누가 연출했을까요?
                                어떤 사람이 연기했을까요?
                                모든 정보를 알아볼 수 있어요!
                                """
        descriptionLabel.textColor = .white
    }
    
    private func configureImageView() {
        imageView.image = UIImage(named: " ")
    }
    
    private func configureButton() {
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
        let storyboard = UIStoryboard(name: Constant.Storyboard.Main, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: MainViewController.reuseIdentifier) as? MainViewController else { return }
        viewController.modalTransitionStyle = .crossDissolve
        viewController.modalPresentationStyle = .overFullScreen
        present(viewController, animated: true)
    }
}

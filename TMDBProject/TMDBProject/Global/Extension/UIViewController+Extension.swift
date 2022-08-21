//
//  UIViewController+Extension.swift
//  TMDBProject
//
//  Created by 소연 on 2022/08/21.
//

import UIKit

extension UIViewController {
    
    // MARK: - Style
    
    enum ViewTransitionStyle {
        case push
        case present
    }
    
    // MARK: - Method
    
    func transitionViewController<T: UIViewController>(storyboardName: String,
                                                       viewController: T,
                                                       transitionStyle: ViewTransitionStyle) {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: viewController)) as? T else { return }
        
        switch transitionStyle {
        case .push:
            self.navigationController?.pushViewController(viewController, animated: true)
        case .present:
            viewController.modalPresentationStyle = .fullScreen
            self.present(viewController, animated: true)
        }
    }
}

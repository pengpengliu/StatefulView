//
//  CALayer+State.swift
//  StatefulView
//
//  Created by Liu Pengpeng on 2018/9/8.
//

import UIKit

extension UIView {
    public static var loading: UIView {
        let loading = UIActivityIndicatorView(activityIndicatorStyle: .white)
        loading.startAnimating()
        return loading
    }
    
    public static var empty: UIView {
        let v = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 50)))
        v.text = "No data."
        v.textAlignment = .center
        return v
    }
    
    public static var error: UIView {
        let v = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 50)))
        v.text = "Oh no!"
        v.textAlignment = .center
        return v
    }
}

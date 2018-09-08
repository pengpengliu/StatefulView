//
//  Stateful.swift
//  StatefulView
//
//  Created by Liu Pengpeng on 2018/9/7.
//

private enum AssociatedKeys {
    static var mask = "mask"
}

public enum State {
    case none
    case mask(UIView)
    case custom(() -> Void)
}

public extension UIView {
    func stateful(for state: State) {
        mask?.removeFromSuperview()
        switch state {
        case .none:
            subviews.forEach { if($0 != mask) { $0.layer.opacity = 1 } }
        case .mask(let mask):
            self.mask = mask
            subviews.forEach { if($0 != mask) { $0.layer.opacity = 0 } }
            
            mask.isUserInteractionEnabled = true
            mask.center = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
            insertSubview(mask, at: Int.max)
        case .custom(let f):
            f()
        }
    }
}

extension UIView {
    var mask: UIView? {
        get { return objc_getAssociatedObject(self, &AssociatedKeys.mask) as? UIView }
        set { objc_setAssociatedObject(self, &AssociatedKeys.mask, newValue, AssociationPolicy.retain.objc) }
    }
}

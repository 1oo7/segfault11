import UIKit

@objc public protocol Fooy {
    @objc var contentNavigationController: UINavigationController? { get }
    @objc var mainPresentationController: UIViewController { get }
    
    @objc optional func willPushOnContentNavigation(animated: Bool, completion: @escaping (Bool) -> Void)
    @objc optional func willPopLastFromContentNavigation(animated: Bool, completion: @escaping (Bool) -> Void)
    
    @objc func transactionForTransactionData(_ data: NSData) -> NSData?
    
    @objc func showHomepage(_ showHomepage: Bool, animated: Bool, completion: @escaping () -> Void)
}

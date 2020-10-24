//
//  MockQux.swift
//  QuxTests
//
//  Created by 1oo7 on 10/23/20.
//

import XCTest
import Foo

class MockQux: Qux {
    public var contentNavigationController: UINavigationController? = UINavigationController()
    public var mainPresentationController: UIViewController = UIViewController()
    
    func transactionForTransactionData(_ data: NSData) -> NSData? {
        return nil
    }
    
    func showHomepage(_ showHomepage: Bool, animated: Bool, completion: () -> Void) {
        if (contentNavigationController != nil) {
            contentNavigationController?.dismiss(animated: false, completion: nil)
        }
        completion()
    }
    
    // called when a transaction is involed with the content navigation controller.
    // delegate should call completion with a flag that indicates whether the
    // content navigation push/pop should be animated or not
    func willPushOnContentNavigationWithCompletion(_ completion: (Bool) -> Void) {
        completion(false)
    }
    
    func willPopLastFromContentNavigationWithCompletion(_ completion: (Bool) -> Void) {
        completion(false)
    }
}


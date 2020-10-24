//
//  BaseTestCase.m
//  Bar
//
//  Created by 1oo7 on 10/23/20.
//

#import "BaseTestCase.h"
@import UIKit;

@implementation BaseTestCase {
    UINavigationController *_contentController;
    UIViewController *_baseViewController;

}

- (UINavigationController *)contentNavigationController {
    return _contentController;
}

- (UIViewController *)mainPresentationController
{
    return _baseViewController;
}

- (void)willPushOnContentNavigationWithCompletion:(void (^)(BOOL))completion
{
    completion(NO);
}

- (void)willPopLastFromContentNavigationWithCompletion:(void (^)(BOOL))completion
{
    completion(NO);
}

- (NSData *)transactionForTransactionData:(NSData *)data {
    return nil;
}

- (void)showHomepage:(BOOL)showHomepage animated:(BOOL)animated completion:(SWIFT_NOESCAPE void (^ _Nonnull)(void))completion {
    if (_contentController) {
        [_contentController dismissViewControllerAnimated:NO completion:nil];
    }
    completion();
}

@end

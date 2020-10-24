//
//  BaseTestCase.h
//  Bar
//
//  Created by 1oo7 on 10/23/20.
//

#import <XCTest/XCTest.h>
@import Foo;
@import FBSnapshotTestCase;


NS_ASSUME_NONNULL_BEGIN

@interface BaseTestCase : FBSnapshotTestCase<Fooy>

@property NSNumber *time;

@end

NS_ASSUME_NONNULL_END

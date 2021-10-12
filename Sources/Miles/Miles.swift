//
//  Miles.swift
//  Miles
//
//  Created by Scott Petit on 2/16/15.
//  Copyright (c) 2015 Hecho. All rights reserved.
//

import XCTest
import Foundation

public extension Equatable {
    func shouldEqual(_ other: Self, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to equal \(other)"
        XCTAssertEqual(self, other, message, file: file, line: line)
    }

    func shouldEqual(_ other: Self?, file: StaticString = #file, line: UInt = #line) {
        guard let other = other else {
            XCTFail("Expected other to be Non nil")
            return
        }
        shouldEqual(other, file: file, line: line)
    }
}

public extension Comparable {
    func shouldBeGreaterThan(_ other: Self, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be greater than \(other)"
        XCTAssertGreaterThan(self, other, message, file: file, line: line)
    }

    func shouldBeGreaterThanOrEqual(to other: Self, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be greater than or equal to \(other)"
        XCTAssertGreaterThanOrEqual(self, other, message, file: file, line: line)
    }

    func shouldBeLessThan(_ other: Self, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be less than \(other)"
        XCTAssertLessThan(self, other, message, file: file, line: line)
    }

    func shouldBeLessThanOrEqual(to other: Self, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be less than or Equal to \(other)"
        XCTAssertLessThanOrEqual(self, other, message, file: file, line: line)
    }
}

public extension FloatingPoint {
    func shouldBeClose(to other: Self, withAccuracy accuracy: Self, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be within \(accuracy) of \(other)"
        XCTAssertEqual(self, other, accuracy: accuracy, message, file: file, line: line)
    }
}

public extension String {
    func shouldContain(_ string: String, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to contain \(string)"
        XCTAssertTrue(self.range(of: string) != nil, message, file: file, line: line)
    }

    func shouldNotContain(_ string: String, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to NOT contain \(string)"
        XCTAssertTrue(self.range(of: string) == nil, message, file: file, line: line)
    }

    func shouldHavePrefix(_ string: String, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to have a prefix of \(string)"
        XCTAssertTrue(self.hasPrefix(string), message, file: file, line: line)
    }

    func shouldHaveSuffix(_ string: String, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to have a suffix of \(string)"
        XCTAssertTrue(self.hasSuffix(string), message, file: file, line: line)
    }
}

public extension Bool {
    func shouldBeTrue(_ file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be true"
        XCTAssertTrue(self, message, file: file, line: line)
    }

    func shouldBeFalse(_ file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be false"
        XCTAssertFalse(self, message, file: file, line: line)
    }
}

public extension NSObject {
    func shouldEqual(_ object: NSObject, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to equal \(object)"
        XCTAssertEqual(self, object, message, file: file, line: line)
    }

    func shouldNotEqual(_ object: NSObject, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to not equal \(object)"
        XCTAssertNotEqual(self, object, message, file: file, line: line)
    }

    func shouldBeIdentical(to object: NSObject, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be identical to \(object))"
        XCTAssertTrue(self === object, message, file: file, line: line)
    }

    #if !os(Linux)
    func shouldBeMemberOf(class aClass: AnyClass, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be member of Class \(aClass)"
        XCTAssertTrue(self.isMember(of: aClass), message, file: file, line: line)
    }

    func shouldBeKindOf(class aClass: AnyClass, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be kind of Class \(aClass)"
        XCTAssertTrue(self.isKind(of: aClass), message, file: file, line: line)
    }
    #endif
}

public extension Sequence where Iterator.Element: Equatable {
    func shouldContain(_ item: Self.Iterator.Element, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to contain \(item)"
        let contains = self.contains(item)
        XCTAssertTrue(contains, message, file: file, line: line)
    }

    func shouldNotContain(_ item: Self.Iterator.Element, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to NOT contain \(item)"
        let contains = self.contains(item)
        XCTAssertFalse(contains, message, file: file, line: line)
    }
}

public extension Collection {
    func shouldBeEmpty(_ file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be empty"
        XCTAssertTrue(isEmpty, message, file: file, line: line)
    }
}

public extension Dictionary where Value: Equatable {
    func shouldContain(_ item: Value, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to contain \(item)"
        let contains = self.contains { (_, value) -> Bool in
            value == item
        }
        XCTAssertTrue(contains, message, file: file, line: line)
    }

    func shouldNotContain(_ item: Value, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to NOT contain \(item)"
        let contains = self.contains { (_, value) -> Bool in
            value == item
        }
        XCTAssertFalse(contains, message, file: file, line: line)
    }
}

public extension Optional {
    func shouldBeNil(_ file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(String(describing: self)) to be nil"
        switch self {
        case .some:
            XCTAssertTrue(false, message, file: file, line: line)
        case .none:
            XCTAssertTrue(true, message, file: file, line: line)
        }
    }

    func shouldNotBeNil(_ file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(String(describing: self)) to not be nil"
        switch self {
        case .some:
            XCTAssertTrue(true, message, file: file, line: line)
        case .none:
            XCTAssertTrue(false, message, file: file, line: line)
        }
    }
}

public extension Optional where Wrapped: Equatable {
    func shouldEqual(_ other: Wrapped, file: StaticString = #file, line: UInt = #line) {
        switch self {
        case (.some(let left)):
            let message = "Expected \(left) to equal \(other)"
            XCTAssertEqual(self, other, message, file: file, line: line)
        default:
            XCTFail("Exepcted \(String(describing: self)) to equal \(String(describing: other))", file: file, line: line)
        }
    }

    func shouldEqual(_ other: Wrapped?, file: StaticString = #file, line: UInt = #line) {
        switch (self, other) {
        case (.some(let left), .some(let right)):
            let message = "Expected \(left) to equal \(right)"
            XCTAssertEqual(self, right, message, file: file, line: line)
        case (.none, .none):
            let message = "Expected nil to equal nil"
            XCTAssertTrue(true, message, file: file, line: line)
        default:
            XCTFail("Exepcted \(String(describing: self)) to equal \(String(describing: other))", file: file, line: line)
        }
    }
}

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
    public func shouldEqual<T: Equatable>(_ other: T, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to equal \(other)"
        if let other = other as? Self {
            XCTAssertEqual(self, other, message, file: file, line: line)
        } else {
            XCTAssertTrue(false, message, file: file, line: line)
        }
    }
}

public extension Comparable {
    public func shouldBeGreaterThan<T: Comparable>(_ other: T, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be greater than \(other)"
        if let other = other as? Self {
            XCTAssertGreaterThan(self, other, message)
        } else {
            XCTAssertTrue(false, message)
        }
    }

    public func shouldBeGreaterThanOrEqual<T: Comparable>(to other: T, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be greater than or equal to \(other)"
        if let other = other as? Self {
            XCTAssertGreaterThanOrEqual(self, other, message)
        } else {
            XCTAssertTrue(false, message)
        }
    }

    public func shouldBeLessThan<T: Comparable>(_ other: T, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be less than \(other)"
        if let other = other as? Self {
            XCTAssertLessThan(self, other, message)
        } else {
            XCTAssertTrue(false, message)
        }
    }

    public func shouldBeLessThanOrEqual<T: Comparable>(to other: T, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be less than or Equal to \(other)"
        if let other = other as? Self {
            XCTAssertLessThanOrEqual(self, other, message)
        } else {
            XCTAssertTrue(false, message)
        }
    }
}

public extension FloatingPoint {
    public func shouldBeClose<T: FloatingPoint>(to other: T, withAccuracy accuracy: T, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be within \(accuracy) of \(other)"
        if let other = other as? Self, let accuracy = accuracy as? Self {
            XCTAssertEqualWithAccuracy(self, other, accuracy: accuracy, message, file: file, line: line)
        } else {
            XCTAssertTrue(false, message)
        }
    }
}

public extension String {
    public func shouldContain(_ string: String, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to contain \(string)"
        XCTAssertTrue(self.range(of: string) != nil, message, file: file, line: line)
    }

    public func shouldHavePrefix(_ string: String, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to have a prefix of \(string)"
        XCTAssertTrue(self.hasPrefix(string), message, file: file, line: line)
    }

    public func shouldHaveSuffix(_ string: String, file: StaticString = #file, line: UInt = #line) {
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

public extension Collection where Iterator.Element : Equatable {
    func shouldContain(_ item: Self.Iterator.Element, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to contain \(item)"
        var contains = false

        if let _ = index(of: item) {
            contains = true
        }
        XCTAssertTrue(contains, message, file: file, line: line)
    }
}

public extension Collection {
    func shouldBeEmpty(_ file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be empty"
        XCTAssertTrue(isEmpty, message, file: file, line: line)
    }
}

public extension Dictionary where Value : Equatable {
    func shouldContain(_ item: Value, file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to contain \(item)"
        var contains = false

        for value in values {
            if value == item {
                contains = true
                break
            }
        }
        XCTAssertTrue(contains, message, file: file, line: line)
    }
}

public extension Optional {
    public func shouldBeNil(_ file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to be nil"
        switch self {
        case .some(_):
            XCTAssertTrue(false, message, file: file, line: line)
        case .none:
            XCTAssertTrue(true, message, file: file, line: line)
        }
    }

    public func shouldNotBeNil(_ file: StaticString = #file, line: UInt = #line) {
        let message = "Expected \(self) to not be nil"
        switch self {
        case .some(_):
            XCTAssertTrue(true, message, file: file, line: line)
        case .none:
            XCTAssertTrue(false, message, file: file, line: line)
        }
    }
}

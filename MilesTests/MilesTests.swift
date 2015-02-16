//
//  MilesTests.swift
//  MilesTests
//
//  Created by Scott Petit on 2/16/15.
//  Copyright (c) 2015 Tastemade. All rights reserved.
//

import Foundation
import XCTest

class StringTests: XCTestCase {
    
    let string = "Darius Miles"
    
    func testThatDariusMilesShouldEqualDariusMiles() {
        let name = "Darius Miles"
        string.shouldEqual(name)
    }
    
    func testThatContainsIsTrueWhenPassingPartOfString() {
        let darius = "Darius"
        string.shouldContain(darius)
    }
    
    func testThatStringShouldHaveDarPrefix() {
        let prefix = "Dar"
        string.shouldHavePrefix(prefix)
    }
    
    func testThatStringHasLesSuffix() {
        let suffix = "les"
        string.shouldHaveSuffix(suffix)
    }
}

class CharacterTests: XCTestCase {
    let character: Character = "A"
    
    func testThatAEqualsA() {
        character.shouldEqual("A")
    }
}

class IntTests: XCTestCase {
    let number = 42
    
    func testThat42ShouldEqual42() {
        number.shouldEqual(42)
    }
    
    func testThat42IsGreaterThan41() {
        number.shouldBeGreaterThan(41)
    }
    
    func testThat42IsLessThan43() {
        number.shouldBeLessThan(43)
    }
    
    func testThat42ShouldBeGreaterThaOrEqualTo42() {
        42.shouldBeGreaterThanOrEqualTo(number)
    }
    
    func testThat41ShouldBeLessThanOrEqualTo42() {
        41.shouldBeLessThanOrEqualTo(number)
    }
}

class FloatTests: XCTestCase {
    let number: Float = 42
    
    func testThat42ShouldEqual42() {
        number.shouldEqual(42)
    }
    
    func testThat42IsGreaterThan41() {
        number.shouldBeGreaterThan(41)
    }
    
    func testThat42IsLessThan43() {
        number.shouldBeLessThan(43)
    }
    
    func testThat42ShouldBeGreaterThaOrEqualTo42() {
        let fortyTwo: Float = 42
        fortyTwo.shouldBeGreaterThanOrEqualTo(number)
    }
    
    func testThat41ShouldBeLessThanOrEqualTo42() {
        let fortyOne: Float = 41
        fortyOne.shouldBeLessThanOrEqualTo(number)
    }
    
    func testThat45ShouldBeCloseTo42With3Accuracy() {
        number.shouldBeCloseTo(45, withAccuracy: 3)
    }
}

class DoubleTests: XCTestCase {
    let number: Double = 42
    
    func testThat42ShouldEqual42() {
        number.shouldEqual(42)
    }
    
    func testThat42IsGreaterThan41() {
        number.shouldBeGreaterThan(41)
    }
    
    func testThat42IsLessThan43() {
        number.shouldBeLessThan(43)
    }
    
    func testThat42ShouldBeGreaterThaOrEqualTo42() {
        let fortyTwo: Double = 42
        fortyTwo.shouldBeGreaterThanOrEqualTo(number)
    }
    
    func testThat41ShouldBeLessThanOrEqualTo42() {
        let fortyOne: Double = 41
        fortyOne.shouldBeLessThanOrEqualTo(number)
    }
    
    func testThat41ShouldBeCloseTo42With3Accuracy() {
        number.shouldBeCloseTo(41, withAccuracy: 1)
    }
}

class BoolTests: XCTestCase {
    func testThatFivePlusFiveShouldBeTrue() {
        let hopefullyTrue = (5 + 5 == 10)
        hopefullyTrue.shouldBeTrue()
    }
    
    func testThat2Plus2Equals5ShouldBeFalse() {
        let hopefullyFalse = (2 + 2 == 5)
        hopefullyFalse.shouldBeFalse()
    }
}

class NSObjectTests: XCTestCase {
    func testShouldEqual() {
        let six = NSNumber(integer: 6)
        let threePlusThree = NSNumber(integer: 3+3)
        
        six.shouldEqual(threePlusThree)
    }
    
    func testShouldNotEqual() {
        let five = NSString(format: "five")
        let four = NSString(format: "4")
        
        five.shouldNotEqual(four)
    }
    
    func testShouldNotBeNil() {
        let string = NSString(format: "I'm Not Nil")
        string.shouldNotBeNil()
    }
    
    func testShouldBeIdenticalTo() {
        let five = NSNumber(integer: 5)
        let anotherFive = five
        
        five.shouldBeIdenticalTo(anotherFive)
    }
    
    func testShouldBeKindOfClass() {
        let date = NSDate()
        date.shouldBeKindOfClass(NSDate.classForCoder())
    }
}

class ArrayTests: XCTestCase {
    func testShouldBeEmpty() {
        let emptyArray = [Float]()
        emptyArray.shouldBeEmpty()
    }
    
    func testShouldContain() {
        let array = [1, 2, 3, 4, 5]
        array.shouldContain(1)
    }
}

class DictionaryTests: XCTestCase {
    func testShouldBeEmpty() {
        let emptyDictionary = [Int : String]()
        emptyDictionary.shouldBeEmpty()
    }
    
    func testShouldContain() {
        let dictionary = [1 : "one", 2 : "two"]
        dictionary.shouldContain("one")
    }
}

class OptionalTests: XCTestCase {
    func testShouldBeNil() {
        let optionalString: String? = nil
        optionalString.shouldBeNil()
    }
    
    func testShouldNotBeNil() {
        let optionalString: String? = "I'm a real string"
        optionalString.shouldNotBeNil()
    }
}

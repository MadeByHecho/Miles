//
//  MilesTests.swift
//  MilesTests
//
//  Created by Scott Petit on 11/21/15.
//  Copyright © 2015 Tastemade. All rights reserved.
//

import XCTest
@testable import Miles

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

    func testThatDoesNotContainIsTrueWhenPassingPartOfString() {
        string.shouldNotContain("Rhodes")
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
        42.shouldBeGreaterThanOrEqual(to: number)
    }

    func testThat41ShouldBeLessThanOrEqualTo42() {
        41.shouldBeLessThanOrEqual(to: number)
    }
}

class FloatTests: XCTestCase {
    let number: Float = 42.0

    func testThat42ShouldEqual42() {
        let float: Float = 42
        number.shouldEqual(float)
    }

    func testThat42IsGreaterThan41() {
        let float: Float = 41
        number.shouldBeGreaterThan(float)
    }

    func testThat42IsLessThan43() {
        let float: Float = 43
        number.shouldBeLessThan(float)
    }

    func testThat42ShouldBeGreaterThaOrEqualTo42() {
        let fortyTwo: Float = 42.0
        fortyTwo.shouldBeGreaterThanOrEqual(to: number)
    }

    func testThat41ShouldBeLessThanOrEqualTo42() {
        let fortyOne: Float = 41.0
        fortyOne.shouldBeLessThanOrEqual(to: number)
    }

    func testThat45ShouldBeCloseTo42With3Accuracy() {
        let float: Float = 45
        let accuracy: Float = 3
        number.shouldBeClose(to: float, withAccuracy: accuracy)
    }
}

class DoubleTests: XCTestCase {
    let number: Double = 42

    func testThat42ShouldEqual42() {
        number.shouldEqual(42.0)
    }

    func testThat42IsGreaterThan41() {
        number.shouldBeGreaterThan(41.0)
    }

    func testThat42IsLessThan43() {
        number.shouldBeLessThan(43.0)
    }

    func testThat42ShouldBeGreaterThaOrEqualTo42() {
        let fortyTwo: Double = 42.0
        fortyTwo.shouldBeGreaterThanOrEqual(to: number)
    }

    func testThat41ShouldBeLessThanOrEqualTo42() {
        let fortyOne: Double = 41.0
        fortyOne.shouldBeLessThanOrEqual(to: number)
    }

    func testThat41ShouldBeCloseTo42With3Accuracy() {
        number.shouldBeClose(to: 41.0, withAccuracy: 1.0)
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
        let six = NSNumber(value: 6)
        let threePlusThree = NSNumber(value: 3+3)

        six.shouldEqual(threePlusThree)
    }

    func testShouldNotEqual() {
        let five = NSString(format: "five")
        let four = NSString(format: "4")

        five.shouldNotEqual(four)
    }

    func testShouldBeIdenticalTo() {
        let five = NSNumber(value: 5)
        let anotherFive = five

        five.shouldBeIdentical(to: anotherFive)
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

    func testShouldNotContain() {
        let array = [1, 2, 3]
        array.shouldNotContain(4)
    }
}

class DictionaryTests: XCTestCase {
    func testShouldBeEmpty() {
        let emptyDictionary = [Int: String]()
        emptyDictionary.shouldBeEmpty()
    }

    func testShouldContain() {
        let dictionary = [1: "one", 2: "two"]
        dictionary.shouldContain("one")
    }

    func testShouldNotContain() {
        let dictionary = [1: "one", 2: "two"]
        dictionary.shouldNotContain("three")
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

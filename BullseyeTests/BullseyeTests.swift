//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Alexi Bre on 6/7/21.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {

    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

 func testScorePositive(){
     let score = game.points(sliderValue: game.target + 5)

     XCTAssertEqual(score, 95)
 }

    func testScoreNegative() {
        let score = game.points(sliderValue: game.target - 5)

        XCTAssertEqual(score, 95)
    }

}

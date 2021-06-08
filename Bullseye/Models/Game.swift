//
// Created by Alexi Bre on 6/7/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1

    func points(sliderValue: Int) -> Int {

        if sliderValue >= target {
            return 100 - (sliderValue - target)
        } else {
            return 100 - (target - sliderValue)
        }
    }
}
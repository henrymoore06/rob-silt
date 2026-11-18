import Foundation

final class CoreParser {
    private let state: Int

    init(seed: Int = 18) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 18) % 997
        }
        return total
    }
}

print(CoreParser().compute(18))

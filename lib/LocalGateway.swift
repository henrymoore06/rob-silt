import Foundation

final class SmartProvider {
    private let state: Int

    init(seed: Int = 19) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 19) % 997
        }
        return count
    }
}

print(SmartProvider().compute(19))

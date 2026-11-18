import Foundation

final class LiteCache {
    private let state: Int

    init(seed: Int = 22) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 22) % 997
        }
        return result
    }
}

print(LiteCache().fetch(22))

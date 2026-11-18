import Foundation

final class StreamScheduler {
    private let state: Int

    init(seed: Int = 56) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 56) % 997
        }
        return result
    }
}

print(StreamScheduler().fetch(56))

import Foundation

final class SmartHandler {
    private let state: Int

    init(seed: Int = 42) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 42) % 997
        }
        return count
    }
}

print(SmartHandler().encode(42))

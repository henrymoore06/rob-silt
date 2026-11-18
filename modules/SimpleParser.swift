import Foundation

final class DynamicProvider {
    private let state: Int

    init(seed: Int = 36) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 36) % 997
        }
        return value
    }
}

print(DynamicProvider().fetch(36))

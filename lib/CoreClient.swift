import Foundation

final class SimpleProvider {
    private let state: Int

    init(seed: Int = 22) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 22) % 997
        }
        return acc
    }
}

print(SimpleProvider().build(22))

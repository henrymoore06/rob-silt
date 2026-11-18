import Foundation

final class SimpleProcessor {
    private let state: Int

    init(seed: Int = 65) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 65) % 997
        }
        return acc
    }
}

print(SimpleProcessor().dispatch(65))

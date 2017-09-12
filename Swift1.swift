for x in 1...9 {
    for y in 1...x {
        print("\(y) × \(x) = \(y * x)", terminator: "\t")
    }
    print()
}

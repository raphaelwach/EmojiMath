extension Character {

    fileprivate static private(set) var associations: [Character : [Character]] = [
        "🥶" : ["😬", "❄️"],
        "🤮" : ["💩", "😋"],
        "😎" : ["🙂", "🌞"],
        "🥵" : ["🏃‍♂️", "🚴‍♂️"],
        "🤢" : ["🍖", "🇬🇧"],
        "🥓" : ["🐖", "🔪"],
        "🥩" : ["🐄", "🔪"],
        "🍗" : ["🐓", "🔪"],
        "🤬" : ["📵", "🚭"],
        "😀" : ["🚬", "🍷"],
        "👨‍💻" : ["👨", "💻"],
        "👩‍💻" : ["👩", "💻"],
        "😓" : ["⏰", "💼"],
        "🙊" : ["🐒", "🤭"],
        "❤️" : ["👨", "👩"],
        "🥰" : ["💋", "🤗"],
        "👫" : ["🧍‍♀️", "🧍‍♂️"],
        "🤭" : ["🍆", "💦"],
    ]

    static func +(left: Character, right: Character) -> Character {
        let result = associations.first { (k, v) in
            v.contains(left) && v.contains(right)
        }
        return result?.key ?? "❓"
    }

}

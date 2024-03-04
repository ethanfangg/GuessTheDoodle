//
//  Misc.swift
//  Guess The Doodle
//
//  Created by Ethan Fang on 3/3/24.
//

import Foundation

let everydayObjects: [String] = ["apple", "banana", "car", "dog", "elephant", "fan", "guitar", "hat", "ice cream", "jacket", "kite", "lamp", "mailbox", "notebook", "orange", "piano", "quilt", "radio", "shoes", "table", "umbrella", "vase", "watch", "xylophone", "yogurt", "zebra", "airplane", "ball", "cat", "duck", "fish", "grapes", "hammer", "island", "juice", "key", "lemon", "map", "necklace", "owl", "penguin", "quilt", "rainbow", "sun", "tree", "umbrella", "volcano", "wallet", "xylophone", "yo-yo", "zipper", "alarm clock", "book", "camera", "dolphin", "earphones", "fork", "glasses", "hamburger", "ink", "jellyfish", "kangaroo", "ladder", "magnet", "nail", "octopus", "pencil", "quill", "rabbit", "sunglasses", "telephone", "unicorn", "violin", "whistle", "xylophone", "yacht", "zeppelin", "accordion", "butterfly", "candle", "dinosaur", "eggplant", "flamingo", "giraffe", "harp", "igloo", "jack-o-lantern", "kettle", "lighthouse", "mushroom", "necktie", "ostrich", "puzzle", "rocket", "suitcase", "telescope", "ufo", "volleyball", "wagon", "xylophone", "yarn", "zebra"]

enum PlayerAuthState: String {
    case authenticating = "Logging in to Game Center..."
    case unauthenticated = "Please sign in to Game Center to play."
    case authenticated = ""
    
    case error = "There was an error logging into Game Center."
    case restricted = "You're not allowed to play multiplayer games!"
}

struct PastGuess: Identifiable {
    let id = UUID()
    var message: String
    var correct: Bool
}

let maxTimeRemaining = 100

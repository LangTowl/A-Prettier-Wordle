//
//  KeysDataModel.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/8/23.
//

import Foundation

enum KeyState: String {
    case correct
    case partial
    case wrong
    case empty
}

struct Key: Identifiable {
    var id = UUID()
    var character: String
    var key_state: KeyState
}

var row_one: [Key] = [
    Key(character: "q", key_state: .empty),
    Key(character: "w", key_state: .empty),
    Key(character: "e", key_state: .empty),
    Key(character: "r", key_state: .empty),
    Key(character: "t", key_state: .empty),
    Key(character: "y", key_state: .empty),
    Key(character: "u", key_state: .empty),
    Key(character: "i", key_state: .empty),
    Key(character: "o", key_state: .empty),
    Key(character: "p", key_state: .empty),
]

var row_two: [Key] = [
    Key(character: "a", key_state: .empty),
    Key(character: "s", key_state: .empty),
    Key(character: "d", key_state: .empty),
    Key(character: "f", key_state: .empty),
    Key(character: "g", key_state: .empty),
    Key(character: "h", key_state: .empty),
    Key(character: "j", key_state: .empty),
    Key(character: "k", key_state: .empty),
    Key(character: "l", key_state: .empty),
]

var row_three: [Key] = [
    Key(character: "z", key_state: .empty),
    Key(character: "x", key_state: .empty),
    Key(character: "c", key_state: .empty),
    Key(character: "v", key_state: .empty),
    Key(character: "b", key_state: .empty),
    Key(character: "n", key_state: .empty),
    Key(character: "m", key_state: .empty),
]


struct ModifierKey: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
}

var row_four: [ModifierKey] = [
    ModifierKey(name: "enter", icon: "arrowshape.right"),
    ModifierKey(name: "delete", icon: "arrowshape.left"),
]

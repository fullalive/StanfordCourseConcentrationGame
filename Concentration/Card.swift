//
//  Card.swift
//  Concentration
//
//  Created by Admin on 21.02.2021.
//

import Foundation

struct Card: Hashable {
	func hash(into hasher: inout Hasher) {
		hasher.combine(identifier)
	}

	static func ==(lhs: Card, rhs: Card) -> Bool {
		return lhs.identifier == rhs.identifier
	}

	var isFaceUp = false
	var isMatched = false
	private var identifier: Int

	private static var identifierFactory = 0

	private static func getUniqueIdentifier() -> Int {
		identifierFactory += 1
		return identifierFactory
	}

	init() {
		self.identifier = Card.getUniqueIdentifier()
	}
}


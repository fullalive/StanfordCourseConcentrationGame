//
//  ViewController.swift
//  Concentration
//
//  Created by Admin on 06.02.2021.
//

import UIKit

class ViewController: UIViewController {
	var flipCount = 0 {
		didSet {
			flipCountLabel.text = "Flips \(flipCount)"
		}
	}

	var emojiChoices = ["🎃", "👻", "🎃", "👻"]

	@IBOutlet weak var flipCountLabel: UILabel!
	@IBOutlet var cardButtons: [UIButton]!
	
	@IBAction func touchCard(_ sender: UIButton) {
		flipCount += 1
		let cardNumber = cardButtons.firstIndex(of: sender)!
		flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
		
	}

	func flipCard(withEmoji emoji: String, on button: UIButton) {
		if button.currentTitle == emoji {
			button.setTitle("", for: .normal)
			button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
		} else {
			button.setTitle(emoji, for: .normal)
			button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		}
	}
}


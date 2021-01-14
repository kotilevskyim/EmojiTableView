//
//  EmojiTableViewCell.swift
//  EmojiTableView
//
//  Created by Maksym on 31.12.2020.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiLBL: UILabel!
    @IBOutlet weak var emojiNameLBL: UILabel!
    @IBOutlet weak var emojiDescriptionLBL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set (object: Emoji) {
        self.emojiLBL.text = object.emoji
        self.emojiNameLBL.text = object.name
        self.emojiDescriptionLBL.text = object.description
    }
    

}

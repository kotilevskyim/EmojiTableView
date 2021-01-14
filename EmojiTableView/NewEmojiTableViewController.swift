//
//  NewEmojiTableViewController.swift
//  EmojiTableView
//
//  Created by Maksym on 09.01.2021.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    
    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        updateSaveButtonState()
        
        
    }
    
    private func updateSaveButtonState () {
        let emojiTxt = emojiTF.text ?? ""
        let nameTxt = nameTF.text ?? ""
        let descriptionTxt = descriptionTF.text ?? ""
        
        saveButton.isEnabled = !emojiTxt.isEmpty && !nameTxt.isEmpty && !descriptionTxt.isEmpty
    }
    
    private func updateUI () {
        emojiTF.text = emoji.emoji
        nameTF.text = emoji.name
        descriptionTF.text = emoji.description
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let emoji = emojiTF.text ?? ""
        let name = nameTF.text ?? ""
        let description = descriptionTF.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavourite: self.emoji.isFavourite )
    }
    
    
    
    
}

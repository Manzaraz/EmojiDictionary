//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Christian Manzaraz on 21/12/2022.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {
    
    @IBOutlet var symbolTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var usageTextField: UITextField!
    
    var emoji: Emoji?
    
    init?(coder: NSCoder, emoji: Emoji? ) {
        self.emoji = emoji
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let emoji = emoji {
            symbolTextField.text = emoji.symbol
            nameTextField.text = emoji.name
            descriptionTextField.text = emoji.description
            usageTextField.text = emoji.usage
            title = "Edit Emoji"
        } else {
            title = "Add Emoji"
        }
        
    }
    
    // MARK: - Table view data source
    
    
    
}

//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Christian Manzaraz on 21/12/2022.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {
    
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


    }

    // MARK: - Table view data source

    

}

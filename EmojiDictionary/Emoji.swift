//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Christian Manzaraz on 17/12/2022.
//

import Foundation

struct Emoji: Codable {
    var symbol: String, name: String , description: String , usage: String
    
    static var archiveURL: URL {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsURL.appendingPathComponent("emojis").appendingPathExtension("plist")
        
        return archiveURL
    }
    
    static var sampleEmojis: [Emoji] {
        return [
            Emoji(symbol: "π", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"),
            Emoji(symbol: "π", name: "Confused Face", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
            Emoji(symbol: "π", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
            Emoji(symbol: "π§βπ»", name: "Developer", description: "A person working on a MacBook (probably using Xcode to write iOS apps in Swift).", usage: "apps, software, programming"),
            Emoji(symbol: "π’", name: "Turtle", description: "A cute turtle.", usage: "Something slow"),
            Emoji(symbol: "π", name: "Elephant", description: "A gray elephant.", usage: "good memory"),
            Emoji(symbol: "π", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti"),
            Emoji(symbol: "π²", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
            Emoji(symbol: "βΊοΈ", name: "Tent", description: "A small tent.", usage: "camping"),
            Emoji(symbol: "π", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying"),
            Emoji(symbol: "π", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness"),
            Emoji(symbol: "π€", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
            Emoji(symbol: "π", name: "Checkered Flag", description: "A black-and-white checkered flag.", usage: "completion")
        ]
    }
    
    static func saveToFile(emojis: [Emoji]) {
        let encoder = PropertyListEncoder()
        do {
            let encodedEmojis = try encoder.encode(emojis)
            try encodedEmojis.write(to: Emoji.archiveURL)
        } catch {
            print("Error encoding emoji: \(error)")
        }
    }
    
    static func loadFromFile() -> [Emoji]? {
        guard let emojiData = try?Data(contentsOf: Emoji.archiveURL) else { return nil }
        
        do {
            let decoder = PropertyListDecoder()
            let decodedEmoji = try decoder.decode([Emoji].self, from: emojiData)
            
            return decodedEmoji
        } catch {
            print("Error decoding emoji: \(error)")
            return nil
        }
    } 
    
}

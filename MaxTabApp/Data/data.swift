//
//  data.swift
//  MaxTabApp
//
//  Created by AMALITECH-PC-593 on 6/3/24.
//

import Foundation

struct SectionData: Identifiable, Hashable {
    let id = UUID()
    let size: CardSize
    let items: [CardData]
}

struct CardData: Identifiable, Hashable {
    let id = UUID()
    let lable: String
    let size: CardSize
}

enum CardSize:
    Double, CaseIterable{
    case  large = 170.0, medium = 90.0, small = 50.0}

class Generator {
   static func getSections(sectionLimit: Int = 10, itemsLimit: Int = 2) -> [SectionData] {
        var sections: [SectionData] = []
        
        // Generate random sections
        for index in 0..<sectionLimit {
            // Randomize section size
           let sectionSize = cardSize(for: index)
            
            // Generate random items for the section
            var sectionItems: [CardData] = []
            for _ in 0..<Int.random(in: 1...itemsLimit) {
                // Randomize item label
                let itemLabel = "Item \(index) size \(sectionSize)"
                
                // Create and append the item
                sectionItems.append(CardData(lable: itemLabel, size: sectionSize))
            }
            
            // Create and append the section
            sections.append(SectionData(size: sectionSize, items: sectionItems))
        }
        
        return sections
    }

  static private  func cardSize(for number: Int) -> CardSize {
        if number.isMultiple(of: 2) {
            return .small
        } else {
            return .medium
        }
    }

}

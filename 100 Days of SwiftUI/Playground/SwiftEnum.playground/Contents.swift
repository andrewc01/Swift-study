import SwiftUI
import NaturalLanguage

let text = "The American Red Cross was established in Washington, D.C., by Clara Barton."


let tagger = NLTagger(tagSchemes: [.language])
tagger.string = text


let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace, .joinNames]
let tags: [NLTag] = [.personalName, .placeName, .organizationName]


tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .nameType, options: options) { tag, tokenRange in
    // Get the most likely tag, and print it if it's a named entity.
    if let tag = tag, tags.contains(tag) {
        print("\(text[tokenRange]): \(tag.rawValue)")
    }
        
    // Get multiple possible tags with their associated confidence scores.
    let (hypotheses, _) = tagger.tagHypotheses(at: tokenRange.lowerBound, unit: .word, scheme: .nameType, maximumCount: 1)
    print(hypotheses)
        
   return true
}

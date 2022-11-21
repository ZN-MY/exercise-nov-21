//
//  Uppgifter.swift
//  PIA11kodtest
//
//  Created by Bill Martensson on 2022-11-20.
//

import Foundation


class Uppgifter {
  //MARK: - Exercise 1
  
  /*
   Gör så funktionen som tar emot en mening och printar ut ett ord per rad.
   Runt hela ska det vara ram av stjärnor som anpassas efter längst ordet.
   Exempel:
   kod1("Att programmera är skoj")
   Så printa ut följande i loggen.
   ***************
   * Att         *
   * programmera *
   * är          *
   * skoj        *
   ***************
   */
  func kod1(mening : String) {
    let words = mening.split(separator: " ")
    
    let starLine = "***************"
    print(starLine)
    
    for word in words {
      let amountOfWhiteSpaces = starLine.count - 4 - word.count
      var line = "* "
      
      line += word
      
      for _ in 0..<amountOfWhiteSpaces {
        line += " "
      }
      
      line += " *"
      
      print(line)
    }
    
    
    print(starLine)
  }
  
  //MARK: - Exercise 2
  
  private enum CalculationType: String {
    case addition = "plus",
         subtraction = "minus",
         division,
         multiplication = "gånger"
  }
  
  private static let stringToNumberDict: [String: Int] = [
    "ett": 1,
    "två": 2,
    "tre": 3,
    "fyra": 4,
    "fem": 5,
    "sex": 6,
    "sju": 7,
    "åtta": 8,
    "nio": 9,
    "tio": 10
  ]
  
  /*
   Gör så funktionen tar emot två tal och räknesätt som strings och printar ut resultatet.
   Exempel:
   kod2(tal1: "sju", tal2: "tre", calctype: "plus")
   Ska ta 7 + 3 och printa ut "10"
   Behöver bara ha stöd för tal upp till 10
   */
  func kod2(tal1 : String, tal2 : String, calctype: String) {
    let num1 = Self.stringToNumberDict[tal1, default: .zero]
    let num2 = Self.stringToNumberDict[tal2, default: .zero]
    
    let calculationType = CalculationType(rawValue: calctype) ?? .addition
    
    let result: Int
    
    switch calculationType {
    case .addition:
      result = num1 + num2
    case .subtraction:
      result = num1 - num2
    case .division:
      result = num2 != .zero ? num1 / num2 : .zero
    case .multiplication:
      result = num1 * num2
    }
    
    print(result)
  }
  
  //MARK: - Exercise 3
  
  /*
   Gör så funktionen tar emot en array av tal. Låt den printa ut summan av högsta och lägsta siffran.
   Exempel:
   kod3(siffror: [2,5,4,6,9])
   Ska ta 2+9 och printa 11
   */
  func kod3(siffror: [Int]) {
    guard let first = siffror.first,
          let last = siffror.last
    else {
      print(String(Int.zero))
      return
    }
    
    print(first + last)
  }
}

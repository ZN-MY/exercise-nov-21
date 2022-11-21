//
//  ContentView.swift
//  PIA11kodtest
//
//  Created by Bill Martensson on 2022-11-20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Hello, world!")
    }
    .onAppear() {
      Uppgifter().kod1(mening: "Att programmera är skoj")
      Uppgifter().kod2(tal1: "sju", tal2: "tre", calctype: "plus")
      Uppgifter().kod3(siffror: [2, 5, 4, 6, 9])
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

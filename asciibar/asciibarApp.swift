//
//  asciibarApp.swift
//  asciibar
//
//  Created by 刘启辰 on 2023/6/10.
//

import SwiftUI

@main
struct AsciiBar: App {
    @State private var isDecimalView = true
    var body: some Scene {
        MenuBarExtra("UtilityApp", image: "alpha") {
            VStack(alignment: .leading, spacing: 7) {
                HStack {
                                    Text("   ASCII Table")
                                        .font(.headline)
                                    Spacer()
                                    Button(action: {
                                        isDecimalView.toggle()
                                    }) {
                                        Text(isDecimalView ? "Switch to Hex" : "Switch to Decimal")
                                    }
                    Button(action: {
                        NSApplication.shared.terminate(self)
                    }) {
                        Text("Quit")
                    }

                                }
                Divider()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(asciiTableRows1)
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                    Text(asciiTableRows2)
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                    Text(asciiTableRows3)
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                    Text(asciiTableRows4)
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                }
            }
            .padding(7)
            .frame(minWidth: 545, minHeight: 310) // Adjust the dimensions here
        }.menuBarExtraStyle(.window)
    }
    private let asciiTableRows1 =
        "  0 nul    1 soh    2 stx    3 etx    4 eot    5 enq    6 ack    7 bel\n" +
        "  8 bs     9 ht    10 nl    11 vt    12 np    13 cr    14 so    15 si \n" +
        " 16 dle   17 dc1   18 dc2   19 dc3   20 dc4   21 nak   22 syn   23 etb\n" +
        " 24 can   25 em    26 sub   27 esc   28 fs    29 gs    30 rs    31 us "
    
    private let asciiTableRows2 =
        " 32 sp    33  !    34  \"    35  #    36  $    37  %    38  &    39  '\n" +
        " 40  (    41  )    42  *    43  +    44  ,    45  -    46  .    47  /\n" +
        " 48  0    49  1    50  2    51  3    52  4    53  5    54  6    55  7\n" +
        " 56  8    57  9    58  :    59  ;    60  <    61  =    62  >    63  ?"
    
    private let asciiTableRows3 =
        " 64  @    65  A    66  B    67  C    68  D    69  E    70  F    71  G\n" +
        " 72  H    73  I    74  J    75  K    76  L    77  M    78  N    79  O\n" +
        " 80  P    81  Q    82  R    83  S    84  T    85  U    86  V    87  W\n" +
        " 88  X    89  Y    90  Z    91  [    92  \\    93  ]    94  ^    95  _"
    
    private let asciiTableRows4 =
        " 96  `    97  a    98  b    99  c   100  d   101  e   102  f   103  g\n" +
        "104  h   105  i   106  j   107  k   108  l   109  m   110  n   111  o\n" +
        "112  p   113  q   114  r   115  s   116  t   117  u   118  v   119  w\n" +
        "120  x   121  y   122  z   123  {   124  |   125  }   126  ~   127 del"
}

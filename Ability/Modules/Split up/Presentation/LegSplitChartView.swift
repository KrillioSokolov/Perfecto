//
//  FullSplitupChartView.swift
//  Ability
//
//  Created by Kyrylo Sokolov on 15.02.2022.
//

import Foundation
import SwiftUI
import SwiftUICharts


struct LegSplitChartView: View {
    
    @State private var favoriteColor = 0

    var body: some View {
        VStack(.trailing) {
            LineView(data: [141, 141, 142, 141, 140, 143, 143, 144, 145, 145, 147, 147, 150, 151, 152, 152, 151, 150, 153, 154, 154], title: "Шпагат", legend: "180° это идеальный шпагат", style: Styles.barChartStyleNeonBlueLight, valueSpecifier: "%.0f°", legendSpecifier: "%.0f°").padding()
            
            Picker("What is your favorite color?", selection: $favoriteColor) {
                            Text("Поперечный").tag(0)
                            Text("Правый").tag(1)
                            Text("Левый").tag(2)
                        }
                        .pickerStyle(.segmented).padding()
            
            
        }
    }
    
}

#if DEBUG
struct FullSplitupChartView_Previews: PreviewProvider {
   static var previews: some View {
       LegSplitChartView()
   }
}
#endif





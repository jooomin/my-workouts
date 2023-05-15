//
//  MetricsView.swift
//  MyWorkouts Watch App
//
//  Created by JooMin Choi on 15/05/2023.
//

import SwiftUI

struct MetricsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("03:15.23")
                .foregroundColor(Color.yellow)
                .fontWeight(.semibold)
            Text(
                Measurement(
                    value: 47,
                    unit: UnitEnergy.kilocalories
                ).formatted(
                    .measurement(
                        width: .abbreviated,
                        usage: .workout
                    )
                )
            )
            Text(
                153.formatted()
                + " bpm"
            )
            Text(
                Measurement(
                    value: 515,
                    unit: UnitLength.meters
                ).formatted(
                    .measurement(
                        width: .abbreviated,
                        usage: .road
                    )
                )
            )
        }
        .font(.system(.title, design: .rounded)
            .monospacedDigit()
            .lowercaseSmallCaps()
        )
        .frame(maxWidth: .infinity, alignment: .leading)
        .ignoresSafeArea(edges: .bottom)
        .scenePadding()
    }
}

struct MetricsView_Previews: PreviewProvider {
    static var previews: some View {
        MetricsView()
    }
}

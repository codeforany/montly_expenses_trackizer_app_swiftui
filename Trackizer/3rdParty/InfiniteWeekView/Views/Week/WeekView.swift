//
//  WeekView.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct WeekView: View {
    @EnvironmentObject var weekStore: WeekStore

    var week: Week

    var body: some View {
        HStack {
            ForEach(0..<7) { i in
                VStack {
                    
                    
                        Text(week.dates[i].toString(format: "d"))
                            .font(.customfont(.bold, fontSize: 20))
                            
                            .frame(maxWidth: .infinity)
                            .foregroundColor( .white)
                            .padding(.top, 15)
                    
                    
                    Text(week.dates[i].toString(format: "EEE").uppercased())
                        .font(.customfont(.semibold, fontSize: 12))
                        .foregroundColor(.gray30)
                        .frame(maxWidth:.infinity)
                    
                    Spacer()
                    
                    Circle()
                        .fill(Color.secondaryC)
                        .frame(width: 5, height: 5)
                    
                    Spacer()
                    
                    
                }.onTapGesture {
                    withAnimation {
                        weekStore.selectedDate = week.dates[i]
                    }
                }
                .frame(maxWidth: .infinity, minHeight: 110 , maxHeight: 110)
                .background(Color.gray60.opacity( week.dates[i] == weekStore.selectedDate ? 1.0 : 0.2 ))
                .overlay {
                    RoundedRectangle(cornerRadius:  16)
                        .stroke(  Color.gray70 , lineWidth: 1)
                }
                .cornerRadius(16)
            }
        }
        .padding()
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView(week: .init(index: 1, dates:
                                [
                                    Date().yesterday.yesterday.yesterday,
                                    Date().yesterday.yesterday,
                                    Date().yesterday,
                                    Date(),
                                    Date().tomorrow,
                                    Date().tomorrow.tomorrow,
                                    Date().tomorrow.tomorrow.tomorrow
                                ],
                             referenceDate: Date()))
        .environmentObject(WeekStore())
    }
}

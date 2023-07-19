//
//  WeekHeaderView.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct WeekHeaderView: View {
    @EnvironmentObject var weekStore: WeekStore
    @State var showDatePicker: Bool = false

    var body: some View {
        HStack {
            Text("3 subscriptions for today")
                .font(.customfont(.semibold, fontSize: 14))
                .foregroundColor(.gray30)
            
            
            
            Spacer()
            
            Button {
                showDatePicker = true
            } label: {
                HStack{
                    Text(weekStore.selectedDate.monthToString())
                        .font(.customfont(.semibold, fontSize: 14))
                        
                    
                    Image(systemName: "chevron.down")
                        .resizable()
                        .frame(width: 10,height: 10)
                }
                
            }
            .foregroundColor(.white)
            .padding(.horizontal, 15)
            .padding(.vertical, 4)
            .background(Color.gray60.opacity( 0.2 ))
            .overlay {
                RoundedRectangle(cornerRadius:  16)
                    .stroke(  Color.gray70 , lineWidth: 1)
            }
            .cornerRadius(16)
            .sheet(isPresented: $showDatePicker) {
                VStack {
                    DatePicker("Select Date", selection: $weekStore.selectedDate, displayedComponents: [.date] )
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .cornerRadius(15)
                        .padding()
                        .presentationDetents([.height(400), .fraction(20), .medium, .large])
                        .onChange(of: weekStore.selectedDate, perform: { _ in
                            showDatePicker = false
                        })
                        .tint(.secondaryC)
                        .colorScheme(.dark)
                    
                    Spacer()
                }
                .background(Color.gray80)
                
                
            }
            .ignoresSafeArea()
        }
    }
}

struct WeekHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        WeekHeaderView()
            .environmentObject(WeekStore())
    }
}

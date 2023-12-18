import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10.0) {
                Text("Kids Eat Free")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Spacer()

                NavigationLink(destination: DaysOfWeekView()) {
                    Text("See Some Deals")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(50)
                }
            }
            .padding()
            .shadow(radius: 20)
            .navigationBarTitle("Home Page", displayMode: .inline)
            
        }
        .shadow(radius: 20)
    }
}

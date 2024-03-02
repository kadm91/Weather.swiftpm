import SwiftUI
import CoreLocationUI

struct WelcomView: View {
    
    @Environment (LocationManager.self) var manager
    
    var body: some View{
        VStack {
            VStack (spacing: 20) {
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Please share your currrent location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                manager.requestLocation()
            }
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .symbolVariant(.fill)
            .foregroundStyle(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview  { 
    WelcomView()
        .environment(LocationManager())
}

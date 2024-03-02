import SwiftUI

struct WeatherRow: View {
    var logo: String
    var rotateIcon: Bool = false
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            
            Image(systemName: logo)
                .rotationEffect( rotateIcon ? Angle(degrees: 180) : Angle(degrees: 0))
                .frame(width: 25, height: 25)
                .font(.title2)
                .padding()
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
                .cornerRadius(50)
            
            VStack(alignment: .leading, spacing: 8){
                Text(name)
                    .font(.headline)
                
                Text(value)
                    .bold()
                    .font(.title)
                
            }
        }
    }
}

#Preview { 
    WeatherRow(logo: "thermometer", rotateIcon: true, name: "Feels like", value: "8°")
}

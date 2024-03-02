import Foundation

let previeWeahter = ResponseBody(
    coord: ResponseBody.CoordinateResponse(
        lon: 104.7091,
        lat: 40.4233),
    
    weather: [ResponseBody.WeatherResponse(
        id: 804,
        main: "Clear", 
        description: "Overcast clouds", 
        icon: "04d")],
    
    main: ResponseBody.MainResponse(
        temp: 69.64,
        feels_like: 66.12,
        temp_min: 60.64,
        temp_max: 78.64,
        pressure: 1033, 
        humidity: 32),
    
    name: "Dalan Turu",
    
    wind: ResponseBody.WindResponse(
        speed: 2.37,
        deg: 350
    )
)

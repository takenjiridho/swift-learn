import UIKit

var str = "Hello, playground"

func bmiCalculation(weight: Double, height: Double) -> String {
//    let bmi: Double = weight / (height*height)
    
    let bmi = weight / pow(height, 2)
    
    let shortBmi = String(format: "%.3f", bmi)
    
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "you are overweight"
    } else if bmi > 18.5 && bmi <= 25 {
        interpretation = "your body mass is normal"
    } else {
        interpretation =  "your body mass is underweight"
    }
    
    return "Your BMI is " + String(shortBmi) + " and " + interpretation
}
var bmi = bmiCalculation(weight: 70, height: 1.8)
print(bmi)

// 1 foot = 12 inches
// 1 inch = 0.0254 meters
// 1 pound = 0.45359237 kilograms



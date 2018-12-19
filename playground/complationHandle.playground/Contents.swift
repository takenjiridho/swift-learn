import UIKit

class Firebase {
    func createUser(username : String , password : String , completion : (Bool, Int) -> Void){
        let isSuccess = true
        let userID = 1223
        
        completion(isSuccess,userID)
        
    }
}

class MyApp {
    
    func registrationPressed() {
        let firebase = Firebase()
//cara satu
//        firebase.createUser(username: "Ridho", password: "ganteng", completion: complated)//
        
        
//cara 2
        firebase.createUser(username: "Ridho", password: "ganteng") {
                (isSuccess, userId) in
                print ("register Success \(isSuccess)!!" )
                print ("userId is : \(userId)")
        }
        
    }
    
    
    func complated (isSuccess : Bool, userId : Int) {
        print ("register Success \(isSuccess)!!" )
        print ("userId is : \(userId)")
    }
    
    
    
    
}


let myApp = MyApp()
myApp.registrationPressed()

import Foundation

////var minhaVAr: Int?
////minhaVAr = 10
//
//
//
////var a: Int? = 1
////
//var myString: String?
////
//
//myString = "ola"
////
////if myString != nil {
////    print(myString!)
////} else {
////    print("myString has nil value")
////}
//
//if let myString2 = myString {
//    print(myString2)
//} else {
//    print("nada")
//}
//









//
struct CocoaHeadsTalk {
    let name: String?
    let email: String?
    let author: String?
}


//
//func metodoCocoaTalk(talk: CocoaHeadsTalk) {
//    
//    if let name = talk.name {
//        print("Talk name: \(name)")
//        
//        if let talkAuthor = talk.author {
//            print("talk Author \(talkAuthor).")
//            
//            if let email = talk.email {
//                print("email: \(email)")
//            } else {
//                print("erro 1")
//            }
//        } else {
//            print("erro 2")
//        }
//    } else {
//        print("erro 3")
//    }
//    
//}
//
let talk = CocoaHeadsTalk(name: "Dicas de swift", email: "klevison@gmail.com", author: "Klevison")
metodoCocoaTalk(talk)


func metodoCocoaTalk(talk: CocoaHeadsTalk) {
    
    guard let name = talk.name else {
        print("erro 1")
        return
    }
    
    print("Talk name: \(name)")
    
    guard let talkAuthor = talk.author else {
        print("it is written by an unknown author.")
        return
    }
    
    print("talk Author \(talkAuthor).")
    
    guard let email = talk.email else {
        print("Search for it on your favorite on your favorite search engine.")
        return
    }
    
    print("email: \(email)")
}




//let maybeNumbers: [Int?] = [3, 7, nil, 12, 40]
//
//for maybeValue in maybeNumbers {
//    
//    guard let value = maybeValue else {
//        print("No Value")
//        break
//    }
//    
//    print(value)
//}

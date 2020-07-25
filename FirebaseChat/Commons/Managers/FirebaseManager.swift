//
// Created by Alan Casas on 23/07/2020.
// Copyright (c) 2020 Alan Casas. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth

class FirebaseManager {

    static let shared = FirebaseManager()

    func startConfiguration () {
        FirebaseApp.configure()
    }

    func createNewUser(withEmail: String, password: String, success: @escaping (String?) -> Void, failure: @escaping (String?) -> Void) {
        Auth.auth().createUser(withEmail: withEmail, password: password) { (user, error) in
            if error != nil {
                failure(error?.localizedDescription)
            } else {
                success("Sign up Success")
            }
        }
    }

//    func signIn(withEmail: String, password: String, success: @escaping (String?) -> Void, failure: @escaping (String?) -> Void) {
//        Auth.auth().signIn(withEmail: withEmail, password: password) { (user, error) in
//            if error != nil {
//                failure(error?.localizedDescription)
//            } else {
//                success("Log in Success")
//            }
//        }
//    }

    func getCurrentUserEmail() -> String {
        return Auth.auth().currentUser?.email ?? ""
    }

    func logout () {
        try? Auth.auth().signOut()
    }

}

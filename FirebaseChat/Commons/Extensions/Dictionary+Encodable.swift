//
//  Dictionary+Encodable.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import Foundation

extension Encodable {
  var dictionary: [String: Any]? {
    guard let data = try? JSONEncoder().encode(self) else { return nil }
    return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
  }
}

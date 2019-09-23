//
//  WebServices.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class Webservice {
    enum NetworkError: Error {
        case decodingError
        case domainError
        case urlError
    }
    // MARK: - dowloadImage
    //just a simple download image block for this example
    func dowloadImage(url: URL, completion: @escaping (_ error: Error?, _ image: UIImage?) -> Void) {
        var request = URLRequest(url: url)
        request.httpMethod = "get"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(error, nil)
                return
            }
            if let image = UIImage(data: data) {
                DispatchQueue.main.async {
                     completion(nil,image)
                }
            }
            }.resume()
    }
    
}

//
//  APIManager.swift
//  cogniteq_prjct
//
//  Created by Dmitry on 10/20/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import Foundation

class APIManager {
    
    private init() { }
    
    static let shared = APIManager()
    
    private let session = URLSession.shared
    
    func getProjectList(page: Int, _ completion: ((Json4Swift_Base?)->Void)?) {
        let path = "https://api.github.com/search/repositories?q=%7Bquery%7D%7B&page=\(page),per_page=50,sort,order%7D"
        guard let url = URL(string:path) else {
            completion?(nil)
            return
        }
        
    let task = session.dataTask(with: url) { data, response, error in
        if let error = error {
            print(error)
            completion?(nil)
        } else {
            guard let projectsData = data else {
                completion?(nil)
                return
            }
            let decoder = JSONDecoder()
            let array = try? decoder.decode(Json4Swift_Base.self, from: projectsData)
            completion?(array)
        }
    }
    task.resume()
    }
    
}

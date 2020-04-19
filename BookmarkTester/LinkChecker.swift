//
//  LinkChecker.swift
//  BookmarkTester, a broken link checker for browser bookmarks written in Swift
//
//  Copyright © 2020 Mark-James M.
//  https://markjames.dev
//

import Foundation

class LinkChecker {
    
    var cleanLinks = 0
    var brokenLinks = 0
    var deadLinks = 0
    
        func checkLink(link: String) {
        
        // Create a semaphore to wait until URLSession finishes downloading
        let semaphore = DispatchSemaphore( value: 0)
        
        guard let url = URL(string: link) else { return }
            
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            semaphore.signal()
            // Check if the response has an error
            if error != nil{
                self.deadLinks += 1
            }

            if let httpResponse = response as? HTTPURLResponse{
                 //   print(httpResponse)
                
               if httpResponse.statusCode == 404 {
                    self.brokenLinks += 1
                }
               
                if httpResponse.statusCode == 200 {
                    self.cleanLinks += 1
               }
            }
        }.resume()
        semaphore.wait()
    }
}

//
//  BookmarkParser.swift
//  BookmarkTester, a broken link checker for browser bookmarks written in Swift
//
//  Copyright © 2020 Mark-James M.
//  https://markjames.dev
//

import Foundation
import SwiftSoup

struct BookmarkParser {
    
    var totalBookmarks = 0
    var bookmarkURLS = Set<String>()
    
    mutating func getBookmarkLinks() {
        
        let html = BrowserBookmarks().bookmarkHTML
    
        guard let bookmarks: Elements = try? SwiftSoup.parse(html).select("a") else { return }
        for bookmarkLink: Element in bookmarks.array() {
            let cleanLink = try? bookmarkLink.attr("href")
            self.bookmarkURLS.insert(cleanLink ?? "http://brokenlink")
        }
    }
    
    mutating func listBookmarks() {
        for item in bookmarkURLS {
            print(item)
            self.totalBookmarks += 1
        }
        print("Total bookmarks: \(self.totalBookmarks)")
    }
}

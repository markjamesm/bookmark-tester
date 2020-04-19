//
//  main.swift
//  BookmarkTester, a broken link checker for browser bookmarks written in Swift
//
//  Copyright © 2020 Mark-James M.
//  https://markjames.dev
//

import Foundation

var parser = BookmarkParser()
var checker = LinkChecker()

parser.getBookmarkLinks()

parser.listBookmarks()

for bookmark in parser.bookmarkURLS {
    print("checking \(bookmark)")
    checker.checkLink(link: bookmark)
}

print("Clean Links: \(checker.cleanLinks)")
print("Broken Links: \(checker.brokenLinks)")
print("Dead Links: \(checker.deadLinks)")

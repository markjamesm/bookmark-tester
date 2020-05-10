# Bookmark Tester

 [![Swift](https://img.shields.io/badge/Swift-5.1-orange.svg)](https://swift.org)
 [![License](https://img.shields.io/badge/License-GPL-red.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)

Bookmark tester is a broken link checker designed to read HTML bookmark files from Chrome, Firefox, Chromium, and other browsers with an export to HTML feature. Part of a [guide I wrote here](https://markjames.dev/2020-04-20-bookmark-dead-link-checker-swift/).

## Features

* Parses bookmarks in HTML format
* Checks and records the response code for each bookmark

## Usage

In order to use the Bookmark tester, first export your browser bookmarks to HTML, and then copy the HTML code into the bookmarkHTML variable inside BrowserBookmarks.swift. An example bookmarks HTML file for testing purposes is [included here](https://github.com/markjamesm/bookmark-tester/blob/master/samplebookmarks.html).

## Libraries

* [SwiftSoup](https://github.com/scinfu/SwiftSoup), an HTML parsing library for Swift.

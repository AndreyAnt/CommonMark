//
//  File.swift
//  
//
//  Created by Andrey Antropov on 12.07.2020.
//

import Foundation
import Ccmark

//let markdown = "*Hello World*"
public func html(from markdown: String) -> String {
    let cString = cmark_markdown_to_html(markdown, markdown.utf8.count, 0)!
    defer { free(cString) }
    let html = String(cString: cString)
    print(html)
    return html
}

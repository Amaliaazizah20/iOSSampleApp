//
//  DataServiceTests.swift
//  iOSSampleAppTests
//
//  Created by Igor Kulman on 04/10/2017.
//  Copyright © 2017 Igor Kulman. All rights reserved.
//

import Foundation
import Common
@testable import Feed
import Nimble
import Quick

class DataServiceTests: QuickSpec {
    override func spec() {
        describe("RSS data service") {
            var service: RssDataService!
            beforeEach {
                service = RssDataService()
            }

            context("given valid RSS feed") {
                var source: RssSource!
                beforeEach {
                    source = RssSource(title: "Hacker News", url: "https://news.ycombinator.com", rss: "https://news.ycombinator.com/rss", icon: nil)
                }

                it("succeeeds") {
                    waitUntil(timeout: 5) { done in
                        service.getFeed(source: source) { result in
                            expect(result).notTo(equal(.failure(RssError.badUrl)))
                            expect(result) == .success([])
                            done()
                        }
                    }
                }
            }

            context("given invalid RSS feed") {
                var source: RssSource!
                beforeEach {
                    source = RssSource(title: "Fake", url: "", rss: "", icon: nil)
                }

                it("fails") {
                    waitUntil(timeout: 5) { done in
                        service.getFeed(source: source) { result in
                            expect(result) == .failure(RssError.badUrl)
                            done()
                        }
                    }
                }
            }
        }
    }
}

extension RssResult: Equatable {
    public static func == (lhs: RssResult, rhs: RssResult) -> Bool {
        switch (lhs, rhs) {
        case let (.failure(lerror), .failure(rerror)):
            switch (lerror, rerror) {
            case (RssError.badUrl, RssError.badUrl):
                return true
            default:
                return false
            }
        case (.success, .success):
            return true
        default:
            return false
        }
    }
}

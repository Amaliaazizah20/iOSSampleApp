// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum L10n {
  /// About
  public static let about = L10n.tr("Localizable", "about", fallback: "About")
  /// Add custom
  public static let addCustom = L10n.tr("Localizable", "add_custom", fallback: "Add custom")
  /// Add custom source
  public static let addCustomSource = L10n.tr("Localizable", "add_custom_source", fallback: "Add custom source")
  /// About author
  public static let author = L10n.tr("Localizable", "author", fallback: "About author")
  /// Back
  public static let back = L10n.tr("Localizable", "back", fallback: "Back")
  /// Invalid RSS feed URL
  public static let badUrl = L10n.tr("Localizable", "bad_url", fallback: "Invalid RSS feed URL")
  /// Author's blog
  public static let blog = L10n.tr("Localizable", "blog", fallback: "Author's blog")
  /// Done
  public static let done = L10n.tr("Localizable", "done", fallback: "Done")
  /// Feed
  public static let feed = L10n.tr("Localizable", "feed", fallback: "Feed")
  /// Used libraries
  public static let libraries = L10n.tr("Localizable", "libraries", fallback: "Used libraries")
  /// Logo URL
  public static let logoUrl = L10n.tr("Localizable", "logo_url", fallback: "Logo URL")
  /// Network problem has occured
  public static let networkProblem = L10n.tr("Localizable", "network_problem", fallback: "Network problem has occured")
  /// Optional
  public static let `optional` = L10n.tr("Localizable", "optional", fallback: "Optional")
  /// Pull to refresh
  public static let pullToRefresh = L10n.tr("Localizable", "pull_to_refresh", fallback: "Pull to refresh")
  /// RSS URL
  public static let rssUrl = L10n.tr("Localizable", "rss_url", fallback: "RSS URL")
  /// Localizable.strings
  ///  iOSSampleApp
  ///  
  ///  Created by Igor Kulman on 03/10/2017.
  ///  Copyright © 2017 Igor Kulman. All rights reserved.
  public static let selectSource = L10n.tr("Localizable", "select_source", fallback: "Select source")
  /// Title
  public static let title = L10n.tr("Localizable", "title", fallback: "Title")
  /// Url
  public static let url = L10n.tr("Localizable", "url", fallback: "Url")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type

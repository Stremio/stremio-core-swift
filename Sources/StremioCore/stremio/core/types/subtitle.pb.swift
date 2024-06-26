// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stremio/core/types/subtitle.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Stremio_Core_Types_Subtitle {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var lang: String {
    get {return _lang ?? String()}
    set {_lang = newValue}
  }
  /// Returns true if `lang` has been explicitly set.
  public var hasLang: Bool {return self._lang != nil}
  /// Clears the value of `lang`. Subsequent reads from it will return its default value.
  public mutating func clearLang() {self._lang = nil}

  public var url: String {
    get {return _url ?? String()}
    set {_url = newValue}
  }
  /// Returns true if `url` has been explicitly set.
  public var hasURL: Bool {return self._url != nil}
  /// Clears the value of `url`. Subsequent reads from it will return its default value.
  public mutating func clearURL() {self._url = nil}

  public var name: String {
    get {return _name ?? String()}
    set {_name = newValue}
  }
  /// Returns true if `name` has been explicitly set.
  public var hasName: Bool {return self._name != nil}
  /// Clears the value of `name`. Subsequent reads from it will return its default value.
  public mutating func clearName() {self._name = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _lang: String? = nil
  fileprivate var _url: String? = nil
  fileprivate var _name: String? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stremio_Core_Types_Subtitle: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stremio.core.types"

extension Stremio_Core_Types_Subtitle: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Subtitle"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "lang"),
    2: .same(proto: "url"),
    3: .same(proto: "name"),
  ]

  public var isInitialized: Bool {
    if self._lang == nil {return false}
    if self._url == nil {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._lang) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._url) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._lang {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._url {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._name {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Types_Subtitle, rhs: Stremio_Core_Types_Subtitle) -> Bool {
    if lhs._lang != rhs._lang {return false}
    if lhs._url != rhs._url {return false}
    if lhs._name != rhs._name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

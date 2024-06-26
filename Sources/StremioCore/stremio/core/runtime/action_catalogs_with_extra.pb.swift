// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stremio/core/runtime/action_catalogs_with_extra.proto
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

public struct Stremio_Core_Runtime_ActionCatalogsWithExtra {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var args: Stremio_Core_Runtime_ActionCatalogsWithExtra.OneOf_Args? = nil

  public var loadRange: Stremio_Core_Runtime_Range {
    get {
      if case .loadRange(let v)? = args {return v}
      return Stremio_Core_Runtime_Range()
    }
    set {args = .loadRange(newValue)}
  }

  public var loadNextPage: Int32 {
    get {
      if case .loadNextPage(let v)? = args {return v}
      return 0
    }
    set {args = .loadNextPage(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Args: Equatable {
    case loadRange(Stremio_Core_Runtime_Range)
    case loadNextPage(Int32)

    fileprivate var isInitialized: Bool {
      guard case .loadRange(let v) = self else {return true}
      return v.isInitialized
    }

  #if !swift(>=4.1)
    public static func ==(lhs: Stremio_Core_Runtime_ActionCatalogsWithExtra.OneOf_Args, rhs: Stremio_Core_Runtime_ActionCatalogsWithExtra.OneOf_Args) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.loadRange, .loadRange): return {
        guard case .loadRange(let l) = lhs, case .loadRange(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.loadNextPage, .loadNextPage): return {
        guard case .loadNextPage(let l) = lhs, case .loadNextPage(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

public struct Stremio_Core_Runtime_Range {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var start: UInt32 {
    get {return _start ?? 0}
    set {_start = newValue}
  }
  /// Returns true if `start` has been explicitly set.
  public var hasStart: Bool {return self._start != nil}
  /// Clears the value of `start`. Subsequent reads from it will return its default value.
  public mutating func clearStart() {self._start = nil}

  public var end: UInt32 {
    get {return _end ?? 0}
    set {_end = newValue}
  }
  /// Returns true if `end` has been explicitly set.
  public var hasEnd: Bool {return self._end != nil}
  /// Clears the value of `end`. Subsequent reads from it will return its default value.
  public mutating func clearEnd() {self._end = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _start: UInt32? = nil
  fileprivate var _end: UInt32? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stremio_Core_Runtime_ActionCatalogsWithExtra: @unchecked Sendable {}
extension Stremio_Core_Runtime_ActionCatalogsWithExtra.OneOf_Args: @unchecked Sendable {}
extension Stremio_Core_Runtime_Range: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stremio.core.runtime"

extension Stremio_Core_Runtime_ActionCatalogsWithExtra: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ActionCatalogsWithExtra"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "load_range"),
    2: .standard(proto: "load_next_page"),
  ]

  public var isInitialized: Bool {
    if let v = self.args, !v.isInitialized {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Stremio_Core_Runtime_Range?
        var hadOneofValue = false
        if let current = self.args {
          hadOneofValue = true
          if case .loadRange(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.args = .loadRange(v)
        }
      }()
      case 2: try {
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {
          if self.args != nil {try decoder.handleConflictingOneOf()}
          self.args = .loadNextPage(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.args {
    case .loadRange?: try {
      guard case .loadRange(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .loadNextPage?: try {
      guard case .loadNextPage(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Runtime_ActionCatalogsWithExtra, rhs: Stremio_Core_Runtime_ActionCatalogsWithExtra) -> Bool {
    if lhs.args != rhs.args {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stremio_Core_Runtime_Range: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Range"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "start"),
    2: .same(proto: "end"),
  ]

  public var isInitialized: Bool {
    if self._start == nil {return false}
    if self._end == nil {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self._start) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self._end) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._start {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._end {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Runtime_Range, rhs: Stremio_Core_Runtime_Range) -> Bool {
    if lhs._start != rhs._start {return false}
    if lhs._end != rhs._end {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

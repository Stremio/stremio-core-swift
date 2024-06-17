// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stremio/core/models/addon_details.proto
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

public struct Stremio_Core_Models_AddonDetails {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var selected: Stremio_Core_Models_AddonDetails.Selected {
    get {return _selected ?? Stremio_Core_Models_AddonDetails.Selected()}
    set {_selected = newValue}
  }
  /// Returns true if `selected` has been explicitly set.
  public var hasSelected: Bool {return self._selected != nil}
  /// Clears the value of `selected`. Subsequent reads from it will return its default value.
  public mutating func clearSelected() {self._selected = nil}

  public var localAddon: Stremio_Core_Types_Descriptor {
    get {return _localAddon ?? Stremio_Core_Types_Descriptor()}
    set {_localAddon = newValue}
  }
  /// Returns true if `localAddon` has been explicitly set.
  public var hasLocalAddon: Bool {return self._localAddon != nil}
  /// Clears the value of `localAddon`. Subsequent reads from it will return its default value.
  public mutating func clearLocalAddon() {self._localAddon = nil}

  public var remoteAddon: Stremio_Core_Models_LoadableDescriptor {
    get {return _remoteAddon ?? Stremio_Core_Models_LoadableDescriptor()}
    set {_remoteAddon = newValue}
  }
  /// Returns true if `remoteAddon` has been explicitly set.
  public var hasRemoteAddon: Bool {return self._remoteAddon != nil}
  /// Clears the value of `remoteAddon`. Subsequent reads from it will return its default value.
  public mutating func clearRemoteAddon() {self._remoteAddon = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Selected {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var transportURL: String {
      get {return _transportURL ?? String()}
      set {_transportURL = newValue}
    }
    /// Returns true if `transportURL` has been explicitly set.
    public var hasTransportURL: Bool {return self._transportURL != nil}
    /// Clears the value of `transportURL`. Subsequent reads from it will return its default value.
    public mutating func clearTransportURL() {self._transportURL = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _transportURL: String? = nil
  }

  public init() {}

  fileprivate var _selected: Stremio_Core_Models_AddonDetails.Selected? = nil
  fileprivate var _localAddon: Stremio_Core_Types_Descriptor? = nil
  fileprivate var _remoteAddon: Stremio_Core_Models_LoadableDescriptor? = nil
}

public struct Stremio_Core_Models_LoadableDescriptor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var transportURL: String {
    get {return _transportURL ?? String()}
    set {_transportURL = newValue}
  }
  /// Returns true if `transportURL` has been explicitly set.
  public var hasTransportURL: Bool {return self._transportURL != nil}
  /// Clears the value of `transportURL`. Subsequent reads from it will return its default value.
  public mutating func clearTransportURL() {self._transportURL = nil}

  public var content: Stremio_Core_Models_LoadableDescriptor.OneOf_Content? = nil

  public var loading: Stremio_Core_Models_Loading {
    get {
      if case .loading(let v)? = content {return v}
      return Stremio_Core_Models_Loading()
    }
    set {content = .loading(newValue)}
  }

  public var error: Stremio_Core_Models_Error {
    get {
      if case .error(let v)? = content {return v}
      return Stremio_Core_Models_Error()
    }
    set {content = .error(newValue)}
  }

  public var ready: Stremio_Core_Types_Descriptor {
    get {
      if case .ready(let v)? = content {return v}
      return Stremio_Core_Types_Descriptor()
    }
    set {content = .ready(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Content: Equatable {
    case loading(Stremio_Core_Models_Loading)
    case error(Stremio_Core_Models_Error)
    case ready(Stremio_Core_Types_Descriptor)

    fileprivate var isInitialized: Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch self {
      case .error: return {
        guard case .error(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      case .ready: return {
        guard case .ready(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      default: return true
      }
    }

  #if !swift(>=4.1)
    public static func ==(lhs: Stremio_Core_Models_LoadableDescriptor.OneOf_Content, rhs: Stremio_Core_Models_LoadableDescriptor.OneOf_Content) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.loading, .loading): return {
        guard case .loading(let l) = lhs, case .loading(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.error, .error): return {
        guard case .error(let l) = lhs, case .error(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.ready, .ready): return {
        guard case .ready(let l) = lhs, case .ready(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _transportURL: String? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stremio_Core_Models_AddonDetails: @unchecked Sendable {}
extension Stremio_Core_Models_AddonDetails.Selected: @unchecked Sendable {}
extension Stremio_Core_Models_LoadableDescriptor: @unchecked Sendable {}
extension Stremio_Core_Models_LoadableDescriptor.OneOf_Content: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stremio.core.models"

extension Stremio_Core_Models_AddonDetails: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AddonDetails"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "selected"),
    2: .standard(proto: "local_addon"),
    3: .standard(proto: "remote_addon"),
  ]

  public var isInitialized: Bool {
    if let v = self._selected, !v.isInitialized {return false}
    if let v = self._localAddon, !v.isInitialized {return false}
    if let v = self._remoteAddon, !v.isInitialized {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._selected) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._localAddon) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._remoteAddon) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._selected {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._localAddon {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._remoteAddon {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Models_AddonDetails, rhs: Stremio_Core_Models_AddonDetails) -> Bool {
    if lhs._selected != rhs._selected {return false}
    if lhs._localAddon != rhs._localAddon {return false}
    if lhs._remoteAddon != rhs._remoteAddon {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stremio_Core_Models_AddonDetails.Selected: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Stremio_Core_Models_AddonDetails.protoMessageName + ".Selected"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "transport_url"),
  ]

  public var isInitialized: Bool {
    if self._transportURL == nil {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._transportURL) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._transportURL {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Models_AddonDetails.Selected, rhs: Stremio_Core_Models_AddonDetails.Selected) -> Bool {
    if lhs._transportURL != rhs._transportURL {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stremio_Core_Models_LoadableDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LoadableDescriptor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "transport_url"),
    2: .same(proto: "loading"),
    3: .same(proto: "error"),
    4: .same(proto: "ready"),
  ]

  public var isInitialized: Bool {
    if self._transportURL == nil {return false}
    if let v = self.content, !v.isInitialized {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._transportURL) }()
      case 2: try {
        var v: Stremio_Core_Models_Loading?
        var hadOneofValue = false
        if let current = self.content {
          hadOneofValue = true
          if case .loading(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.content = .loading(v)
        }
      }()
      case 3: try {
        var v: Stremio_Core_Models_Error?
        var hadOneofValue = false
        if let current = self.content {
          hadOneofValue = true
          if case .error(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.content = .error(v)
        }
      }()
      case 4: try {
        var v: Stremio_Core_Types_Descriptor?
        var hadOneofValue = false
        if let current = self.content {
          hadOneofValue = true
          if case .ready(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.content = .ready(v)
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
    try { if let v = self._transportURL {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    switch self.content {
    case .loading?: try {
      guard case .loading(let v)? = self.content else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .error?: try {
      guard case .error(let v)? = self.content else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .ready?: try {
      guard case .ready(let v)? = self.content else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Models_LoadableDescriptor, rhs: Stremio_Core_Models_LoadableDescriptor) -> Bool {
    if lhs._transportURL != rhs._transportURL {return false}
    if lhs.content != rhs.content {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
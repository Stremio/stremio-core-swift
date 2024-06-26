// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stremio/core/types/meta_item_preview.proto
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

public struct Stremio_Core_Types_MetaItemPreview {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String {
    get {return _storage._id ?? String()}
    set {_uniqueStorage()._id = newValue}
  }
  /// Returns true if `id` has been explicitly set.
  public var hasID: Bool {return _storage._id != nil}
  /// Clears the value of `id`. Subsequent reads from it will return its default value.
  public mutating func clearID() {_uniqueStorage()._id = nil}

  public var type: String {
    get {return _storage._type ?? String()}
    set {_uniqueStorage()._type = newValue}
  }
  /// Returns true if `type` has been explicitly set.
  public var hasType: Bool {return _storage._type != nil}
  /// Clears the value of `type`. Subsequent reads from it will return its default value.
  public mutating func clearType() {_uniqueStorage()._type = nil}

  public var name: String {
    get {return _storage._name ?? String()}
    set {_uniqueStorage()._name = newValue}
  }
  /// Returns true if `name` has been explicitly set.
  public var hasName: Bool {return _storage._name != nil}
  /// Clears the value of `name`. Subsequent reads from it will return its default value.
  public mutating func clearName() {_uniqueStorage()._name = nil}

  public var posterShape: Stremio_Core_Types_PosterShape {
    get {return _storage._posterShape ?? .poster}
    set {_uniqueStorage()._posterShape = newValue}
  }
  /// Returns true if `posterShape` has been explicitly set.
  public var hasPosterShape: Bool {return _storage._posterShape != nil}
  /// Clears the value of `posterShape`. Subsequent reads from it will return its default value.
  public mutating func clearPosterShape() {_uniqueStorage()._posterShape = nil}

  public var poster: String {
    get {return _storage._poster ?? String()}
    set {_uniqueStorage()._poster = newValue}
  }
  /// Returns true if `poster` has been explicitly set.
  public var hasPoster: Bool {return _storage._poster != nil}
  /// Clears the value of `poster`. Subsequent reads from it will return its default value.
  public mutating func clearPoster() {_uniqueStorage()._poster = nil}

  public var background: String {
    get {return _storage._background ?? String()}
    set {_uniqueStorage()._background = newValue}
  }
  /// Returns true if `background` has been explicitly set.
  public var hasBackground: Bool {return _storage._background != nil}
  /// Clears the value of `background`. Subsequent reads from it will return its default value.
  public mutating func clearBackground() {_uniqueStorage()._background = nil}

  public var logo: String {
    get {return _storage._logo ?? String()}
    set {_uniqueStorage()._logo = newValue}
  }
  /// Returns true if `logo` has been explicitly set.
  public var hasLogo: Bool {return _storage._logo != nil}
  /// Clears the value of `logo`. Subsequent reads from it will return its default value.
  public mutating func clearLogo() {_uniqueStorage()._logo = nil}

  public var description_p: String {
    get {return _storage._description_p ?? String()}
    set {_uniqueStorage()._description_p = newValue}
  }
  /// Returns true if `description_p` has been explicitly set.
  public var hasDescription_p: Bool {return _storage._description_p != nil}
  /// Clears the value of `description_p`. Subsequent reads from it will return its default value.
  public mutating func clearDescription_p() {_uniqueStorage()._description_p = nil}

  public var releaseInfo: String {
    get {return _storage._releaseInfo ?? String()}
    set {_uniqueStorage()._releaseInfo = newValue}
  }
  /// Returns true if `releaseInfo` has been explicitly set.
  public var hasReleaseInfo: Bool {return _storage._releaseInfo != nil}
  /// Clears the value of `releaseInfo`. Subsequent reads from it will return its default value.
  public mutating func clearReleaseInfo() {_uniqueStorage()._releaseInfo = nil}

  public var runtime: String {
    get {return _storage._runtime ?? String()}
    set {_uniqueStorage()._runtime = newValue}
  }
  /// Returns true if `runtime` has been explicitly set.
  public var hasRuntime: Bool {return _storage._runtime != nil}
  /// Clears the value of `runtime`. Subsequent reads from it will return its default value.
  public mutating func clearRuntime() {_uniqueStorage()._runtime = nil}

  public var released: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._released ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._released = newValue}
  }
  /// Returns true if `released` has been explicitly set.
  public var hasReleased: Bool {return _storage._released != nil}
  /// Clears the value of `released`. Subsequent reads from it will return its default value.
  public mutating func clearReleased() {_uniqueStorage()._released = nil}

  public var links: [Stremio_Core_Types_LinkPreview] {
    get {return _storage._links}
    set {_uniqueStorage()._links = newValue}
  }

  public var behaviorHints: Stremio_Core_Types_MetaItemBehaviorHints {
    get {return _storage._behaviorHints ?? Stremio_Core_Types_MetaItemBehaviorHints()}
    set {_uniqueStorage()._behaviorHints = newValue}
  }
  /// Returns true if `behaviorHints` has been explicitly set.
  public var hasBehaviorHints: Bool {return _storage._behaviorHints != nil}
  /// Clears the value of `behaviorHints`. Subsequent reads from it will return its default value.
  public mutating func clearBehaviorHints() {_uniqueStorage()._behaviorHints = nil}

  public var deepLinks: Stremio_Core_Types_MetaItemDeepLinks {
    get {return _storage._deepLinks ?? Stremio_Core_Types_MetaItemDeepLinks()}
    set {_uniqueStorage()._deepLinks = newValue}
  }
  /// Returns true if `deepLinks` has been explicitly set.
  public var hasDeepLinks: Bool {return _storage._deepLinks != nil}
  /// Clears the value of `deepLinks`. Subsequent reads from it will return its default value.
  public mutating func clearDeepLinks() {_uniqueStorage()._deepLinks = nil}

  public var inLibrary: Bool {
    get {return _storage._inLibrary ?? false}
    set {_uniqueStorage()._inLibrary = newValue}
  }
  /// Returns true if `inLibrary` has been explicitly set.
  public var hasInLibrary: Bool {return _storage._inLibrary != nil}
  /// Clears the value of `inLibrary`. Subsequent reads from it will return its default value.
  public mutating func clearInLibrary() {_uniqueStorage()._inLibrary = nil}

  public var inCinema: Bool {
    get {return _storage._inCinema ?? false}
    set {_uniqueStorage()._inCinema = newValue}
  }
  /// Returns true if `inCinema` has been explicitly set.
  public var hasInCinema: Bool {return _storage._inCinema != nil}
  /// Clears the value of `inCinema`. Subsequent reads from it will return its default value.
  public mutating func clearInCinema() {_uniqueStorage()._inCinema = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Stremio_Core_Types_LinkPreview {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var name: String {
    get {return _name ?? String()}
    set {_name = newValue}
  }
  /// Returns true if `name` has been explicitly set.
  public var hasName: Bool {return self._name != nil}
  /// Clears the value of `name`. Subsequent reads from it will return its default value.
  public mutating func clearName() {self._name = nil}

  public var category: String {
    get {return _category ?? String()}
    set {_category = newValue}
  }
  /// Returns true if `category` has been explicitly set.
  public var hasCategory: Bool {return self._category != nil}
  /// Clears the value of `category`. Subsequent reads from it will return its default value.
  public mutating func clearCategory() {self._category = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _name: String? = nil
  fileprivate var _category: String? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stremio_Core_Types_MetaItemPreview: @unchecked Sendable {}
extension Stremio_Core_Types_LinkPreview: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stremio.core.types"

extension Stremio_Core_Types_MetaItemPreview: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MetaItemPreview"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "type"),
    3: .same(proto: "name"),
    4: .standard(proto: "poster_shape"),
    5: .same(proto: "poster"),
    6: .same(proto: "background"),
    7: .same(proto: "logo"),
    8: .same(proto: "description"),
    9: .standard(proto: "release_info"),
    10: .same(proto: "runtime"),
    11: .same(proto: "released"),
    12: .same(proto: "links"),
    15: .standard(proto: "behavior_hints"),
    16: .standard(proto: "deep_links"),
    17: .standard(proto: "in_library"),
    18: .standard(proto: "in_cinema"),
  ]

  fileprivate class _StorageClass {
    var _id: String? = nil
    var _type: String? = nil
    var _name: String? = nil
    var _posterShape: Stremio_Core_Types_PosterShape? = nil
    var _poster: String? = nil
    var _background: String? = nil
    var _logo: String? = nil
    var _description_p: String? = nil
    var _releaseInfo: String? = nil
    var _runtime: String? = nil
    var _released: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _links: [Stremio_Core_Types_LinkPreview] = []
    var _behaviorHints: Stremio_Core_Types_MetaItemBehaviorHints? = nil
    var _deepLinks: Stremio_Core_Types_MetaItemDeepLinks? = nil
    var _inLibrary: Bool? = nil
    var _inCinema: Bool? = nil

    #if swift(>=5.10)
      // This property is used as the initial default value for new instances of the type.
      // The type itself is protecting the reference to its storage via CoW semantics.
      // This will force a copy to be made of this reference when the first mutation occurs;
      // hence, it is safe to mark this as `nonisolated(unsafe)`.
      static nonisolated(unsafe) let defaultInstance = _StorageClass()
    #else
      static let defaultInstance = _StorageClass()
    #endif

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _type = source._type
      _name = source._name
      _posterShape = source._posterShape
      _poster = source._poster
      _background = source._background
      _logo = source._logo
      _description_p = source._description_p
      _releaseInfo = source._releaseInfo
      _runtime = source._runtime
      _released = source._released
      _links = source._links
      _behaviorHints = source._behaviorHints
      _deepLinks = source._deepLinks
      _inLibrary = source._inLibrary
      _inCinema = source._inCinema
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._id == nil {return false}
      if _storage._type == nil {return false}
      if _storage._name == nil {return false}
      if _storage._posterShape == nil {return false}
      if _storage._behaviorHints == nil {return false}
      if _storage._deepLinks == nil {return false}
      if _storage._inLibrary == nil {return false}
      if _storage._inCinema == nil {return false}
      if !SwiftProtobuf.Internal.areAllInitialized(_storage._links) {return false}
      if let v = _storage._behaviorHints, !v.isInitialized {return false}
      return true
    }
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._id) }()
        case 2: try { try decoder.decodeSingularStringField(value: &_storage._type) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._name) }()
        case 4: try { try decoder.decodeSingularEnumField(value: &_storage._posterShape) }()
        case 5: try { try decoder.decodeSingularStringField(value: &_storage._poster) }()
        case 6: try { try decoder.decodeSingularStringField(value: &_storage._background) }()
        case 7: try { try decoder.decodeSingularStringField(value: &_storage._logo) }()
        case 8: try { try decoder.decodeSingularStringField(value: &_storage._description_p) }()
        case 9: try { try decoder.decodeSingularStringField(value: &_storage._releaseInfo) }()
        case 10: try { try decoder.decodeSingularStringField(value: &_storage._runtime) }()
        case 11: try { try decoder.decodeSingularMessageField(value: &_storage._released) }()
        case 12: try { try decoder.decodeRepeatedMessageField(value: &_storage._links) }()
        case 15: try { try decoder.decodeSingularMessageField(value: &_storage._behaviorHints) }()
        case 16: try { try decoder.decodeSingularMessageField(value: &_storage._deepLinks) }()
        case 17: try { try decoder.decodeSingularBoolField(value: &_storage._inLibrary) }()
        case 18: try { try decoder.decodeSingularBoolField(value: &_storage._inCinema) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._id {
        try visitor.visitSingularStringField(value: v, fieldNumber: 1)
      } }()
      try { if let v = _storage._type {
        try visitor.visitSingularStringField(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._name {
        try visitor.visitSingularStringField(value: v, fieldNumber: 3)
      } }()
      try { if let v = _storage._posterShape {
        try visitor.visitSingularEnumField(value: v, fieldNumber: 4)
      } }()
      try { if let v = _storage._poster {
        try visitor.visitSingularStringField(value: v, fieldNumber: 5)
      } }()
      try { if let v = _storage._background {
        try visitor.visitSingularStringField(value: v, fieldNumber: 6)
      } }()
      try { if let v = _storage._logo {
        try visitor.visitSingularStringField(value: v, fieldNumber: 7)
      } }()
      try { if let v = _storage._description_p {
        try visitor.visitSingularStringField(value: v, fieldNumber: 8)
      } }()
      try { if let v = _storage._releaseInfo {
        try visitor.visitSingularStringField(value: v, fieldNumber: 9)
      } }()
      try { if let v = _storage._runtime {
        try visitor.visitSingularStringField(value: v, fieldNumber: 10)
      } }()
      try { if let v = _storage._released {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      } }()
      if !_storage._links.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._links, fieldNumber: 12)
      }
      try { if let v = _storage._behaviorHints {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 15)
      } }()
      try { if let v = _storage._deepLinks {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 16)
      } }()
      try { if let v = _storage._inLibrary {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 17)
      } }()
      try { if let v = _storage._inCinema {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 18)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Types_MetaItemPreview, rhs: Stremio_Core_Types_MetaItemPreview) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._type != rhs_storage._type {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._posterShape != rhs_storage._posterShape {return false}
        if _storage._poster != rhs_storage._poster {return false}
        if _storage._background != rhs_storage._background {return false}
        if _storage._logo != rhs_storage._logo {return false}
        if _storage._description_p != rhs_storage._description_p {return false}
        if _storage._releaseInfo != rhs_storage._releaseInfo {return false}
        if _storage._runtime != rhs_storage._runtime {return false}
        if _storage._released != rhs_storage._released {return false}
        if _storage._links != rhs_storage._links {return false}
        if _storage._behaviorHints != rhs_storage._behaviorHints {return false}
        if _storage._deepLinks != rhs_storage._deepLinks {return false}
        if _storage._inLibrary != rhs_storage._inLibrary {return false}
        if _storage._inCinema != rhs_storage._inCinema {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stremio_Core_Types_LinkPreview: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LinkPreview"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "category"),
  ]

  public var isInitialized: Bool {
    if self._name == nil {return false}
    if self._category == nil {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._category) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._name {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._category {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Types_LinkPreview, rhs: Stremio_Core_Types_LinkPreview) -> Bool {
    if lhs._name != rhs._name {return false}
    if lhs._category != rhs._category {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

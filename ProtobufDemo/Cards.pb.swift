// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Cards.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Card: SwiftProtobuf.Message {
  static let protoMessageName: String = "Card"

  var s: Card.Suit = .clubs

  var rank: Card.Rank = .nine

  var points: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Suit: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case clubs // = 0
    case hearts // = 1
    case spades // = 2
    case diamonds // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .clubs
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .clubs
      case 1: self = .hearts
      case 2: self = .spades
      case 3: self = .diamonds
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .clubs: return 0
      case .hearts: return 1
      case .spades: return 2
      case .diamonds: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  enum Rank: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case nine // = 0
    case ten // = 1
    case jack // = 2
    case queen // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .nine
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .nine
      case 1: self = .ten
      case 2: self = .jack
      case 3: self = .queen
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .nine: return 0
      case .ten: return 1
      case .jack: return 2
      case .queen: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.s)
      case 2: try decoder.decodeSingularEnumField(value: &self.rank)
      case 3: try decoder.decodeSingularInt32Field(value: &self.points)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.s != .clubs {
      try visitor.visitSingularEnumField(value: self.s, fieldNumber: 1)
    }
    if self.rank != .nine {
      try visitor.visitSingularEnumField(value: self.rank, fieldNumber: 2)
    }
    if self.points != 0 {
      try visitor.visitSingularInt32Field(value: self.points, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct Deck: SwiftProtobuf.Message {
  static let protoMessageName: String = "Deck"

  var cards: [Card] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.cards)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cards.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.cards, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Card: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "s"),
    2: .same(proto: "rank"),
    3: .same(proto: "points"),
  ]

  func _protobuf_generated_isEqualTo(other: Card) -> Bool {
    if self.s != other.s {return false}
    if self.rank != other.rank {return false}
    if self.points != other.points {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Card.Suit: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CLUBS"),
    1: .same(proto: "HEARTS"),
    2: .same(proto: "SPADES"),
    3: .same(proto: "DIAMONDS"),
  ]
}

extension Card.Rank: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NINE"),
    1: .same(proto: "TEN"),
    2: .same(proto: "JACK"),
    3: .same(proto: "QUEEN"),
  ]
}

extension Deck: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "cards"),
  ]

  func _protobuf_generated_isEqualTo(other: Deck) -> Bool {
    if self.cards != other.cards {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

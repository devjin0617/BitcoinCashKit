//
//  OP_INVALIDOPCODE.swift
//  BitcoinCashKit
//
//  Created by Shun Usami on 2018/07/27.
//  Copyright © 2018 BitcoinCashKit developers. All rights reserved.
//

import Foundation

public struct OpInvalidOpCode: OpCodeProtocol {
    public var value: UInt8 { return 0xff }
    public var name: String { return "OP_INVALIDOPCODE" }
}
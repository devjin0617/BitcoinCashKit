//
//  OP_DUP.swift
//  BitcoinKit
//
//  Created by Shun Usami on 2018/07/27.
//  Copyright © 2018 BitcoinKit-cash developers. All rights reserved.
//

import Foundation

public class OpDuplicate: OpCode {
    override public var value: UInt8 { return 0x76 }
    override public var name: String { return "OP_DUP" }

    override public func execute(_ context: ScriptExecutionContext) throws {
        try super.execute(context)
        // (x -- x x)
        guard context.stack.count >= 1 else {
            throw ScriptMachineError.opcodeRequiresItemsOnStack(1)
        }
        try context.pushData(context.data(at: -1))
    }
}

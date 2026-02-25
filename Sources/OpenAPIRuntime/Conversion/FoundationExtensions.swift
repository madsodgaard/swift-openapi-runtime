//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftOpenAPIGenerator open source project
//
// Copyright (c) 2023 Apple Inc. and the SwiftOpenAPIGenerator project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftOpenAPIGenerator project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

#if canImport(FoundationEssentials)
import FoundationEssentials
#else
import Foundation
#endif

extension StringProtocol {

    /// Returns the string with leading and trailing whitespace (such as spaces
    /// and newlines) removed.
    var trimmingLeadingAndTrailingSpaces: String {
        guard let startIndex = self.firstIndex(where: { !$0.isWhitespace }) else {
            return ""
        }

        let endIndex = self.lastIndex(where: { !$0.isWhitespace })!

        // Slice the original string and convert it back to a new String
        return String(self[startIndex...endIndex])
    }
}

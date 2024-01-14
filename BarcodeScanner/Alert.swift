//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Ahmed Hazzaa on 15/01/2024.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: String
    var message: String
    var actionButton: Alert.Button
}

struct AlertContext {
    static let invalidInput = AlertItem(
        title: "Invalid Input",
        message: "There is an error with the camera",
        actionButton: Alert.Button.default(Text("Ok"))
    )
    
    static let invalidBarcodeScanned = AlertItem(
        title: "Invalid Scanned Type",
        message: "There is an error with the scanned code",
        actionButton: Alert.Button.default(Text("Ok"))
    )
}

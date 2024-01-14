//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Ahmed Hazzaa on 15/01/2024.
//

import Foundation

class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
}

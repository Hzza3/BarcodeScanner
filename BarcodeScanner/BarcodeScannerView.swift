//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Ahmed Hazzaa on 13/01/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
   
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem).frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 60)
                Label("Scanned Barcode: ", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.scannedCode.isEmpty ? "Not Yet Scanned" : viewModel.scannedCode)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundColor(viewModel.scannedCode.isEmpty ? .red : .green)
                    .padding()
            }.navigationTitle("Barcode Scanner")
                .alert(item: $viewModel.alertItem) { alertItem in
                    Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.actionButton)
                }
        }
    }
}

#Preview {
    BarcodeScannerView()
}

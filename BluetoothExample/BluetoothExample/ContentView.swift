//
//  ContentView.swift
//  BluetoothExample
//
//  Created by Luis Alejandro Ramirez Suarez on 20/01/25.
//

import SwiftUI

struct BluetoothView: View {
    @StateObject private var bluetoothManager = BluetoothManager()
    
    var body: some View {
        NavigationView {
            List(bluetoothManager.discoveredDevices, id: \.self) { device in
                Text(device)
            }
            .navigationTitle("Discovered Devices")
            .onAppear {
                bluetoothManager.discoveredDevices.removeAll()
            }
        }
    }
}


#Preview {
    BluetoothView()
}

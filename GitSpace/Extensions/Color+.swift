//
//  Color+.swift
//  GitSpace
//
//  Created by 이승준 on 2023/01/23.
//

import SwiftUI

extension Color {
	init(hex: Int, opacity: Double = 1.0) {
		let red = Double((hex >> 16) & 0xff) / 255
		let green = Double((hex >> 8) & 0xff) / 255
		let blue = Double((hex >> 0) & 0xff) / 255
		
		self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
	}
	
	init(hex: String) {
		let scanner = Scanner(string: hex)
		_ = scanner.scanString("#")
		
		var rgb: UInt64 = 0
		scanner.scanHexInt64(&rgb)
		
		let r = Double((rgb >> 16) & 0xFF) / 255.0
		let g = Double((rgb >>  8) & 0xFF) / 255.0
		let b = Double((rgb >>  0) & 0xFF) / 255.0
		self.init(red: r, green: g, blue: b)
	}
}

extension Color {
	static var gsGreenPrimary: Self {
		.init(hex: "#BDFF01")
	}
	
	static var gsGreenPressed: Self {
		.init(hex: "#E0FF66")
	}
	
	static var gsYelloPrimary: Self {
		.init(hex: "#FAFF10")
	}
	
	static let captionRed = Color(hex : "#cc0000")
	static let captionGreen = Color(hex : "#6aa84f")
	static let textAccent = Color(hex : "#efbb1a")
	static let backAccent = Color(hex: "#FFE577")
	
}
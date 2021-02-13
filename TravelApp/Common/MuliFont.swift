//
//  MuliFont.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 12/02/2021.
//

import SwiftUI

enum Muli {
    static func bold(size: CGFloat) -> Font {
        Font.custom("Muli-Bold", size: size)
    }
    
    static func boldItalic(size: CGFloat) -> Font {
        Font.custom("Muli-BoldItalic", size: size)
    }
    
    static func extraLight(size: CGFloat) -> Font {
        Font.custom("Muli-ExtraLight", size: size)
    }
    
    static func extraLightItalic(size: CGFloat) -> Font {
        Font.custom("Muli-ExtraLightItalic", size: size)
    }
    
    static func italic(size: CGFloat) -> Font {
        Font.custom("Muli-Italic", size: size)
    }
    
    static func light(size: CGFloat) -> Font {
        Font.custom("Muli-Light", size: size)
    }
    
    static func lightItalic(size: CGFloat) -> Font {
        Font.custom("Muli-LightItalic", size: size)
    }
    
    static func semiBoldItalic(size: CGFloat) -> Font {
        Font.custom("Muli-Semi-BoldItalic", size: size)
    }
    
    static func semiBold(size: CGFloat) -> Font {
        Font.custom("Muli-SemiBold", size: size)
    }
    
    static func regular(size: CGFloat) -> Font {
        Font.custom("Muli", size: size)
    }
}

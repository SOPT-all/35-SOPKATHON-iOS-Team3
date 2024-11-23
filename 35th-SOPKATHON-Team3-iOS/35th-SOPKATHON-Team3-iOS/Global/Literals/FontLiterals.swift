//
//  FontLiterals.swift
//  35th-SOPKATHON-Team3-iOS
//
//  Created by 조혜린 on 11/23/24.
//

import UIKit

enum FontWeight: String {
    case pretendardRegular = "Pretendard-Regular"
    case pretendardMedium = "Pretendard-Medium"
    case pretendardSemiBold = "Pretendard-SemiBold"
}

enum Heading {
    case h1Semibold
    case h2Semibold
    case h3Semibold
    case h4Semibold
    case h5Semibold
    case h6Semibold
}

enum Title {
    case t1Semibold
    case t2Semibold
    case t3Semibold
    case t4Semibold
}

enum Body {
    case b1Medium
    case b2Medium
    case b3Medium
    case b4Medium
    case b5Medium
    case b1Regular
    case b2Regular
    case b3Regular
    case b4Regular
    case b5Regular
}

enum Label {
    case l1Semibold
    case l2Semibold
    case l3Semibold
}

extension UIFont {

    static func pretendardFont(weight: FontWeight, ofSize fontSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: weight.rawValue, size: fontSize) else { fatalError("Font not found") }
        return font
    }
    
    static func head(_ style: Heading) -> UIFont {
        switch style {
        case .h1Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 40)
        case .h2Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 32)
        case .h3Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 28)
        case .h4Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 24)
        case .h5Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 20)
        case .h6Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 16)
        }
    }
    
    static func title(_ style: Title) -> UIFont {
        switch style {
        case .t1Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 28)
        case .t2Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 24)
        case .t3Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 20)
        case .t4Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 18)
        }
    }
    
    static func body(_ style: Body) -> UIFont {
        switch style {
        case .b1Medium: return pretendardFont(weight: .pretendardMedium, ofSize: 24)
        case .b2Medium: return pretendardFont(weight: .pretendardMedium, ofSize: 20)
        case .b3Medium: return pretendardFont(weight: .pretendardMedium, ofSize: 16)
        case .b4Medium: return pretendardFont(weight: .pretendardMedium, ofSize: 14)
        case .b5Medium: return pretendardFont(weight: .pretendardMedium, ofSize: 12)
        case .b1Regular: return pretendardFont(weight: .pretendardRegular, ofSize: 24)
        case .b2Regular: return pretendardFont(weight: .pretendardRegular, ofSize: 20)
        case .b3Regular: return pretendardFont(weight: .pretendardRegular, ofSize: 16)
        case .b4Regular: return pretendardFont(weight: .pretendardRegular, ofSize: 14)
        case .b5Regular: return pretendardFont(weight: .pretendardRegular, ofSize: 12)
        }
    }
    
    static func caption(_ style: Label) -> UIFont {
        switch style {
        case .l1Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 16)
        case .l2Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 14)
        case .l3Semibold: return pretendardFont(weight: .pretendardSemiBold, ofSize: 12)
        }
    }
    
}

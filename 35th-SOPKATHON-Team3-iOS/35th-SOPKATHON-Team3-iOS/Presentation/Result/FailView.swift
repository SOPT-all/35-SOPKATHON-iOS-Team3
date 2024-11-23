//
//  FailView.swift
//  35th-SOPKATHON-Team3-iOS
//
//  Created by 송여경 on 11/23/24.
//

import UIKit

import SnapKit
import Then

final class FailView: UIView {
    
    private let excuseButton = UIButton().then {
        $0.titleLabel?.font = .body(.b4SemiBold)
        $0.setTitle("집 갈 핑계 만들기", for: .normal)
        $0.setTitleColor(.primary500, for: .normal)
        $0.layer.cornerRadius = 10
        $0.backgroundColor = .primary200
    }
    
    private let keepGoingButton = UIButton().then {
        $0.titleLabel?.font = .body(.b4SemiBold)
        $0.setTitle("그래도 마셔볼래...", for: .normal)
        $0.setTitleColor(.gray70, for: .normal)
        $0.layer.cornerRadius = 10
        $0.backgroundColor = .gray10
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        self.addSubviews(
            excuseButton,
            keepGoingButton
        )
    }
    
    private func setLayout() {
        
        excuseButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(111)
            $0.height.equalTo(58)
            $0.width.equalTo(314)
        }
        
        keepGoingButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(45)
            $0.height.equalTo(58)
            $0.width.equalTo(314)
        }
    }
    
}

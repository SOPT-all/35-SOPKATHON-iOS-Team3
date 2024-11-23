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
    
    private let failLabel = UILabel().then {
        $0.text = "테스트 실패"
        $0.textColor = .gray100
        $0.font = .head(.h4Bold)
    }
    
    private let failMidLabel = UILabel().then {
        $0.text = "이제는 술잔을 내려놓고"
        $0.textColor = .gray100
        $0.font = .head(.h4Bold)
    }
    
    private let failEndLabel = UILabel().then {
        $0.text = "핑계를 대야 할 때!"
        $0.textColor = .gray100
        $0.font = .head(.h4Bold)
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
            keepGoingButton,
            failLabel,
            failMidLabel,
            failEndLabel
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
        
        failLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.leading.equalToSuperview().offset(126.5)
        }
        
        failMidLabel.snp.makeConstraints {
            $0.top.equalTo(failLabel.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
            $0.leading.equalToSuperview().offset(79.5)
        }
        
        failEndLabel.snp.makeConstraints {
            $0.top.equalTo(failMidLabel.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
            $0.leading.equalToSuperview().offset(104)
        }
        
    }
    
}

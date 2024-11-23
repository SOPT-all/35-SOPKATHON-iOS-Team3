//
//  MainViewController.swift
//  35th-SOPKATHON-Team3-iOS
//
//  Created by 조혜린 on 11/23/24.
//

import UIKit

import SnapKit
import Then

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    var drunkCups: Int = 0
    
    private let guideLabel = UILabel().then {
        $0.text = "한 잔 마실 때마다 눌러주세요!"
        $0.font = .pretendardFont(weight: .pretendardSemiBold, ofSize: 20)
        $0.textColor = .gray100
    }
    
    private let drinkingLabelStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.alignment = .center
    }
    
    private let drankAmountLabel = UILabel().then {
        $0.font = .pretendardFont(weight: .pretendardSemiBold, ofSize: 30)
        $0.text = "0"
        $0.textColor = .gray100
    }
    
    private let drankCupLabel = UILabel().then {
        $0.font = .pretendardFont(weight: .pretendardSemiBold, ofSize: 16)
        $0.text = "잔"
        $0.textColor = .gray100
    }
    
    private let slashLabel = UILabel().then {
        $0.font = .pretendardFont(weight: .pretendardSemiBold, ofSize: 30)
        $0.text = "/"
        $0.textColor = .gray100
    }
    private let capacityAmountLabel = UILabel().then {
        $0.font = .pretendardFont(weight: .pretendardSemiBold, ofSize: 30)
        $0.text = "16"
        $0.textColor = .gray100
        
    }
    
    private let capacityCupLabel = UILabel().then {
        $0.font = .pretendardFont(weight: .pretendardSemiBold, ofSize: 16)
        $0.text = "잔"
        $0.textColor = .gray100
    }
    
    private let tapButton = UIButton().then {
        var config = UIButton.Configuration.filled()
        let attributes: [NSAttributedString.Key: Any] = [.font : UIFont.head(.h1Semibold)]
        let attributedTitle = AttributedString(NSAttributedString(string: "TAP", attributes: attributes))
        
        config.attributedTitle = attributedTitle
        config.baseBackgroundColor = .primary500
        config.background.cornerRadius = 82
        config.background.strokeColor = .primary200
        config.background.strokeWidth = 11.14
        $0.configuration = config
    }
    
    private let scrollView = UIScrollView()
    
    private let bottleStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.distribution = .equalSpacing
        $0.spacing = 12
    }
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setHierarchy()
        setConstraints()
    }
    
    private func setUI() {
        view.backgroundColor = .gray0
    }
    
    private func setHierarchy() {
        view.addSubviews(
            guideLabel,
            drinkingLabelStackView,
            tapButton)
        
        drinkingLabelStackView.addArrangedSubviews(
            drankAmountLabel,
            drankCupLabel,
            slashLabel,
            capacityAmountLabel,
            capacityCupLabel)
    }
    
    private func setConstraints() {
        guideLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(144)
            $0.centerX.equalToSuperview()
        }
        
        drinkingLabelStackView.snp.makeConstraints {
            $0.top.equalTo(guideLabel.snp.bottom).offset(40)
            $0.centerX.equalToSuperview()
        }
        
        tapButton.snp.makeConstraints {
            $0.top.equalTo(drinkingLabelStackView.snp.bottom).offset(76)
            $0.centerX.equalToSuperview()
            $0.size.equalTo(164)
        }
    }
    
    private func addBottle() {
        bottleStackView.addArrangedSubview(UIImageView())
    }
}

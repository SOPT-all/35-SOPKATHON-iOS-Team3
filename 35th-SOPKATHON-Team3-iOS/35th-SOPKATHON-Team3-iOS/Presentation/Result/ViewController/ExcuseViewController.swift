//
//  ExcuseViewController.swift
//  35th-SOPKATHON-Team3-iOS
//
//  Created by 송여경 on 11/23/24.
//

import UIKit

import SnapKit
import Then

class ExcuseViewController: UIViewController {
    
    private let keepGoingButton = UIButton().then {
        $0.titleLabel?.font = .head(.h4Semibold)
        $0.setTitle("그냥 마시기", for: .normal)
        $0.setTitleColor(.primary200, for: .normal)
        $0.layer.cornerRadius = 29
        $0.backgroundColor = .primary500
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
        setUI()
        setLayout()
    }
    
    private func setStyle() {
        self.view.backgroundColor = .primary200
    }
    
    private func setUI() {
        self.view.addSubviews(keepGoingButton)
    }
    
    private func setLayout() {
        keepGoingButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(50)
            $0.leading.equalTo(31)
            $0.width.equalTo(314)
            $0.height.equalTo(56)
        }
    }
        
}

#Preview {
    ExcuseViewController()
}

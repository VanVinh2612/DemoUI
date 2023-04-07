//
//  Touris.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 07/04/2023.
//

import UIKit

struct Tourism {
    let id: Int
    var title: String
    let imageName: String
}

var data: [Tourism] = [
    Tourism(id: 1, title: "Bán đảo Sơn Trà", imageName: "ban_dao_son_tra_img"),
    Tourism(id: 2, title: "Đảo Phú Quốc", imageName: "dao_phu_quoc_img"),
    Tourism(id: 3, title: "Du lịch Vịnh Hạ Long", imageName: "du_lich_vinh_Ha_Long_img"),
    Tourism(id: 4, title: "Hội An", imageName: "hoi_an_img"),
    Tourism(id: 5, title: "Nhà Thờ Đức Bà", imageName: "nha_tho_duc_ba_img"),
    Tourism(id: 6, title: "Biền Nhà Trang", imageName: "nha_trang_beaches_img"),
    Tourism(id: 7, title: "Vinwonders Nam Hội An", imageName: "vinwonders_nam_hoi_an_img"),
]

//
//  TableViewCell.swift
//  cogniteq_prjct
//
//  Created by Dmitry on 10/17/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit
import Kingfisher

class RepoInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var prjNameLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var licensyLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    
    func configure(prjName: String?,
                   forksCount: String?,
                   licensy: String?,
                   description: String?,
                   avatarUrl: String?) {
        prjNameLabel.text = prjName
        let count = forksCount ?? ""
        forksLabel.text = count
        licensyLabel.text = licensy
        descriptionLabel.text = description
        let url = URL(string: avatarUrl ?? "")
        avatarImage.kf.setImage(with: url)
    }

}

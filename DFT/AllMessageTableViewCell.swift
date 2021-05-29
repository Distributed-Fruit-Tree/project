//
//  AllMessageTableViewCell.swift
//  DFT
//
//  Created by Olivia Gillam on 5/29/21.
//

import UIKit

class AllMessageTableViewCell: UITableViewCell {

    @IBOutlet weak var ProfileView: UIImageView!
    @IBOutlet weak var UsernameLabel: UILabel!
    @IBOutlet weak var MessagePreviewLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  AnimeTableViewCell.swift
//  AnimeTitles
//
//  Created by Alikhan Kopzhanov on 10.07.2023.
//

import UIKit
import SDWebImage

class AnimeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var englishTitleLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var genresLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setData(anime: AnimeTitle){
        titleLabel.text = anime.title
        englishTitleLabel.text = anime.englishTitle
        episodeLabel.text = "Episodes: \(anime.episodes)"
        scoreLabel.text = "Score: \(anime.score)"
        genresLabel.text = "Genres: \(anime.genres)"
        
        pictureImageView.sd_setImage(with: URL(string: anime.picture))
    }
}

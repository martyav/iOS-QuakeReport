//
//  EarthquakeTableViewCell.swift
//  iOS-QuakeReport
//
//  Created by C4Q on 1/29/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class EarthquakeTableViewCell: UITableViewCell, UIViewCustomizing {    
    var magnitudeLabel: UILabel!
    var placeLabel: UILabel!
    var timeLabel: UILabel!
    
    func initializeViews() {
                self.magnitudeLabel = UILabel()
                self.placeLabel = UILabel()
                self.timeLabel = UILabel()
    }
    
    func style(views: UIView...) {
        self.magnitudeLabel.text = "111"
        self.placeLabel.backgroundColor = UIColor.blue
        self.timeLabel.font = UIFont.boldSystemFont(ofSize: 23)
    }
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.initializeViews()
        self.setUpHierarchyFor(views: magnitudeLabel, placeLabel, timeLabel, parent: contentView)
        self.prepareToConstrain(views: magnitudeLabel, placeLabel, timeLabel)
        
        let customConstraints: [NSLayoutConstraint] = [
            self.magnitudeLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.magnitudeLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.placeLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.placeLabel.leadingAnchor.constraint(equalTo: self.magnitudeLabel.trailingAnchor),
            self.timeLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.timeLabel.leadingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        ]

        self.apply(constraints: customConstraints)
        self.style(views: magnitudeLabel, placeLabel, timeLabel)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

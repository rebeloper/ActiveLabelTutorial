//
//  ViewController.swift
//  ActiveLabelTutorial
//
//  Created by Alex Nagy on 01/10/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import ActiveLabel
import TinyConstraints

class ViewController: UIViewController {
    
    lazy var label: ActiveLabel = {
        var label = ActiveLabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = """
        This is a post with
        a #thetribe and a @rebeloper.
        """
        label.textColor = .black
        label.hashtagColor = .blue
        label.mentionColor = .red
        
        label.enabledTypes = [.mention, .hashtag]
        
        label.handleHashtagTap({ (hashtag) in
            print("Tapped on '\(hashtag)' hashtag")
        })
        
        label.handleMentionTap({ (mention) in
            print("Tapped on '\(mention)' mention")
        })
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        view.addSubview(label)
        label.centerInSuperview()
    }


}


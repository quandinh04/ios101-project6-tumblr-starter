//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Thế Quân Đinh on 10/24/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    @IBOutlet weak var detailPhoto: UIImageView!
    @IBOutlet weak var detailCaption: UITextView!
    
    // Property to store the passed in post
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailCaption.text = post.caption.trimHTMLTags()
        
        Nuke.loadImage(with: post.photos[0].originalSize.url, into: detailPhoto)

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

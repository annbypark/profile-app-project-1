//
//  DetailViewController.swift
//  MyStory
//
//  Created by Annabelle Park on 2/28/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var trait: Jjangu?
    
    @IBOutlet weak var picImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let trait = trait {
            print(trait.description)
        }
        
        if let trait = trait {
            picImageView.image = trait.image
            descriptionLabel.text = trait.description
        }

        // Do any additional setup after loading the view.
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

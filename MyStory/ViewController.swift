//
//  ViewController.swift
//  MyStory
//
//  Created by Annabelle Park on 2/27/23.
//

import UIKit

class ViewController: UIViewController {

    let family = Jjangu(image: UIImage (named: "jjangu_family")!, description: "i have a mom, dad, and sister!")
    let friends = Jjangu(image: UIImage (named: "jjangu_friends")!, description: "i have a main group of 5 friends including me!")
    let likeToDo = Jjangu(image: UIImage (named: "jjangu_eat")!, description: "i'm a clown and love eating")
    
    var traits: [Jjangu] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        traits = [family, friends, likeToDo]
    }

    @IBAction func didTapfamily(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.trait = traits[0]
            } else if tappedView.tag == 1 {
                detailViewController.trait = traits[1]
            } else if tappedView.tag == 2 {
                detailViewController.trait = traits[2]
            } else {
                print("no trait was tapped, please check your selection.")
            }
        }
    }
    
}


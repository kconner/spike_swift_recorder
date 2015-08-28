//
//  DetailViewController.swift
//  Testomemex
//
//  Created by Mason F. Matthews on 8/25/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    var detailItem: Person? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Person = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = "\(detail.id): \(detail.name)"
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  MKMapSnapshotter
//
//  Created by Klevison Matias on 6/15/16.
//  Copyright © 2016 CocoaHeads. All rights reserved.
//

import MapKit

final class ViewController: UIViewController {

    var mapImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.addSubview(mapImageView)
        mapImageView.contentMode = .ScaleAspectFill
        
        let options = MKMapSnapshotOptions()
        
        let coord = CLLocationCoordinate2DMake(-9.661645, -35.705192);
        let region = MKCoordinateRegionMakeWithDistance(coord, 1000, 1000);

        
        options.region = region
        options.size = CGSizeMake(600,600)
        options.scale = UIScreen.mainScreen().scale
        let snapshotter = MKMapSnapshotter(options: options)
        snapshotter.startWithCompletionHandler { snapshot, error in
            guard let snapshot = snapshot else {
                print("Snapshot error: \(error)")
                return
            }
            if let data = UIImagePNGRepresentation(snapshot.image), image = UIImage(data: data) {
                self.mapImageView.image = image
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        mapImageView.frame = view.bounds
    }

}


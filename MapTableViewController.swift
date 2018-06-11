//
//  MapTableViewController.swift
//  UiTableViewController Test 02
//
//  Created by D7703_23 on 2018. 6. 11..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit
import MapKit
class MapTableViewController: UITableViewController {
    
    @IBOutlet weak var tatakMapView: MKPlacemark!
    var location = [String]()
    var names = [String]()
    
    var annotations = MKPointAnnotation()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        viewMap(location: location, names: names)
    }
    func viewMap(location:[String],names:[String]){
        for addr in location{
            let getCoder = CLGeocoder()
            getCoder.geocodeAddressString(addr) {
                (Placemarks: [CLPlacemark]?, error: Error?) -> Void in
                if let myError = error{
                    print(myError)
                    return
                }
                if let myplacemarks = Placemarks{
                    let mylacemarks = myplacemarks[0]
                    let loc = mylacemarks.location?.coordinate
                    let anno = MKPointAnnotation()
                    anno.coordinate = loc!
                    anno.title = names[self.count]
                    self.count = self.count + 1
                    anno.subtitle = addr
                    self.tatakMapView.addAnnotation(anno)
                }else{
                    print("placemarks nil 발생")
                }
            }
        }
    }
    }




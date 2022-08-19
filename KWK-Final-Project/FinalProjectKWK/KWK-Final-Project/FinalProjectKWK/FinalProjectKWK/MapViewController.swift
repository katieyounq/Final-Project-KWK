//
//  MapViewController.swift
//  FinalProjectKWK
//
//  Created by Scholar on 8/16/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var body1: UILabel!
    
    
    @IBOutlet weak var title2: UILabel!
    @IBOutlet weak var body2: UILabel!
    
    @IBOutlet weak var title3: UILabel!
    @IBOutlet weak var body3: UILabel!
    
    @IBOutlet weak var title4: UILabel!
    @IBOutlet weak var body4: UILabel!
    
    @IBOutlet weak var title5: UILabel!
    @IBOutlet weak var body5: UILabel!
    
    @IBOutlet weak var field: UITextField!
    
    override func viewDidLoad() {
        title1.isHidden = true
        title2.isHidden = true
        title3.isHidden = true
        title4.isHidden = true
        title5.isHidden = true
        body1.isHidden = true
        body2.isHidden = true
        body3.isHidden = true
        body4.isHidden = true
        body5.isHidden = true
        
        super.viewDidLoad()
        let initalLocation = CLLocation(latitude: 39.981188, longitude: -75.1562828)
        map.centerToLocation(initalLocation)

        //put annotations here
        let place1 = MKPointAnnotation()
        place1.title = "Coral Street Fridge"
        place1.subtitle = "Open 24 hours"
        place1.coordinate = CLLocationCoordinate2D(latitude: 39.986912, longitude:-75.122726)
        map.addAnnotation(place1)
        
        let place2 = MKPointAnnotation()
        place2.title = "Bebashi"
        place2.subtitle = "Open Mon - Fri | 11AM-4PM"
        place2.coordinate = CLLocationCoordinate2D(latitude: 39.961971, longitude: -75.158234)
        map.addAnnotation(place2)
        
        let place3 = MKPointAnnotation()
        place3.title = "South Philly Community Fridge"
        place3.subtitle = "Open 24 Hours"
        place3.coordinate = CLLocationCoordinate2D(latitude: 39.937540, longitude: -75.178830)
        map.addAnnotation(place3)
        
        let place4 = MKPointAnnotation()
        place4.title = "Germantown Community Fridge"
        place4.subtitle = "Open 24 Hours"
        place4.coordinate = CLLocationCoordinate2D(latitude: 40.034140, longitude: -75.174370)
        map.addAnnotation(place4)
        
        let place5 = MKPointAnnotation()
        place5.title = "The Peoples Fridge"
        place5.subtitle = "Open 24 Hours"
        place5.coordinate = CLLocationCoordinate2D(latitude:  39.951590, longitude: -75.226360)
        map.addAnnotation(place5)
        
        // Do any additional setup after loading the view.
    }
    
    
    func mapView(_ mapView: MKMapView, didSelect view: MKPointAnnotation) {
        if view.title! == title1.text {
            title1.isHidden = false
            body1.isHidden = false
        }
    }
    
    
    @IBAction func searchButton(_ sender: UIButton) {
        if(field.text)!.caseInsensitiveCompare(title1.text!) == .orderedSame {
            title1.isHidden = false
            title2.isHidden = true
            title3.isHidden = true
            title4.isHidden = true
            title5.isHidden = true
            body1.isHidden = false
            body2.isHidden = true
            body3.isHidden = true
            body4.isHidden = true
            body5.isHidden = true
        } else if (field.text)!.caseInsensitiveCompare(title2.text!) == .orderedSame {
            title1.isHidden = true
            title2.isHidden = false
            title3.isHidden = true
            title4.isHidden = true
            title5.isHidden = true
            body1.isHidden = true
            body2.isHidden = false
            body3.isHidden = true
            body4.isHidden = true
            body5.isHidden = true
        } else if (field.text)!.caseInsensitiveCompare(title3.text!) == .orderedSame {
            title1.isHidden = true
            title2.isHidden = true
            title3.isHidden = false
            title4.isHidden = true
            title5.isHidden = true
            body1.isHidden = true
            body2.isHidden = true
            body3.isHidden = false
            body4.isHidden = true
            body5.isHidden = true
        } else if (field.text)!.caseInsensitiveCompare(title4.text!) == .orderedSame {
            title1.isHidden = true
            title2.isHidden = true
            title3.isHidden = true
            title4.isHidden = false
            title5.isHidden = true
            body1.isHidden = true
            body2.isHidden = true
            body3.isHidden = true
            body4.isHidden = false
            body5.isHidden = true
        } else if (field.text)!.caseInsensitiveCompare(title5.text!) == .orderedSame {
            title1.isHidden = true
            title2.isHidden = true
            title3.isHidden = true
            title4.isHidden = true
            title5.isHidden = false
            body1.isHidden = true
            body2.isHidden = true
            body3.isHidden = true
            body4.isHidden = true
            body5.isHidden = false
        } else {
            let alert = UIAlertController(title: "Invalid", message: "Try a valid entry", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Try again", style: .default, handler: nil))
            present(alert, animated: true, completion: {
             return
            })
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    private extension MKMapView {
        func centerToLocation(
            _ location: CLLocation, regionRadius: CLLocationDistance = 1000
        ) {
            let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                latitudinalMeters: regionRadius,
            longitudinalMeters: regionRadius)
            setRegion(coordinateRegion, animated: true)
        }
    }*/
    

}

private extension MKMapView {
 func centerToLocation(
  _ location: CLLocation,
  regionRadius: CLLocationDistance = 15000
 ) {
  let coordinateRegion = MKCoordinateRegion(
   center: location.coordinate,
   latitudinalMeters: regionRadius,
   longitudinalMeters: regionRadius)
  setRegion(coordinateRegion, animated: true)
 }
}

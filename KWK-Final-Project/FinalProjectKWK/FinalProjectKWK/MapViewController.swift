//
//  MapViewController.swift
//  FinalProjectKWK
//
//  Created by Scholar on 8/16/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var isSelected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initalLocation = CLLocation(latitude: 39.981188, longitude: -75.1562828)
        mapView.centerToLocation(initalLocation)

        //put annotations here
        let place1 = MKPointAnnotation()
        place1.title = "Coral Street Fridge"
        place1.subtitle = "Open 24 hours"
        place1.coordinate = CLLocationCoordinate2D(latitude: 39.986912, longitude:-75.122726)
        mapView.addAnnotation(place1)
        
        let place2 = MKPointAnnotation()
        place2.title = "Bebashi"
        place2.subtitle = "Open Mon - Fri | 11AM-4PM"
        place2.coordinate = CLLocationCoordinate2D(latitude: 39.961971, longitude: -75.158234)
        mapView.addAnnotation(place2)
        
        let place3 = MKPointAnnotation()
        place3.title = "South Philly Community Fridge"
        place3.subtitle = "Open 24 Hours"
        place3.coordinate = CLLocationCoordinate2D(latitude: 39.937540, longitude: -75.178830)
        mapView.addAnnotation(place3)
        
        let place4 = MKPointAnnotation()
        place4.title = "Germantown Community Fridge"
        place4.subtitle = "Open 24 Hours"
        place4.coordinate = CLLocationCoordinate2D(latitude: 40.034140, longitude: -75.174370)
        mapView.addAnnotation(place4)
        
        let place5 = MKPointAnnotation()
        place5.title = "The Peoples Fridge"
        place5.subtitle = "Open 24 Hours"
        place5.coordinate = CLLocationCoordinate2D(latitude:  39.951590, longitude: -75.226360)
        mapView.addAnnotation(place5)
        
        // Do any additional setup after loading the view.
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

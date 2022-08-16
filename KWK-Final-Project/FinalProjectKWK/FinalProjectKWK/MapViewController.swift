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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initalLocation = CLLocation(latitude: 39.95646, longitude: -75.19493)
        mapView.centerToLocation(initalLocation)

        //put annotations here
        
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
  regionRadius: CLLocationDistance = 1000
 ) {
  let coordinateRegion = MKCoordinateRegion(
   center: location.coordinate,
   latitudinalMeters: regionRadius,
   longitudinalMeters: regionRadius)
  setRegion(coordinateRegion, animated: true)
 }
}

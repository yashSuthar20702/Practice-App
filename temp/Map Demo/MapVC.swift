//
//  MapVC.swift
//  temp
//
//  Created by Thinkwik 27 on 13/09/23.
//

import UIKit
import Foundation
import CoreLocation
import MapKit

class MapVC: UIViewController{

    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var map: MKMapView!
//    var locationManager: CLLocationManager!
    
    var locationManager = CLLocationManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()

    }
    
    @IBAction func btn2Tapped(_ sender: Any) {
//        let documentPicker = UIDocumentPickerViewController(documentTypes: ["public.text", "com.apple.iwork.pages.pages", "public.data"], in: .import)
        let documentPicker = UIDocumentPickerViewController(documentTypes: ["com.apple.iwork.pages.pages", "com.apple.iwork.numbers.numbers", "com.apple.iwork.keynote.key","public.image", "com.apple.application", "public.item","public.data", "public.content", "public.audiovisual-content", "public.movie", "public.audiovisual-content", "public.video", "public.audio", "public.text", "public.data", "public.zip-archive", "com.pkware.zip-archive", "public.composite-content", "public.text"], in: .import)

        documentPicker.delegate = self
        present(documentPicker, animated: true, completion: nil)
    }
    
    @IBAction func btnTapped(_ sender: Any) {
        if let location = locationManager.location {
             let latitude = location.coordinate.latitude
             let longitude = location.coordinate.longitude

             // Update a label with the location information
             lbl.text = "Latitude: \(latitude), Longitude: \(longitude)"
         }
    }
    
}

extension MapVC : CLLocationManagerDelegate , UIDocumentPickerDelegate {
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {

               let cico = url as URL
               print(cico)
               print(url)

               print(url.lastPathComponent)

               print(url.pathExtension)

              }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            // Start updating location when authorized
            locationManager.startUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            // Use the 'location' object to access latitude and longitude
            let latitude = location.coordinate.latitude
            let longitude = location.coordinate.longitude

            // Update your UI or save the location data as needed
        }
    }
}

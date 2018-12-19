//
//  ViewController.swift
//  ParsingJson
//
//  Created by Pravalika Donthineni on 12/13/18.
//  Copyright © 2018 Pravalika Donthineni. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var response : Object? = nil
    var selectedDescription: String = ""

    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label1Value: UILabel!
    @IBOutlet weak var label2Value: UILabel!
    @IBOutlet weak var label3Value: UITextView!
    @IBAction func clickHereButton(_ sender: UIButton) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jsonParsing()
        label3Value.isEditable = false
        label3Value.dataDetectorTypes = .link
    }
    
    func jsonParsing(){
        guard let path = Bundle.main.path(forResource: "data", ofType: "json") else {return}
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            self.response = try decoder.decode(Object.self, from: data)
        } catch {
            print(error)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "descriptionSegue" {
            if let dvc = segue.destination as? descriptionViewController {
            dvc.descriptiontext = self.selectedDescription
        }
        }
    }
    
    @IBAction func CarButton(_ sender: UIButton) {
        if let carResponse = response {
            typeLabel.text = carResponse.Car.objectSummary.type
            nameLabel.text = carResponse.Car.objectSummary.name
            colorLabel.text = carResponse.Car.objectSummary.color
            self.selectedDescription = carResponse.Car.objectSummary.description
            label1.text = "Doors"
            label2.text = "Milage"
            label3.text = "price"
            label1Value.text = carResponse.Car.doors
            label2Value.text = carResponse.Car.milage
            label3Value.text = carResponse.Car.price
        }
    }
    
    @IBAction func ComputerButton(_ sender: UIButton) {
        if let computerResponse = response {
            typeLabel.text = computerResponse.Computer.objectSummary.type
            nameLabel.text = computerResponse.Computer.objectSummary.name
            colorLabel.text = computerResponse.Computer.objectSummary.color
            self.selectedDescription = computerResponse.Computer.objectSummary.description
            label1.text = "Purchase Date"
            label3.text = "Image"
            label2.text = " "
            label1Value.text = computerResponse.Computer.purchaseDate
            label2Value.text = " "
            label3Value.text = "Click link to view image \(computerResponse.Computer.image.url)"
        }
    }
    
    @IBAction func CatButton(_ sender: UIButton) {
        if let catResponse = response {
            typeLabel.text = catResponse.Cat.objectSummary.type
            nameLabel.text = catResponse.Cat.objectSummary.name
            colorLabel.text = catResponse.Cat.objectSummary.color
            self.selectedDescription = catResponse.Cat.objectSummary.description
            label1.text = "Age"
            label2.text = "Favorite Toy"
            label3.text = "Image"
            label1Value.text = catResponse.Cat.age
            label2Value.text = catResponse.Cat.favoriteToy
            label3Value.text = "Click link to view image \(catResponse.Cat.image.url)"
        }
    }
    
    @IBAction func Dog(_ sender: UIButton) {
        if let dogResponse = response {
            typeLabel.text = dogResponse.Dog.objectSummary.type
            nameLabel.text = dogResponse.Dog.objectSummary.name
            colorLabel.text = dogResponse.Dog.objectSummary.color
            self.selectedDescription = dogResponse.Dog.objectSummary.description
            label1.text = "Age"
            label2.text = "Favorite Toy"
            label3.text = "Image"
            label1Value.text = dogResponse.Dog.age
            label2Value.text = dogResponse.Dog.favoriteToy
            label3Value.text = "Click link to view image \(dogResponse.Dog.image.url)"
        }
    }
}

extension UIAlertController {
    func addImage(image : UIImage) {
        let imageAction = UIAlertAction(title: "", style: .default, handler: nil)
        imageAction.isEnabled = false
        imageAction.setValue(image, forKey: "image")
        self.addAction(imageAction)
    }
}



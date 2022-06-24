//
//  ViewController.swift
//  CollectionView2
//
//  Created by Yitong Pei on 23/6/2022.
//


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var table: UITableView!
    
    // models array to hold the model objects, which will pass into the cells collection view
    var models = [Model]() // array of Model type, this Model is a self-defined type
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "Second", imageName: "image_2"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "Fourth", imageName: "image_4"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "Fourth", imageName: "image_4"))
        models.append(Model(text: "Second", imageName: "image_2"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "Second", imageName: "image_2"))
        models.append(Model(text: "Fourth", imageName: "image_4"))
        models.append(Model(text: "Second", imageName: "image_2"))
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: "CollectionTableView")
        table.delegate = self
        table.dataSource = self
    }
    
    // Table
    
    // number of rows (short term command to find this function
    // the purpose of this funciton is to control the number of rows for the table cell
    // if we return models.count, then will return x rows, where x is the number of models we have. if we return 1, then will return only 1 row to present the photos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    // cell for row at (index Path)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    
    // table view height for row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        // hard coded the size in this case
        return 250.0
    }
}

struct Model{
    let text: String
    let imageName: String
    
    init(text: String, imageName: String){
        self.text = text
        self.imageName = imageName
    }
}


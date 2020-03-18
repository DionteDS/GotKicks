//
//  ViewController.swift
//  UnderlineSegment
//
//  Created by Dionte Silmon on 3/7/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    private let nikeSBarray = NikeSBShoeMaker().nikeSBshoes
    private let ajArray = AirJordanShoeMaker().ajShoes
    private let adidasArray = AdidasShoeMaker().adidasShoes
    private let newBalanceArray = NewBalanceMaker().newBalanceShoes
    private var row = 0
    
    // Segment Control
    let segmentControl: UISegmentedControl = {
        let segmentCtrl = UISegmentedControl()
        segmentCtrl.insertSegment(withTitle: "Nike SB", at: 0, animated: true)
        segmentCtrl.insertSegment(withTitle: "Air Jordan", at: 1, animated: true)
        segmentCtrl.insertSegment(withTitle: "Adidas", at: 2, animated: true)
        segmentCtrl.insertSegment(withTitle: "New Balance", at: 3, animated: true)
        segmentCtrl.backgroundColor = .clear
        segmentCtrl.tintColor = .clear
        segmentCtrl.selectedSegmentTintColor = .clear
        segmentCtrl.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "DINCondensed-Bold", size: 18)!, NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .normal)
        segmentCtrl.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "DINCondensed-Bold", size: 18)!, NSAttributedString.Key.foregroundColor: UIColor.red], for: .selected)
        segmentCtrl.translatesAutoresizingMaskIntoConstraints = false
        return segmentCtrl
    }()
    
    // Underline view under the selected segment control
    let buttonBar: UIView = {
        let buttonView = UIView()
        buttonView.backgroundColor = .red
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        return buttonView
    }()
    
    let shoeTable: UITableView = {
        let tableView = UITableView()
        tableView.isScrollEnabled = true
        tableView.register(UINib(nibName: "CustomCellTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentControl.selectedSegmentIndex = 0
        
        setupNavBar()
        setupLayout()
        
        shoeTable.delegate = self
        shoeTable.dataSource = self
        
        // Action for moving the underline view
        segmentControl.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: .valueChanged)
        
    }
    
    //MARK: - NavBar
    
    // Setup the navBar
    private func setupNavBar() {
        navigationItem.title = "Home"
    }
    
    //MARK: - Constraints
    
    // Setup the constraints
    private func setupLayout() {
        
        view.addSubview(segmentControl)
        view.addSubview(buttonBar)
        view.addSubview(shoeTable)
        
        // segment control constraints
        segmentControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        segmentControl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        segmentControl.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // buttonBar constraints
        buttonBar.topAnchor.constraint(equalTo: segmentControl.bottomAnchor).isActive = true
        buttonBar.leadingAnchor.constraint(equalTo: segmentControl.leadingAnchor).isActive = true
        buttonBar.heightAnchor.constraint(equalToConstant: 5).isActive = true
        buttonBar.widthAnchor.constraint(equalTo: segmentControl.widthAnchor, multiplier: 1 / CGFloat(segmentControl.numberOfSegments)).isActive = true
        
        // shoeTable constraints
        shoeTable.topAnchor.constraint(equalTo: buttonBar.bottomAnchor, constant: 50).isActive = true
        shoeTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        shoeTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        shoeTable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
        
    }
    
    //MARK: - Action for moving the underline view
    
    // animate the underline view when selecting a segment
    @objc func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        
        // Reload the tableView with the new data
        self.shoeTable.reloadData()
        
        // Animate the buttonBar view
        UIView.animate(withDuration: 0.3) {
            self.buttonBar.frame.origin.x = (self.segmentControl.frame.width / CGFloat(self.segmentControl.numberOfSegments)) * CGFloat(self.segmentControl.selectedSegmentIndex)
        }
    }

}

//MARK: - TableView Delegate and DataSource Methods

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch segmentControl.selectedSegmentIndex {
        case 0:
            return nikeSBarray.count
        case 1:
            return ajArray.count
        case 2:
            return adidasArray.count
        case 3:
            return newBalanceArray.count
        default:
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch segmentControl.selectedSegmentIndex {
        case 0:

            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCellTableViewCell

            cell.accessoryType = .disclosureIndicator

            let shoe = nikeSBarray[indexPath.row]

            cell.title.text = shoe.shoeName
            cell.releaseDate.text = shoe.shoeReleaseDate
            cell.customImage.image = UIImage(named: shoe.shoeImageName)

            return cell
        case 1:

            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCellTableViewCell

            let shoe = ajArray[indexPath.row]

            cell.title.text = shoe.shoeName
            cell.releaseDate.text = shoe.releaseDate
            cell.customImage.image = UIImage(named: shoe.shoeImage)

            return cell
        case 2:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCellTableViewCell
            
            let shoe = adidasArray[indexPath.row]
            
            cell.title.text = shoe.shoeName
            cell.releaseDate.text = shoe.releaseDate
            cell.customImage.image = UIImage(named: shoe.shoeImageName)
            
            return cell
        case 3:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCellTableViewCell
            
            let shoe = newBalanceArray[indexPath.row]
            
            cell.title.text = shoe.shoeName
            cell.releaseDate.text = shoe.releaseDate
            cell.customImage.image = UIImage(named: shoe.shoeImageName)
            
            return cell
            
        default:

            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCellTableViewCell

            cell.title.text = "N/A"
            cell.releaseDate.text = "N/A"

            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let rowIndex = tableView.indexPathForSelectedRow?.row {
            row = rowIndex
        }
        
        performSegue(withIdentifier: "shoeInfoVC", sender: self)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "shoeInfoVC" {
            let controller = segue.destination as! ShoeInfoViewController
            
            switch segmentControl.selectedSegmentIndex {
            case 0:
                let shoe = nikeSBarray[row]
                controller.navTitle = shoe.shoeName
                controller.shoeImage.image = UIImage(named: shoe.shoeImageName)
                controller.summary.text = shoe.info
                controller.shoeTitle.text = shoe.shoeName
                controller.favorites.text = "Favorite Count: \(shoe.favorites)"
                controller.retailPrice.text = "Retail Price: \(shoe.price)"
            case 1:
                let shoe = ajArray[row]
                controller.navTitle = shoe.shoeName
                controller.shoeImage.image = UIImage(named: shoe.shoeImage)
                controller.summary.text = shoe.info
                controller.shoeTitle.text = shoe.shoeName
                controller.favorites.text = "Favorite Count: \(shoe.favorites)"
                controller.retailPrice.text = "Retail Price: \(shoe.price)"
                
            case 2:
                let shoe = adidasArray[row]
                controller.navTitle = shoe.shoeName
                controller.shoeImage.image = UIImage(named: shoe.shoeImageName)
                controller.summary.text = shoe.info
                controller.shoeTitle.text = shoe.shoeName
                controller.favorites.text = "Favorite Count: \(shoe.favorites)"
                controller.retailPrice.text = "Retail Price: \(shoe.price)"
            case 3:
                let shoe = newBalanceArray[row]
                controller.navTitle = shoe.shoeName
                controller.shoeImage.image = UIImage(named: shoe.shoeImageName)
                controller.summary.text = shoe.info
                controller.shoeTitle.text = shoe.shoeName
                controller.favorites.text = "Favorite Count: \(shoe.favorites)"
                controller.retailPrice.text = "Retail Price: \(shoe.price)"
            default:
                controller.navTitle = "N/A"
            }
        }
    }
    
}

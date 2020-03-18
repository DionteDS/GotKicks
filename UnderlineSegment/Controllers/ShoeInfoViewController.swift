//
//  ShoeInfoViewController.swift
//  UnderlineSegment
//
//  Created by Dionte Silmon on 3/9/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class ShoeInfoViewController: UIViewController {
    
    // MARK: Properties
    
    var navTitle = ""
    let height: CGFloat = 250
    let moreDetailArray = ["Report", "Share", "Copy Link", "Favorite"]
    
    // TransparentView
    let transparentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // More options Table
    let optionTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(OptionsTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    // Shoe Image
    var shoeImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // Info about the shoe
    var summary: UITextView = {
        let textView = UITextView()
        textView.textColor = .lightGray
        textView.backgroundColor = .clear
        textView.font = UIFont(name: "DINCondensed-Bold", size: 17)
        textView.isScrollEnabled = true
        textView.isEditable = false
        textView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    // shoe name label
    var shoeTitle: UILabel = {
        let label = UILabel()
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        label.font = UIFont(name: "DINCondensed-Bold", size: 16)
        label.textColor = .lightGray
        return label
    }()
    
    // favorite count
    var favorites: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "DINCondensed-Bold", size: 16)
        label.textColor = .lightGray
        return label
    }()
    
    // retail price
    var retailPrice: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "DINCondensed-Bold", size: 16)
        label.textColor = .lightGray
        return label
    }()
    
    // StackView
    let stacks: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .leading
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create the more detail button (three dots)
        let rightButton = UIBarButtonItem(image: UIImage(named: "more"), style: .plain, target: self, action: #selector(onClickMenu(_:)))
        
        navigationItem.rightBarButtonItem = rightButton
        
        optionTableView.delegate = self
        optionTableView.dataSource = self

        setupLayout()
        setupNavBar()
        
    }
    
    // MARK: - Navigation Bar
    
    // setup the navBar
    private func setupNavBar() {
        navigationItem.title = navTitle
    }
    
    // MARK: - Layout
    
    // setup the constraints
    private func setupLayout() {
        
        view.addSubview(shoeImage)
        view.addSubview(stacks)
        view.addSubview(summary)
        
        stacks.addArrangedSubview(shoeTitle)
        stacks.addArrangedSubview(favorites)
        stacks.addArrangedSubview(retailPrice)
        
        shoeImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        shoeImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        
        stacks.topAnchor.constraint(equalTo: shoeImage.bottomAnchor, constant: 10).isActive = true
        stacks.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        
        summary.topAnchor.constraint(equalTo: stacks.bottomAnchor, constant: 30).isActive = true
        summary.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        summary.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        
    }
    
    // MARK: - Three dots menu button
    
    @objc func onClickMenu(_ sender: UIBarButtonItem) {
        
        let window = UIApplication.shared.keyWindow
        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        transparentView.frame = self.view.frame
        window?.addSubview(transparentView)
        
        let screenSize = UIScreen.main.bounds.size
        optionTableView.frame = CGRect(x: 0, y: screenSize.height, width: screenSize.width, height: height)
        window?.addSubview(optionTableView)
        
        // Create tapGesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onClickTransparentView))
        transparentView.addGestureRecognizer(tapGesture)
        
        transparentView.alpha = 0
        
        // Bring up the more options tableView
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0.5
            self.optionTableView.frame = CGRect(x: 0, y: screenSize.height - self.height, width: screenSize.width, height: self.height)
        }, completion: nil)
    }
    

    // Bring the down the tableView when tap on screen
    @objc func onClickTransparentView() {
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            let screenSize = UIScreen.main.bounds.size
            self.transparentView.alpha = 0
            self.optionTableView.frame = CGRect(x: 0, y: screenSize.height, width: screenSize.width, height: self.height)
        }, completion: nil)
        
    }
    
}

// MARK: - TableView delegate and DataSource Methods

extension ShoeInfoViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moreDetailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OptionsTableViewCell
        
        cell.detailLabel.text = moreDetailArray[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            let screenSize = UIScreen.main.bounds.size
            self.transparentView.alpha = 0
            self.optionTableView.frame = CGRect(x: 0, y: screenSize.height, width: screenSize.width, height: self.height)
        }, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}

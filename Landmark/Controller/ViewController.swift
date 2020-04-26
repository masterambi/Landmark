//
//  ViewController.swift
//  Landmark
//
//  Created by Ramzy Rashaun Arief on 21/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var landmarkTableView: UITableView!
    
    var searchController: UISearchController!
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    var isFiltering: Bool {
        return searchController.isActive && !isSearchBarEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkTableView.dataSource = self
        landmarkTableView.delegate = self
        landmarkTableView.register(UINib(nibName: "LandmarkTableViewCell", bundle: nil), forCellReuseIdentifier: "LandmarkCell")
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Landmarks"
        self.navigationItem.searchController = searchController
        definesPresentationContext = true
        
        let aboutButton = UIBarButtonItem(image: UIImage(systemName: "person.fill"), style: .plain, target: self, action: #selector(moveToAboutScreenAction))
        aboutButton.tintColor = .black
        self.navigationItem.rightBarButtonItem = aboutButton
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Landmark"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func filterContent(for searchText: String) {
        filteredLandmarks = landmarks.filter { (landmark) -> Bool in
            return landmark.name.localizedCaseInsensitiveContains(searchText) || landmark.location.localizedCaseInsensitiveContains(searchText)
        }
        landmarkTableView.reloadData()
    }
    
    @objc func moveToAboutScreenAction() -> Void {
        let aboutViewController = DetailViewController(nibName: "AboutViewController", bundle: nil)
        self.navigationItem.title = ""
        self.navigationController?.pushViewController(aboutViewController, animated: true)
    }

}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContent(for: searchBar.text!)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
            return filteredLandmarks.count
        }
        
        return landmarks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LandmarkCell", for: indexPath) as! LandmarkTableViewCell
        
        let landmark = isFiltering ? filteredLandmarks[indexPath.row] : landmarks[indexPath.row]
        
        cell.landmarkThumbnailImageView.image = landmark.image
        cell.landmarkNameLabel.text = landmark.name
        cell.landmarkLocationLabel.text = landmark.location
        cell.landmarkCheckImageView.isHidden =  landmark.isVisited ? false : true
        
        cell.landmarkThumbnailImageView.layer.cornerRadius = cell.landmarkThumbnailImageView.frame.height / 2
        cell.landmarkThumbnailImageView.clipsToBounds = true
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        let landmark = isFiltering ? filteredLandmarks[indexPath.row] : landmarks[indexPath.row]
        
        detailViewController.landmark = landmark
        tableView.deselectRow(at: indexPath, animated: true)
        
        self.navigationItem.title = ""
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let checkAction = UIContextualAction(style: .normal, title: "") { (action, view, handler) in
            
            let cell = tableView.cellForRow(at: indexPath) as! LandmarkTableViewCell
            landmarks[indexPath.row].isVisited = landmarks[indexPath.row].isVisited ? false : true
            cell.landmarkCheckImageView.isHidden = landmarks[indexPath.row].isVisited ? false : true
            handler(true)
            
        }
        
        let checkIcon = landmarks[indexPath.row].isVisited ? "arrow.uturn.left" : "checkmark"
        checkAction.backgroundColor = .systemBlue
        checkAction.image = UIImage(systemName: checkIcon)
        
        return UISwipeActionsConfiguration(actions: [checkAction])
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if isFiltering {
            return false
        } else {
            return true
        }
    }
}


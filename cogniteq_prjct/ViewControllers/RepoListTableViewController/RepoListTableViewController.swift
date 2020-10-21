//
//  TableViewController.swift
//  cogniteq_prjct
//
//  Created by Dmitry on 10/17/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class RepoListTableViewController: UITableViewController {
    
    private var isLoading = false
    private var page = 1
    private var projectList = [Items]()
    private var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    private var filteredProjectList: [Items]?
    
    private let searchController = UISearchController(searchResultsController: nil)
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        readData(page: page, name: "")
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isFiltering ? (filteredProjectList?.count ?? 0) : projectList.count
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let count = projectList.count
        if indexPath.row == (count - 1), !isLoading {
            isLoading = true
            page += 1
            readData(page: page, name: "")
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? RepoInfoTableViewCell else {
            return UITableViewCell()
        }
        
        let itemsList =
            isFiltering ? (filteredProjectList ?? [Items]())[indexPath.row] : projectList[indexPath.row]
        let forks = "\(itemsList.forks_count ?? 0)"
        
        cell.configure(prjName: itemsList.name,
                       forksCount: forks,
                       licensy: itemsList.license?.name,
                       description: itemsList.description,
                       avatarUrl: itemsList.owner?.avatar_url)
        
        return cell
    }

}

extension RepoListTableViewController {
    
    func readData(page: Int, name: String){
        APIManager.shared.getProjectList(page: page) { [weak self] projectsArray in
            guard let self = self else { return }
            self.isLoading = false
            if let projects = projectsArray?.items {
                self.projectList += projects
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

}

extension RepoListTableViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        if let text = searchController.searchBar.text {
            filterContentForSearch(text)
        }
    }
    
    private func filterContentForSearch(_ searchText: String) {
        self.filteredProjectList = projectList.filter({ (item) -> Bool in
            return (item.owner?.login?.lowercased().contains(searchText.lowercased()) ?? false)
        })
        tableView.reloadData()
    }
    
}

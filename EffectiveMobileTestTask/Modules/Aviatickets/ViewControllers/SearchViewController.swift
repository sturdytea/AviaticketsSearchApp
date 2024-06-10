//
//
// SearchViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 05.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class SearchViewController: UIViewController {

    private lazy var searchView = SearchView()
    private lazy var viewModel = SearchViewModel(service: AviaticketsMockService())
    var showDifficultRoutesRequested: () -> () = { }
    var showWeekendsRequested: () -> () = { }
    var showLastMinuteTicketsRequested: () -> () = { }
    
    override func loadView() {
        view = searchView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchData()
        setupTableView()
        searchView.hintOne.button.addTarget(self, action: #selector(hintOneTapped), for: .touchUpInside)
//        searchView.hintTwo.button.addTarget(self, action: #selector(hintTwoTapped), for: .touchUpInside)
        searchView.hintThree.button.addTarget(self, action: #selector(hintThreeTapped), for: .touchUpInside)
        searchView.hintFour.button.addTarget(self, action: #selector(hintFourTapped), for: .touchUpInside)
    }
    
    @objc
    private func hintOneTapped() {
        showDifficultRoutesRequested()
    }
    
    @objc
    private func hintTwoTapped() {
        // TODO: Add action
    }
    
    @objc
    private func hintThreeTapped() {
        showWeekendsRequested()
    }
    
    @objc
    private func hintFourTapped() {
        showLastMinuteTicketsRequested()
    }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
   
    private func setupTableView() {
        searchView.tableBox.delegate = self
        searchView.tableBox.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.recommendedTowns.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RecommendedTownTableViewCell().identifier, for: indexPath) as? RecommendedTownTableViewCell
        else {
            fatalError("Wrong Cell")
        }
        
        let town = viewModel.recommendedTowns[indexPath.row]
        cell.configureCell(imageName: viewModel.recommendedTownImages[indexPath.row],
                           townName: town.town,
                           commentText: town.comment)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 || indexPath.row == viewModel.recommendedTowns.count {
            return 70
        }
        return 60
    }
}

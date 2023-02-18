//
//  DescriptionViewController.swift
//  MoviesApp
//
//  Created by Эл on 09.02.2023.
//

import UIKit
import SDWebImage

/// There are we can see all about the chosen movie
final class DescriptionViewController: UIViewController {

    // MARK: - Private Properties
    
    private let backDropImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22, weight: .bold)
        return label
    }()
    
    private let descriptionLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    private var stats: Movie?
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(backDropImageView)

        setupConstraints()
    }
    
    // MARK: - Private Methods
    
    private func setupConstraints() {
        let backDropConstraints = [
            backDropImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            backDropImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backDropImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backDropImageView.heightAnchor.constraint(equalToConstant: 250),
            backDropImageView.widthAnchor.constraint(equalToConstant: view.bounds.width)
        ]
        
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: backDropImageView.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ]
        
        let descriptionLabelConstraints = [
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(backDropConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(descriptionLabelConstraints)
    }
    
    func configure(with model: DescriptionData) {
        let imgUrl = "https://image.tmdb.org/t/p/w500" + (model.posterPath ?? "")
        backDropImageView.downloaded(from: imgUrl)
        titleLabel.text = model.title
        descriptionLabel.text = model.overview
    }
}

//
//  ListGamesViewController.swift
//  My S2 Game
//
//  Created by Rodrigo Miyashiro on 05/11/17.
//  Copyright © 2017 Rodrigo Miyashiro. All rights reserved.
//

import UIKit

class ListGamesViewController: UIViewController
{
    // MARK: - Lets and Vars
    
    
    
    // MARK: - IBOutlets
    @IBOutlet weak var listGamesCollectionView: UICollectionView!
    
    
    
    // MARK: - Life Cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
        
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {

    }

}

// MARK: - Extension CollectionView DataSource
extension ListGamesViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let CellIdentifier = "gameCell"
        let cell = listGamesCollectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifier, for: indexPath) as! ListGamesCollectionViewCell
        
        
        return cell
    }
}


// MARK: - Extension CollectionView Delegate
extension ListGamesViewController: UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        listGamesCollectionView.deselectItem(at: indexPath, animated: true)
    }
}


// MARK: - Extension CollectionView DelegateFlowLayout
extension ListGamesViewController: UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let width = (collectionView.frame.width / 2)
        
        return CGSize(width: width - 16, height: width + 50)
    }
}

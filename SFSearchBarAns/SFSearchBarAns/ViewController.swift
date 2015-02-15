//
//  ViewController.swift
//  SFSearchBarAns
//
//  Created by iOSDev_DK on 15/02/15.
//  Copyright (c) 2015 iOSDev_DK. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = "indexPath.row: \(indexPath.row)"
        return cell
    }
    
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        
        UIView.animateWithDuration(0.3, animations: {
            searchBar.showsCancelButton = true
            self.navigationController?.navigationBarHidden = true
            }, completion: {
                (value: Bool) in
        })
        return true
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            searchBar.showsCancelButton = false
            self.navigationController?.navigationBarHidden = false
            searchBar.resignFirstResponder()
        }, completion: nil)
    }
    
    /*
    - (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar {
    [UIView animateWithDuration:0.3 animations:^{
    searchBar.showsCancelButton = YES;
    } completion:^(BOOL finished) {
    self.navigationController.navigationBarHidden = YES;
    }];
    
    return YES;
    }
    
    - (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    [UIView animateWithDuration:0.3 animations:^{
    self.navigationController.navigationBarHidden = NO;
    searchBar.showsCancelButton = NO;
    [searchBar resignFirstResponder];
    } completion:nil];
    }
    */

    
}


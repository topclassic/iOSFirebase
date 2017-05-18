//
//  ViewController.swift
//  IOSFirebase
//
//  Created by Chotipat on 5/16/2560 BE.
//  Copyright © 2560 Chotipat. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set navigationitem
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    func handleLogout(){
        
        // link to LoginController page
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


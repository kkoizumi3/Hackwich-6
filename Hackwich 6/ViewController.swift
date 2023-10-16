//
//  ViewController.swift
//  Hackwich 6
//
//  Created by Kaci Koizumi on 10/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var myFriendsArray = ["Sara", "Nicole", "Grant"]
    
    //prob set 2
    var myFriendsHomeArray = ["Pearl City", "Aiea", "Manoa"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = myFriendsArray[indexPath.row]
        
       //prob set 2
        cell.detailTextLabel?.text = myFriendsHomeArray[indexPath.row]
        
        cell.textLabel?.text = text
        return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


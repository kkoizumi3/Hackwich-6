//
//  secondViewController.swift
//  Hackwich 6
//
//  Created by Kaci Koizumi on 10/15/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var myLocationsArray = ["Japan", "Norway", "Ireland" ]
    
    //prob set 2
    var myLocationCitiesArray = ["Kyoto", "Oslo", "Waterford"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myLocationsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                      let text = myLocationsArray[indexPath.row]
        
        //prob set 2
        cell.detailTextLabel?.text = myLocationCitiesArray[indexPath.row]
        
        cell.textLabel?.text = text
                      return cell

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

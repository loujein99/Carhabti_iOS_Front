//
//  ServiceViewController.swift
//  Carhabti_iOS
//
//  Created by Apple Esprit on 17/4/2022.
//

import UIKit

class ServiceViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var ServiceButton: UITabBarItem!
    //var
    var avatarName : String?
    var players = ["1", "2", "3", "4", "5"]
    var colors = ["fb", "fix", "gh", "google", "gp"]
    
    //widgets
    @IBOutlet weak var tv: UITableView!
    @IBOutlet weak var helloMessage: UILabel!
    
    
    //DATASOURCE Protocol
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ServiceCell")
        let contentView = cell?.contentView
        
        let imageView = contentView?.viewWithTag(1) as! UIImageView
        let nameLabel = contentView?.viewWithTag(2) as! UILabel
        let colorLabel = contentView?.viewWithTag(3) as! UILabel

        
        imageView.image = UIImage(named: colors[indexPath.row])
        nameLabel.text = players[indexPath.row]
        colorLabel.text = colors[indexPath.row]

        
        return cell!
    }
    
    //DELEGATE
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "mSegue2", sender: indexPath)
    }
    
    
    
    //lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
      
     
        
        //  helloMessage.text = "Hello " + avatarName!
        // Do any additional setup after loading the view.
    }
    
    
    //functions
   /** override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mSegue2" {
    
            let index = sender as! IndexPath
            let destination = segue.destination as! ServiceDetailsViewController
            destination.avatarName = players[index.row]
            destination.avatarColor = colors[index.row]
            
        }
        
        
        
    }**/
    //..

    
    //IBACTIONS
    /** @IBAction func emergentyMeetingAction(_ sender: Any) {
        performSegue(withIdentifier: "mSegue3", sender: sender)
    }
     **/
    
    
    

}

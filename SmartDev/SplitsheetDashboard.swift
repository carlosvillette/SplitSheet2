//
//  SplitsheetDashboard.swift
//  
//
//  Created by Guy Carlos Villette on 2/9/20.
//
//

import UIKit
import Firebase

class SplitsheetDashboard: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBAction func signOutSplitScreen(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "signOutSplitScreen", sender: nil)
        } catch {
            print(error)
        }
    }
    let list = ["Manuel Splits (Record)", "Equal Splits (Record)", "Start Session (Audio Split)", "Join Existing Session", "Explore Sessions"]
    var myIndex = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SplitsheetDashsboardTableViewCell
        cell.myImage.image = UIImage(named: "grayBlueCircle.jpg")
        cell.myLabel.text = list[indexPath.row]
        //cell.textLabel?.text = list[indexPath.row]
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        if myIndex == 0 {
            performSegue(withIdentifier: "manuelSplitsSegue", sender: nil)
        }
        if myIndex == 1 {
            performSegue(withIdentifier: "equalSplitsSegue", sender: nil)
        }
        if myIndex == 2 {
            performSegue(withIdentifier: "startSessionSegue", sender: nil)
        }
        if myIndex == 3 {
            performSegue(withIdentifier: "joinExistingSessionSegue", sender: nil)
        }
        if myIndex == 4 {
            performSegue(withIdentifier: "exploreSessionsSegue", sender: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

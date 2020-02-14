//
//  ManualSplitsViewController.swift
//  SmartDev
//
//  Created by Guy Carlos Villette on 2/9/20.
//  Copyright © 2020 Guy Carlos Villette. All rights reserved.
//

import UIKit

class ManualSplitsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list = ["1","2","3","4"]
    var myIndex = 0
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ManuelSplitText", for: indexPath) as! ManuelSplitTableViewCell
        cell.myText.placeholder = "Artist " + list[indexPath.row] + " (Name +%)"
        return cell
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

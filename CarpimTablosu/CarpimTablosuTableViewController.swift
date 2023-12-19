//
//  ViewController.swift
//  CarpimTablosu
//
//  Created by Cem TAŞKIN on 19.12.2023.
//

import UIKit

class CarpimTablosuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "satir")! as UITableViewCell
        
        var label = cell.viewWithTag(1000) as! UILabel as UILabel?
        var i = indexPath.row + 1
        var ilkSayi = ((i - ((i) % 10))/10 ) + 1
        var ikinciSayi = i%10
        
        if (ikinciSayi==0){
            ilkSayi=ilkSayi-1
            ikinciSayi=10
        }
        label?.text="\(ilkSayi) x \(ikinciSayi)  = \(ilkSayi*ikinciSayi)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    

}


//
//  ingredientViewController.swift
//  StackRecette
//
//  Created by Tru Nguyen on 4/27/19.
//  Copyright © 2019 Rudy. All rights reserved.
//

import Foundation
import UIKit

class ingredientViewController : UIViewController, UITabBarDelegate, UITableViewDataSource
{
    var ingre: String = ""
    var ingreArr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initIngreArr(ingre: ingre)
        print(ingreArr)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingreArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? ingreTable else {
            return UITableViewCell()
        }
        
        cell2.ingre.text =  ingreArr[indexPath.row]
        return cell2
    }
    
    func initIngreArr(ingre: String)
    {
        let arr = ingre.split(separator: ",")
        
        ingreArr.removeAll()
        arr.forEach{ item in
            ingreArr.append(item.trimmingCharacters(in: .whitespacesAndNewlines) + "")
        }
    }
    
}

//
//  food.swift
//  StackRecette
//
//  Created by Rudy on 4/24/19.
//  Copyright © 2019 Rudy. All rights reserved.
//

import UIKit

class food {
    let food_name: String
    let img: String
    let ingre: String
    
    init(food_name: String, img: String, ingre: String)
    {
        self.food_name = food_name
        self.img = img
        self.ingre = ingre
    }
}

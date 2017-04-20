//
//  Model.swift
//  IndigoIndianBistro
//
//  Created by Sugat Nagavkar on 27/08/16.
//  Copyright © 2016 Sugat Nagavkar. All rights reserved.
//

import Foundation

class Model : NSObject {
    
    static var menuArray = ["Appetizers", "Vegetarian Cusine", "Chicken Cuisine", "Lamb Cuisine", "Sea Foods", "Biryanis", "Tandoori Entrees", "Desserts", "Sides", "Beverages"]
    //var menuDescArray = [String]()
    
    static var detailMenuArray = [DetailMenu(detailTitle: ["Samosa", "Bhajia", "Jhinga Balchao", "Chaat Papri", "Murg Malai Kebab", "Chicken Tikka", "Seekh Kebab", "Bhel Puri", "Tandoori Namoone", "Kasta Kachori", "Indigo's Soya Patties", "Boti Kebab"], rateTitle: ["$ 6", "$ 5", "$ 7", "$ 5", "$ 7", "$ 7", "$ 7", "$ 5", "$ 7", "$ 5", "$ 5", "$ 7"]),
        DetailMenu(detailTitle: ["Saag", "Mutter Paneer", "Aloo Jeera", "Baingan Bhartha", "Bhindi Masala", "Malai Kofta", "Aloo Gobi", "Subj Shahi Kurma", "Dal Makhani", "Yellow Dal", "Paneer Makhani", "Chana Masala", "Panir Bhurji"], rateTitle: ["$ 11", "$ 11", "$ 11", "$ 11", "$ 11", "$ 11", "$ 11", "$ 11", "$ 11", "$ 11", "$ 11", "$ 11", "$ 11"]),
        DetailMenu(detailTitle: ["Chicken Tikka Masala", "Chicken Korma", "Lahori Chicken Curry", "Chettinad Chicken", "Chicken Saag", "Chicken Vindaloo", "Chicken Jalfrazie", "Mango Chicken"], rateTitle: ["$ 13", "$ 12", "$ 12", "$ 12", "$ 12", "$ 12", "$ 12", "$ 12"]),
        DetailMenu(detailTitle: ["Lamb Rogan Josh", "Lamb Saag", "Lamb Vindaloo", "Lamb Korma", "Kali Mirch-Ka Gosht", "Kadai Gosht"], rateTitle: ["$ 13", "$ 13", "$ 13", "$ 13", "$ 13", "$ 13"]),
        DetailMenu(detailTitle: ["Malabar Fish Curry", "Shrimp Coconut Curry", "Shrimp Jalferezi", "Shrimp Saag"], rateTitle: ["$ 16", "$ 16", "$ 16", "$ 16"]),
        DetailMenu(detailTitle: ["Vegetable Biryani", "Saffron Chicken Biryani", "Lamb Biryani", "Shrimp Biryani"], rateTitle: ["$ 11", "$ 12", "$ 13", "$ 16"]),
        DetailMenu(detailTitle: ["Murg Malai Kebab", "Chicken Tikka", "Seekh Kebab", "Boti Kebab", "Tandoori Chicken", "Tandoori Shrimps", "Mixed Grill", "Fish Tikka"], rateTitle: ["$ 14", "$ 14", "$ 14", "$ 14", "$ 13", "$ 20", "$ 17", "$ 20"]),
        DetailMenu(detailTitle: ["Gulab Jamun", "Rasmalai", "Kulfi", "Kheer", "Ice Cream"], rateTitle: ["$ 4", "$ 4", "$ 4", "$ 4", "$ 4"]),
        DetailMenu(detailTitle: ["Basmati Rice", "Raita", "Mango Chutney", "Mixed Pickle"], rateTitle: ["$ 3", "$ 4", "$ 2", "$ 2"]),
        DetailMenu(detailTitle: ["Canned Soda", "Bottled Spring Water", "Mango Lassi", "Sweet Lassi", "Masala Lassi"], rateTitle: ["$ 2", "$ 2", "$ 4", "$ 4", "$ 4"])]

    static var singleDetailMenuArray = [SingleDetail(singleDetail: ["Potatoes & peas wrapped in a light pastry.", "Vegetable fritters.", "Jumob shrimp in garlic, curry leaves", "Whole wheat crisps, spiced yogurt, chickpeas & chutneys", "Creamy grilled chicken breast", "Grilled chicken breast", "Minced lamb sausages", "Rice puffs, chickpea flour noodles, tamarind & cilantro", "Assortment of grilled meats", "Too difficult to put into words", "Minced soybean & spinach cutlets", "Grilled lamb in spices." ]),
    SingleDetail(singleDetail: ["In tomato & cream sauce", "Fraggant saffron almond cream sauce.", "Aromatic tomato sauce with whole spices.", "Spicy black pepper, curry leaf & red chili sauce.", "Sauteed with fresh spinach & enhanced with spices.", "Vinegar, hot chillies & spices make this a very hot dish.", "Fresh assorted veggies with spices.", "Mango & ground spices."]),
    SingleDetail(singleDetail: ["Succulent pieces in cardamum sauce.", "Sauteed with fresh spinach & enhanced with spices.", "Vinegar, hot chillies & spices make this a very hot dish.", "A mild specialty in saffron almond sauce.", "Lamb cooked in black pepper corns.", "Cubes of lamb in ground spices & herbs."]),
    SingleDetail(singleDetail: ["Salmon in peppery tomato sauce", "Coconut flavored shrimp curry.", "Shrimp cooked with fresh vegetables.", "Baby spinach & shrimps."]),
    SingleDetail(singleDetail: ["Rice cooked with fresh vegetables.", "Chicken & rice in whole spices", "Lamb & rice.", "Baby spinach & shrimps."]),
    SingleDetail(singleDetail: ["Creamy grilled chicken breast.", "Grilled chicken breast.", "Minced lamb sausages.", "BBQ lamb", "BBQ chicken on the bone.", "Jumbo shrimps marinated & grilled.", "An array of tandoori delicacies.", "Filet marinated in Indian spices."]),
     SingleDetail(singleDetail: ["Indian cheese balls in honey syrup.", "Indian cheese balls in sweetened milk sauce.", "Homemade pistachio almond ice cream.", "Traditional rice pudding.", "Pistachio, mango & vanilla."]),
     SingleDetail(singleDetail: ["King of Indian Rice", "Tamato and Cucumber", "Sweet, made from mango", "collection of lemon, mango & chillies "]),
     SingleDetail(singleDetail: ["Choose from Coke, Diet Coke, Sprite, Ginger Ale", "Small, Medium or Large", "Sweet and Mango flavored", "Sweet Yogurt smoothee", "Salted Yogurt smoothee"])]
    
    
    
}

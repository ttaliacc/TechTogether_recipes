//
//  SecondViewController.swift
//  hackathon
//
//  Created by Carly Wenig on 10/29/22.
//

import UIKit

class SecondViewController: UIViewController,  UITextFieldDelegate {
    
    var array = String()
    
    var foodRecipe = ["blueberries, sugar, lemon juice, yougurt": "Low Fat Berry Blue Fozen Desert",  "tomato sauce, cabbage, onion, celery" : "Cabbage Soup",  "chicken breast, egg, yeast, sugar, salt, water": "Chicken in Pizza Dough" ]
    
    func findRecipe(array: String) -> String {
        return foodRecipe[array] ?? "Recipe not found :("
         
        
    }
    
        
    
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var recipe: UITextView!
    @IBOutlet weak var inputs: UITextField!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var textField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        inputs.delegate = self
       

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sub(_ sender: Any) {
        textView.text = "Ingredients: \(inputs.text!)"
        let userInput: String = inputs.text!
        array.append(userInput)
        let result: String = findRecipe(array: userInput)
        recipe.text = result
        
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        inputs.resignFirstResponder()
    }
    
}

extension SecondViewController : UITextViewDelegate {
    func textFieldShouldReturn(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textView.resignFirstResponder()
        return true
        
    }
}

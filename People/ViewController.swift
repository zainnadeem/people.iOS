//
//  ViewController.swift
//  SpotifyCodeChallenge
//
//  Created by Zain Nadeem on 3/19/17.
//  Copyright © 2017 Zain Nadeem. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    lazy var logo:          UIImageView = UIImageView()
    
    lazy var firstButton:   Button      = Button()
    lazy var secondButton:  Button      = Button()
    lazy var thirdButton:   Button      = Button()
    lazy var fourthButton:  Button      = Button()
    lazy var fifthButton:   Button      = Button()
    lazy var sixthButton:   Button      = Button()
    lazy var seventhButton: Button      = Button()
    
    let client = APIClient()

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewContstraints()
        setButtons()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setViewContstraints(){
        
        self.view.addSubview(logo)
        self.logo.image = #imageLiteral(resourceName: "spotifyLogo")
        self.logo.contentMode = .scaleAspectFit
        self.logo.translatesAutoresizingMaskIntoConstraints = false
        self.logo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 5).isActive = true
        self.logo.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2).isActive = true
        self.logo.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.2).isActive = true
        
        
        self.view.addSubview(firstButton)
        
        self.firstButton.translatesAutoresizingMaskIntoConstraints = false
        self.firstButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.firstButton.topAnchor.constraint(equalTo: self.logo.bottomAnchor, constant: 2).isActive = true
        self.firstButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        self.firstButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        self.firstButton.setTitle("GET PEOPLE", for: .normal)
        
        self.view.addSubview(secondButton)
        self.secondButton.translatesAutoresizingMaskIntoConstraints = false
        self.secondButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.secondButton.topAnchor.constraint(equalTo: self.firstButton.bottomAnchor, constant: 2).isActive = true
        self.secondButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        self.secondButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        self.secondButton.setTitle("POST SEAN", for: .normal)
        
        self.view.addSubview(thirdButton)
        self.thirdButton.translatesAutoresizingMaskIntoConstraints = false
        self.thirdButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.thirdButton.topAnchor.constraint(equalTo: self.secondButton.bottomAnchor, constant: 2).isActive = true
        self.thirdButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        self.thirdButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        self.thirdButton.setTitle("GET SEAN", for: .normal)
        
        self.view.addSubview(fourthButton)
        self.fourthButton.translatesAutoresizingMaskIntoConstraints = false
        self.fourthButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.fourthButton.topAnchor.constraint(equalTo: self.thirdButton.bottomAnchor, constant: 2).isActive = true
        self.fourthButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        self.fourthButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        self.fourthButton.setTitle("CHANGE CITY", for: .normal)
        
        self.view.addSubview(fifthButton)
        self.fifthButton.translatesAutoresizingMaskIntoConstraints = false
        self.fifthButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.fifthButton.topAnchor.constraint(equalTo: self.fourthButton.bottomAnchor, constant: 2).isActive = true
        self.fifthButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        self.fifthButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        self.fifthButton.setTitle("GET NEW SEAN", for: .normal)
        
        self.view.addSubview(sixthButton)
        self.sixthButton.translatesAutoresizingMaskIntoConstraints = false
        self.sixthButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.sixthButton.topAnchor.constraint(equalTo: self.fifthButton.bottomAnchor, constant: 2).isActive = true
        self.sixthButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        self.sixthButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        self.sixthButton.setTitle("DELETE SEAN", for: .normal)
        
        self.view.addSubview(seventhButton)
        self.seventhButton.translatesAutoresizingMaskIntoConstraints = false
        self.seventhButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.seventhButton.topAnchor.constraint(equalTo: self.sixthButton.bottomAnchor, constant: 2).isActive = true
        self.seventhButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        self.seventhButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        self.seventhButton.setTitle("GET PEOPLE", for: .normal)

    }
    
    func setButtons(){
        
        firstButton.addTarget(self, action: #selector(getPeople), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(postSean), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(getSean), for: .touchUpInside)
        fourthButton.addTarget(self, action: #selector(changeCity), for: .touchUpInside)
        fifthButton.addTarget(self, action:  #selector(getTheNewSean), for: .touchUpInside)
        sixthButton.addTarget(self, action:  #selector(deleteSean), for: .touchUpInside)
        seventhButton.addTarget(self, action: #selector(getPeople), for: .touchUpInside)
        
    }
 
    func getPeople(){
        let path = "/people"
        client.APICall(params: [:], requestMethod: .GET, path: path) { (success) in
            
        }
    }
    
    func postSean(){
        let params = ["name":"Sean", "favoriteCity" : "New York", "id" : 1] as [String : Any]
        let path = "/people"
        client.APICall(params: params as [String : AnyObject], requestMethod: .POST, path: path) { (success) in
            
        }
    }
    
    func getSean(){
        let path = "/people/1"
        client.APICall(params: [:], requestMethod: .GET, path: path) { (success) in
            
        }
    }
    
    func changeCity(){
        let params = ["favoriteCity" : "Brooklyn"]
        let path = "/people/1"
        client.APICall(params: params as [String : AnyObject], requestMethod: .PUT, path: path) { (success) in
            
        }
    }
    
    func getTheNewSean(){
        let path = "/people/1"
        client.APICall(params: [:], requestMethod: .GET, path: path) { (success) in
            
        }
    }
    
    func deleteSean(){
        let path = "/people/1"
        client.APICall(params: [:], requestMethod: .DELETE, path: path) { (success) in
        }
    }
  
}


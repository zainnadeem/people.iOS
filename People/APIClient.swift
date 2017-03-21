//
//  APIClient.swift
//  SpotifyCodeChallenge
//
//  Created by Zain Nadeem on 3/19/17.
//  Copyright © 2017 Zain Nadeem. All rights reserved.
//

import Foundation


class APIClient {
    
    var baseURL = "https://spotify-cc-zainnadeem.herokuapp.com"
    let defaultSession = URLSession(configuration: URLSessionConfiguration.default)
    var dataTask: URLSessionDataTask?
    
    /* function for all requests: 
     Takes in Parameters, the request type, and the path that will be appeneded to the base URL.
    
    
    */
    func APICall(params: [String: AnyObject], requestMethod: Method, path: String, completion: @escaping (_ success: Bool) -> Void) {
        
        //request to create the user
        let baseURL = URL(string: self.baseURL)
        let url = baseURL?.appendingPathComponent(path)
        let request = URLRequest.request(url!, method: requestMethod, params: params)
        
        
        self.dataTask = self.defaultSession.dataTask(with: request as URLRequest) { (data, response, error) in
            
            //get returned error
            if let error = error {
                print(error)
                completion(false)
            }
                
            else if let httpResponse = response as? HTTPURLResponse {
                //you can also check returned response
                if(httpResponse.statusCode == 200) {
                    if let data = data {
                        
                        //if server returns one user
                            let json = try! JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject]
                        if let userInfo = json {
                            print(userInfo)
                        }else{
                            //if server return multiple users
                            let json = try! JSONSerialization.jsonObject(with: data, options: []) as? [[String:AnyObject]]
                            print(json ?? "Sorry, no data.")
                        }

                    }
                    
                    // for Delete request
                }else if(httpResponse.statusCode == 204){
                    print("Deleted User Info")
                }
                else {
                    completion(false)
                }
            }
        }
        //launch request
        self.dataTask?.resume()
    }
    
}




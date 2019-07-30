//
//  Network.swift
//  PDFSDK
//
//  Created by BuzzyBrains Software on 23/07/19.
//  Copyright © 2019 Buzzybrains Software. All rights reserved.
//

import UIKit
import Alamofire

class Network: NSObject {
    
    static let shared = Network()
    private override init() {}
    
    func addAnnotations(params : Parameters) {
        print("PRamas :",params)
        Alamofire.request("http://192.168.0.134:8080/api/drawOnPdf", method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { response in
            switch response.result
            {
            case .success:
                do {
                    print(response.value)
                //    let decoder = JSONDecoder()
                    print("API response",response)
                    //completion(bookApproveAPI.result.success)
                }catch
                {
                    print(error)
                }
                break
            case .failure:
                print("Something went wrong")
                return
            }
        }
    }
    

}

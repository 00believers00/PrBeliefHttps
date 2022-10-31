//
//  Main.swift
//  PrBeliefHttps
//
//  Created by ap on 31/10/2565 BE.
//

import UIKit



public typealias HttpHeaders = [String:String]

public enum HttpMethod:String{
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

public struct ResponseApi{
    public var statusCode:Int
    public var data:Data
    public var error:Error?
}

public enum ResultApi {
    case success(ResponseApi)
    case failure(ResponseApi?)
}

public class ApiService{
    public static let shared = ApiService()
    
    public static func request(_ url:URL, method:HttpMethod,headers:HttpHeaders? = nil, body:Data?, completion: @escaping (ResultApi) -> Void){
        var request = URLRequest(url: url)
        if let headers = headers{
            headers.forEach { (key: String, value: String) in
                request.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        request.httpMethod = method.rawValue
        request.httpBody = body
        
        
        let session = URLSession.shared.dataTask(with: request){ data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                completion(.failure(nil))
                return
            }

            if let httpStatus = response as? HTTPURLResponse{
                let statusCode = httpStatus.statusCode
                // check for http errors
                if statusCode >= 200 && statusCode <= 499{
                    completion(.success(ResponseApi(statusCode: statusCode, data: data)))
                    return
                }

                return completion(.failure(ResponseApi(statusCode: statusCode, data: data)))
            }
            return completion(.failure(nil))
        }
        session.resume()
    }
    
}



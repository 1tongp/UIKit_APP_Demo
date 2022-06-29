//
//  APICaller.swift
//  COVID Tracker
//
//  Created by Yitong Pei on 29/6/2022.
//

import Foundation

class APICaller{
    
    static let shared = APICaller()
    
    private init(){}
    
    private struct Constants{
        static let addStateUrl = URL(string: "https://api.covidtracking.com/v2/us/daily.json")
    }
    
    enum DataScope{
        case national
        case state(State)
    }
    
    public func getCovidData(for scope: DataScope, completion: @escaping (Result<String, Error>) -> Void){
        
    }
    
    public func getStateList(completion: @escaping(Result<[State], Error) -> Void){
        
    }
    
    
}

// MARK: - Models

struct StateListResponse: Codable{
    let data:[State]
}

struct State: Codable{
    let name: Stringlet state_code: String
}

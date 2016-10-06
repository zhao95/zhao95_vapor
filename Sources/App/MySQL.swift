//
//  MySQL.swift
//  ZNVapor
//
//  Created by 赵恩峰 on 16/10/5.
//
//

//import Vapor
//
//public final class Pr: Vapor.Provider {
//    /**
//     Called before the Droplet begins serving
//     which is @noreturn.
//     */
//    public func beforeRun(_: Droplet) {
//        
//    }
//
//    public let message: String
//    public let provided: Providable
//    
//    public convenience init(config: Config) throws {
//        guard let message = config["foo", "message"]?.string else {
//         return
//        }
//        
//        try self.init(message: message)
//    }
//    
//    public init(message: String) throws {
//        self.message = message
//    }
//    
//    public func afterInit(_ drop: Droplet) {
//        
//    }
//    
//    public func beforeServe(_ drop: Droplet) {
//        drop.console.info(message)
//    }
//}

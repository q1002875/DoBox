//
//  DynamicValue.swift
//  DoBox
//
//  Created by Jeff on 2020/4/9.
//  Copyright © 2020 FULL ENTERPRISE CORP. All rights reserved.
//

import Foundation
class DynamicValue<T>{
    typealias CompletionHandler = ((T) -> Void)
    
    var value:T{
        didSet{
            self.notify()
        }
    }
    //建立監聽陣列
    private var observers = [String:CompletionHandler]()
    
    init(_ value:T) {
        self.value = value
    }
    
    public func addObserver(_ observer:NSObject,completionHandler:@escaping CompletionHandler){
        observers[observer.description] = completionHandler
    }
    
    public func addAndNotify(_ observer:NSObject,completionHandler:@escaping CompletionHandler){
        self.addObserver(observer, completionHandler: completionHandler)
        self.notify()
    }
    
    private func notify(){
        observers.forEach({$0.value(value)})
    }
    deinit {
        observers.removeAll()
    }
}
class DynamicValue2<U>{
    typealias CompletionHandler = ((U) -> Void)
    
    var value:U{
        didSet{
            self.notify()
        }
    }
    //建立監聽陣列
    private var observers = [String:CompletionHandler]()
    
    init(_ value:U) {
        self.value = value
    }
    
    public func addObserver(_ observer:NSObject,completionHandler:@escaping CompletionHandler){
        observers[observer.description] = completionHandler
    }
    
    public func addAndNotify(_ observer:NSObject,completionHandler:@escaping CompletionHandler){
        self.addObserver(observer, completionHandler: completionHandler)
        self.notify()
    }
    
    private func notify(){
        observers.forEach({$0.value(value)})
    }
    deinit {
        observers.removeAll()
    }
}

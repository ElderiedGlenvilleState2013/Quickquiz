//
//  PurchaseManager.swift
//  QuickQuiZ!
//
//  Created by McKinney family  on 5/28/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//
typealias CompletionHandler = (_ success: Bool) -> ()

import StoreKit
import Foundation






class PurchaseManager: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
  
    
    static let instance = PurchaseManager()
    
    var productRequest: SKProductsRequest!
    var product = [SKProduct]()
    var transactionComplete: CompletionHandler?
    
    func fetchProducts() {
        let productIds = NSSet(object: TAP_REMOVE_ADS) as! Set<String>
        productRequest = SKProductsRequest(productIdentifiers: productIds)
        productRequest.delegate = self
        productRequest.start()
    }
    
    
    
    let TAP_REMOVE_ADS = "ElderiedMcKinney.QuickQuiZ.ads"
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
        if response.products.count > 0 {
            product = response.products
            print(response.products.debugDescription)
        }
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            switch transaction.transactionState {
            case .purchased:
                SKPaymentQueue.default().finishTransaction(transaction)
                if transaction.payment.productIdentifier == TAP_REMOVE_ADS {
                    UserDefaults.standard.set(true, forKey: TAP_REMOVE_ADS)
                    transactionComplete?(true)
                }
                break
            case .failed:
                SKPaymentQueue.default().finishTransaction(transaction)
                transactionComplete?(false)
                break
            case .restored:
                SKPaymentQueue.default().finishTransaction(transaction)
                transactionComplete?(true)
            default:
                transactionComplete?(false)
                break
            }
        }
        
        
    }
    
    func purchaseRemoveAds(onComplete: @escaping CompletionHandler) {
        if SKPaymentQueue.canMakePayments() && product.count > 0 {
           transactionComplete = onComplete
            let removeAdsProduct = product[0]
            let payment = SKPayment(product: removeAdsProduct)
            SKPaymentQueue.default().add(payment)
            
        } else {
            onComplete(false)
        }
    
    }
   
    
    
    
    
}






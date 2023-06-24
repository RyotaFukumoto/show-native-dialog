//
//  ShowDialogPlugin.swift
//  App
//
//  Created by ryota.fukumoto on 2023/06/19.
//

import Foundation
import Capacitor
import UIKit


@objc(ShowDialogPlugin)
public class ShowDialogPlugin: CAPPlugin {
    @objc public func show(_ call:CAPPluginCall) {
        let title = call.getString("title") ?? ""
        let message = call.getString("message") ?? ""
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async {
            UIApplication.shared.delegate?.window??.rootViewController?.present(alert, animated: true, completion: nil)
        }
    }
}

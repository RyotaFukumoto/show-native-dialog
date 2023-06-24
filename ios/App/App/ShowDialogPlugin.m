//
//  ShowDialogPlugin.m
//  App
//
//  Created by ryota.fukumoto on 2023/06/19.
//

#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

CAP_PLUGIN(ShowDialogPlugin,"ShowDialog",
           CAP_PLUGIN_METHOD(show,CAPPluginReturnPromise);
           )

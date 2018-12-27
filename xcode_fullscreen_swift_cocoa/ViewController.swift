//
//  ViewController.swift
//  xcode_fullscreen_swift_cocoa
//
//  Created by Mac User on 12/26/18.
//  Copyright © 2018 Mac User. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    // https://stackoverflow.com/questions/38164793/mac-os-xcode-swift-2-2-fullscreen-mode
    /*
     // this works - but only for a single monitor
    override func viewDidAppear() {
        view.window?.toggleFullScreen(self)
    }
     */
    
    // this doesn't show the red/yellow/green window controls
    override func viewDidAppear() {
        let presOptions: NSApplication.PresentationOptions = [.fullScreen, .autoHideMenuBar]
        let optionsDictionary = [NSView.FullScreenModeOptionKey.fullScreenModeApplicationPresentationOptions: presOptions]
        view.enterFullScreenMode(NSScreen.main!, withOptions: optionsDictionary)
        view.wantsLayer = true
    }
}


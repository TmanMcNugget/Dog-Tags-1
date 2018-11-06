//
//  ScannerViewController.swift
//  Dog Tags #1
//
//  Created by period2 on 11/5/18.
//  Copyright © 2018 period2. All rights reserved.
//

import UIKit
import AVFoundation

class ScannerViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var scanner: UIView!
    
    var captureSession:AVCaptureSession?
    var videoPreviewLayer:AVCaptureVideoPreviewLayer?
    var qrCodeFrameView:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

     }
}

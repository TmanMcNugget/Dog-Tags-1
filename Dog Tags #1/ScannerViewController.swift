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
    var deviceDiscoverySession:Int = 0
    let deviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInDualCamera], mediaType: AVMediaType.video, position: .back)

    let captureDevice = deviceDiscoverySession.devices.first
    if{}
    else
    {
    print("Failed to get the camera device")
    return
    }

    do {
    let captureMetadataOutput = AVCaptureMetadataOutput()
    captureSession.addOutput(captureMetadataOutput)
    let input = try AVCaptureDeviceInput(device: captureDevice)

    captureSession.addInput(input)

    } catch {

    print(error)
    return
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

     }


}

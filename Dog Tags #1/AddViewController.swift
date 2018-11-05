//
//  AddViewController.swift
//  Dog Tags #1
//
//  Created by period2 on 11/1/18.
//  Copyright © 2018 period2. All rights reserved.
//

import UIKit
import AVFoundation

class AddViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AVCaptureMetadataOutputObjectsDelegate{
    
    var captureSession:AVCaptureSession?
    var videoPreviewLayer:AVCaptureVideoPreviewLayer?
    var qrCodeFrameView:UIView?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
       
    }
    
}
                                                    

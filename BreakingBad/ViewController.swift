//
//  ViewController.swift
//  BreakingBad
//
//  Created by Noirozr on 16/5/19.
//  Copyright © 2016年 Yongjia Liu. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    
    private var _sceneView: SCNView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sceneView = SCNView(frame: self.view.frame)
        self.view.addSubview(sceneView)
        let scene = SCNScene()
        sceneView.scene = scene
        
        let omnilightNode = SCNNode()
        omnilightNode.light = SCNLight()
        omnilightNode.light?.type = SCNLightTypeOmni
        omnilightNode.light?.color = UIColor(white: 0.76, alpha: 1.0)
        omnilightNode.position = SCNVector3Make(0, 50, 50)
        scene.rootNode.addChildNode(omnilightNode)
        
        let atom = Atom.oxygenAtom()
        let atomNode = Atom.initAtom(atom)
        scene.rootNode.addChildNode(atomNode)
        atomNode.physicsBody = SCNPhysicsBody(type: .Dynamic, shape: nil)
        
        
        
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3Make(0, 0, 10)
        scene.rootNode.addChildNode(cameraNode)
        
        _sceneView = sceneView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


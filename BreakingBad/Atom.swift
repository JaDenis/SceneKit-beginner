//
//  Atom.swift
//  BreakingBad
//
//  Created by Noirozr on 16/5/19.
//  Copyright © 2016年 Yongjia Liu. All rights reserved.
//

import UIKit
import SceneKit

class Atom: NSObject {
    
    class func carbonAtom() -> SCNGeometry {
        let carbonAtom = SCNSphere(radius: 1.20)
        carbonAtom.firstMaterial?.diffuse.contents = UIColor.darkGrayColor()
        carbonAtom.firstMaterial?.specular.contents = UIColor.whiteColor()
        return carbonAtom
    }
    
    class func hydrogenAtom() -> SCNGeometry {
        let hydrogenAtom = SCNSphere(radius: 1.20)
        hydrogenAtom.firstMaterial?.diffuse.contents = UIColor.lightGrayColor()
        hydrogenAtom.firstMaterial?.specular.contents = UIColor.whiteColor()
        return hydrogenAtom
    }
    
    class func oxygenAtom() -> SCNGeometry {
        let oxygenAtom = SCNSphere(radius: 1.2)
        oxygenAtom.firstMaterial?.diffuse.contents = UIColor.redColor()
        oxygenAtom.firstMaterial?.specular.contents = UIColor.whiteColor()
        return oxygenAtom
    }
    
    class func fluorineAtom() -> SCNGeometry {
        let fluorineAtom = SCNSphere(radius: 1.2)
        fluorineAtom.firstMaterial?.diffuse.contents = UIColor.yellowColor()
        fluorineAtom.firstMaterial?.specular.contents = UIColor.whiteColor()
        return fluorineAtom
    }
    
    class func initAtom(atom: SCNGeometry) -> SCNNode {
        let atomNode = SCNNode(geometry: atom)
        atomNode.position = SCNVector3Make(0, 0, 0)
        
        return atomNode
    }
}

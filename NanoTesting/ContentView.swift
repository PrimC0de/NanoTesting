//
//  ContentView.swift
//  NanoTesting
//
//  Created by ichiro on 18/05/23.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        var boxa : Experience.Box = Experience.Box()
        let dispatchQ1 = DispatchQueue(label: "q1")
        DispatchQueue.main.async {
            boxa = try! Experience.loadBox()
//            dispatchQ1.async {
//            }
            arView.scene.anchors.append(boxa)
        }
        
//        let boxAnchor = try! Experience.loadBox()
//        arView.scene.anchors.append(boxAnchor)
//
//        let boxAnchor1 = try! Experience.loadBox1()
//        arView.scene.anchors.append(boxAnchor1)
        
//        let boxAnchor2 = try! Experience.loadBox2()
//        arView.scene.anchors.append(boxAnchor2)
//
//        let boxAnchor3 = try! Experience.loadBox3()
//        arView.scene.anchors.append(boxAnchor3)
//
//        let boxAnchor4 = try! Experience.loadBox4()
//        arView.scene.anchors.append(boxAnchor4)
//
//        let boxAnchor5 = try! Experience.loadBox5()
//        arView.scene.anchors.append(boxAnchor5)
//
//        let boxAnchor6 = try! Experience.loadBox6()
//        arView.scene.anchors.append(boxAnchor6)
//
//        let boxAnchor7 = try! Experience.loadBox7()
//        arView.scene.anchors.append(boxAnchor7)
//
//        let boxAnchor8 = try! Experience.loadBox8()
//        arView.scene.anchors.append(boxAnchor8)
//
//        let boxAnchor9 = try! Experience.loadBox9()
//        arView.scene.anchors.append(boxAnchor9)
//
//        let boxAnchor10 = try! Experience.loadBox10()
//        arView.scene.anchors.append(boxAnchor10)
//
//        let boxAnchor11 = try! Experience.loadBox11()
//        arView.scene.anchors.append(boxAnchor11)
//
//        let boxAnchor12 = try! Experience.loadBox12()
//        arView.scene.anchors.append(boxAnchor12)
//
//        let boxAnchor13 = try! Experience.loadBox13()
//        arView.scene.anchors.append(boxAnchor13)
//
//        let boxAnchor14 = try! Experience.loadBox14()
//        arView.scene.anchors.append(boxAnchor14)
//
//        let boxAnchor15 = try! Experience.loadBox15()
//        arView.scene.anchors.append(boxAnchor15)
//
//        let boxAnchor16 = try! Experience.loadBox16()
//        arView.scene.anchors.append(boxAnchor16)
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

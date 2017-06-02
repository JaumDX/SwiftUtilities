//
//  CreateView.swift
//  SwiftUtilities
//
//  Created by Solid Jaum on 02/06/17.
//  Copyright © 2017 Time dos Sonhos. All rights reserved.
//

import Foundation


public class Image: NSObject {
    

    //Cria uma imagem.
    public static func create(x: Double, y: Double, width: Double, height: Double, image: UIImage, contentMode: UIViewContentMode ) -> UIImageView{
        
        let view = UIImageView.init(frame: CGRect(x: x, y: y, width: width, height: height))
        view.image = image
        view.contentMode = contentMode
        
        return view
        
    }
    
    
    //Cria uma image com uma açao.
    public static func createWithAction(x: Double, y: Double, width: Double, height: Double, image: UIImage, contentMode: UIViewContentMode, selector: Selector) -> UIImageView{
        
        
        let view = UIImageView.init(frame: CGRect(x: x, y: y, width: width, height: height))
        view.image = image
        view.contentMode = contentMode
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: selector))
        
        return view

    }
}

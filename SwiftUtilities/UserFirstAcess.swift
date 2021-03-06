//
//  UserFirstAcess.swift
//  SwiftUtilities
//
//  Created by Solid Jaum on 02/06/17.
//  Copyright © 2017 Time dos Sonhos. All rights reserved.
//

import UIKit

public class UserFirstAcess: UserDefaults {

    
    //Manipula uma janela para  aparecer no primeiro uso do app.
    
    //Receber o identificador da tlea a ser apresentada apenas uma vez, a janela onde essa tela sera apresentada e o UserDefault do usuario.
    public static func saveFirstAcess(storyboardIdentifier: String, window: inout UIWindow){
        
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        
        if !launchedBefore {
            window.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: storyboardIdentifier)
            UserDefaults.standard.set(true, forKey: "launchedBefore")
        }
    }
    
}



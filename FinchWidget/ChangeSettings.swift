//
// Here you can customize specific colors on the widget.
// These changes can be integrated into any function,
// or set to react to any app event or widget trigger.
//

import SwiftUI
import WidgetKit
import Limooonik


struct ChangeSettings {
    static var current: FinchConfig {
            var config = FinchConfig()
            
            // Change the eye color of the bird
            config.eyeColor = .black
            
            // Change the color of the spots on the mushroom
            config.mushroomSpotsColor = .white
            
            // Change the color of the energy progress bar
            config.progressBarColor = Color(red: 255 / 255, green: 153 / 255, blue: 51 / 255)
            
            // Change the color of the spinning star
            config.starColor = Color(red: 20 / 255, green: 100 / 255, blue: 20 / 255)
            
            return config
        }
}

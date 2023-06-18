//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Lera Savchenko on 18.06.23.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}

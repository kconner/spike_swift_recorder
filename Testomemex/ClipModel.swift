//
//  ClipModel.swift
//  Testomemex
//
//  Created by Mason F. Matthews on 8/14/15.
//  Copyright (c) 2015 Mason F. Matthews. All rights reserved.
//

import Foundation

class ClipModel {
    
    var name: String
    var transcription: String
    
    init(name: String, file: String) { //Not String eventually
        self.name = name
        // Hit the API to save this file to the database
        // Then save the transcription returned from the API in transcription
        self.transcription = name
    }

}
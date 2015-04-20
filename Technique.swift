//
//  Technique.swift
//  ATLAS
//
//  Created by Alicia Cicon on 4/20/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class Technique
{
    // A technique is a means of altering the drawing in some way
    // A technique can be composed of sub-techniques
    
    // Right now, in its simplest form, a technique is literally just placing a pixel
    // Not even a combination of pixels. Just A PIXEL.
    
    var coord:Coord
    
    init(coord:Coord)
    {
        self.coord = coord
    }
    
    func applyToDrawing(drawing:Drawing)
    {
        drawing.addPixel(coord.x, y:coord.y, v:1)
    }
}
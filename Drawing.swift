//
//  Drawing.swift
//  ATLAS
//
//  Created by Alicia Cicon on 4/20/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

struct Pixel
{
    var x:Int
    var y:Int
    var v:Int
}

struct Coord
{
    var x:Int
    var y:Int
}

class Drawing
{
    var pixels:Array2D<Int>
    var actionBuffer = [Pixel]()
    
    init(width:Int, height:Int)
    {
        // x, numCols = width
        // y, numRows = height
        pixels = Array2D<Int>(rows:height, cols:width, filler:0)
    }
    
    func addPixel(x:Int, y:Int, v:Int)
    {
        actionBuffer.append(Pixel(x:x, y:y, v:v))
    }
    
    func popBuffer()
    {
        if (actionBuffer.count > 0)
        {
            let nextCoord = actionBuffer.removeAtIndex(0)
            pixels[nextCoord.x, nextCoord.y] = nextCoord.v
        }
    }
}

//
//  Genetic Algorithm.swift
//  ATLAS
//
//  Created by Martin Mumford on 5/1/15.
//  Copyright (c) 2015 Brigham Young University. All rights reserved.
//

import Foundation

protocol GeneticItem
{
//    func
}

class GeneticAlgorithm<T:GeneticItem>
{
    var genePool:[T]
    
    init()
    {
        genePool = [T]()
    }
    
    // 1.0 is perfection, 0.0 is absolute failure
    func fitness(candidate:T) -> Double
    {
        return 1.0
    }
}
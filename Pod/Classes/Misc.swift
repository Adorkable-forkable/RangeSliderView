//
//  Misc.swift
//  Pods
//
//  Created by Omar Abdelhafith on 06/02/2016.
//
//

#if os(OSX)
import Foundation
#else
import UIKit
#endif

precedencegroup FramePrecendence {
	associativity: left
	higherThan: AssignmentPrecedence

}
infix operator |> : FramePrecendence 

func |> <T, W> (left: T?, right: (T) -> W?) -> W? {
  guard let left = left else { return nil }
  return right(left)
}

func |> <T, W> (left: T, right: (T) -> W) -> W {
  return right(left)
}

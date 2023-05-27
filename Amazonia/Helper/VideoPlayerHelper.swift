//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Donizetti de Souza on 11/3/22.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
  if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
      print("here")
    videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
    videoPlayer?.play()
  } else {
      print("nothing")
  }
  return videoPlayer!
}

//
//  Player.swift
//  J'Ma Radio
//
//  Created by Алексей Волобуев on 12.05.2023.
//

import Foundation
import AVFoundation

enum Constants {
    static let musicURLString: String = "https://radiojma.hostingradio.ru/radiojma128.mp3"
}

private var isPlaying: Bool = false
private var audioPlayer: AVPlayer = {
    if let url = URL(string: Constants.musicURLString) {
        let playerItem = AVPlayerItem(url:  url)
        let audioPlayer = AVPlayer(playerItem: playerItem)
        return audioPlayer
    } else {
        return AVPlayer(playerItem: nil)
    }
}()

func pauseButtonTapped() {
    isPlaying.toggle()
    play(isPlaying)
}

func play(_ start: Bool) {
    if start {
        audioPlayer.play()
    } else {
        audioPlayer.pause()
    }
}

((window, $) ->
  'use strict'
  player = new MediaElementPlayer('#opener-audio-audio')
  titleEl = $ '#opener-audio-title'
  playBtn = $ '.opener-audio-playlist .play'

  playTrack = () ->
    track = $(this).parent()
    url = track.data('url')
    title = track.find('.title').text()

    titleEl.text(title)
    player.pause()
    player.setSrc(url)
    player.play()

  playBtn.on('click', playTrack)
) this, this.jQuery

<div class="opener-main-audio" class="opener-main opener-audio">
    <audio id="opener-audio-audio" src="${audio_url}"></audio>
    <h3 id="opener-audio-title">${audio_title}</h3>
    % if meta:
    <ul class="opener-audio-playlist">
        % for track in meta['audio']['playlist']:
        <li data-url="${h.quoted_url('files:direct', path=th.join(meta.path, track['file']))}">
            <span class="track-info">
                <span class="title">${track['title']}</span>
                % if track.get('duration'):
                <span>(${track['duration']})</span>
                % endif
            </span>
            <a class="play" href="javascript:;">Play</a>
        </li>
        % endfor
    </ul>
    % endif
</div>
<script type="text/javascript" src="${assets['js/audio']}"></script>

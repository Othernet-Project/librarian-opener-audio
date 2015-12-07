import os

from bottle_utils.html import quoted_url

from librarian_content.decorators import with_meta
from librarian_core.contrib.templates.renderer import view


@view('openers/audio')
@with_meta(abort_if_not_found=False)
def audio_opener(path, meta):
    if not meta:
        return dict(audio_url=quoted_url('files:direct', path=path),
                    audio_title=os.path.basename(path))

    audio_path = os.path.join(meta.path, meta['audio']['playlist'][0]['file'])
    return dict(audio_url=quoted_url('files:direct', path=audio_path),
                audio_title=meta['audio']['playlist'][0]['title'],
                meta=meta)

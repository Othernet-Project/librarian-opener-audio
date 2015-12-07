from bottle_utils.i18n import lazy_gettext as _

from .opener import audio_opener


def initialize(supervisor):
    supervisor.exts.openers.register('audio',
                                     label=_("Listen"),
                                     route=audio_opener,
                                     content_type='audio')

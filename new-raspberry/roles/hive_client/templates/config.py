# -*- coding: utf-8 -*-
from uuid import getnode as get_mac

import os
_basedir = os.path.abspath(os.path.dirname(__file__))

DEBUG = {{ DEBUG }}
PROJECT_ENV = '{{ PROJECT_ENV }}'

CORE_SERVER = '{{ CORE_SERVER }}'
CORE_SERVER_ENDPOINT = '%s/v1/' % CORE_SERVER  # must have / at end
MAC_ADDR = get_mac()

PUSHER_APP_ID = {{ PUSHER_APP_ID }}
PUSHER_KEY = '{{ PUSHER_KEY }}'
PUSHER_SECRET = '{{ PUSHER_SECRET }}'

STATIC_PATH = os.path.join(_basedir, 'static')
MEDIA_PATH = os.path.join(_basedir, '../../', 'media')

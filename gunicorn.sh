#!/bin/bash
export LUMINOSO_DATA=/srv/conceptnet5/lumi_data
source /srv/conceptnet5/env/bin/activate
gunicorn -b 0.0.0.0:8087 -w 1 conceptnet5.api:app

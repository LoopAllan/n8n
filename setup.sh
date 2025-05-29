#!/bin/bash

set -e

[ -f ./.env ] && exit

cp .env.sample .env

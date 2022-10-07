#!/bin/bash

set -e

#############################################################################
#                                                                           #
# Project 'pterodactyl-installer'                                           #
#                                                                           #
# Copyright (C) 2018 - 2022, Vilhelm Prytz, <vilhelm@prytznet.se>           #
#                                                                           #
#   This program is free software: you can redistribute it and/or modify    #
#   it under the terms of the GNU General Public License as published by    #
#   the Free Software Foundation, either version 3 of the License, or       #
#   (at your option) any later version.                                     #
#                                                                           #
#   This program is distributed in the hope that it will be useful,         #
#   but WITHOUT ANY WARRANTY; without even the implied warranty of          #
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           #
#   GNU General Public License for more details.                            #
#                                                                           #
#   You should have received a copy of the GNU General Public License       #
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.  #
#                                                                           #
# https://github.com/vilhelmprytz/pterodactyl-installer/blob/master/LICENSE #
#                                                                           #
# This script is not associated with the official Pterodactyl Project.      #
# https://github.com/vilhelmprytz/pterodactyl-installer                     #
#                                                                           #
#############################################################################

export GITHUB_SOURCE="major-refactor"
export GITHUB_BASE_URL="https://raw.githubusercontent.com/vilhelmprytz/pterodactyl-installer/$GITHUB_SOURCE"
export email="test@test.com"
export FQDN="test.madsiv.com"
export user_email="test@test.com"
export user_username="test"
export user_firstname="test"
export user_lastname="test"
export user_password="test"
export CONFIGURE_FIREWALL=true
export ASSUME_SSL=true
export CONFIGURE_LETSENCRYPT=true


# shellcheck source=lib/lib.sh
source /tmp/lib.sh

update_repos

install_packages "curl"
wget https://raw.githubusercontent.com/MadsFast/pterodactyl-installer/major-refactor/installers/panel.sh
bash ~/pterodactyl-installer/installers/wings.sh
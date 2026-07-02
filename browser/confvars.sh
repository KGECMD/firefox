#! /bin/sh
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# MOZ_APP_DISPLAYNAME will be set by branding/configure.sh
# MOZ_BRANDING_DIRECTORY is the default branding directory used when none is
# specified. It should never point to the "official" branding directory.
# For mozilla-beta, mozilla-release, or mozilla-central repositories, use
# "unofficial" branding.
# For the mozilla-aurora repository, use "aurora".
MOZ_BRANDING_DIRECTORY=browser/branding/unofficial
MOZ_OFFICIAL_BRANDING_DIRECTORY=browser/branding/official

# KEC Firefox Privacy & Security-Focused Build Configuration
# Disable all telemetry and data collection by default
MOZ_TELEMETRY_REPORTING=0
MOZ_DATA_REPORTING=0
MOZ_NORMANDY=0
MOZILLA_OFFICIAL=0

# Disable experiments
MOZ_EXPERIMENTS=0
MOZ_SHIELD=0

# Security hardening flags
MOZ_HARDENING=1
MOZ_SANDBOX=1
MOZ_X11=1

# Enable security features
MOZILLA_OFFICIAL=0
MOZ_UPDATER=1

# Cross-platform support
MOZ_X11=1
MOZ_WIDGET_GTK=1

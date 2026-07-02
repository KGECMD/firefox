# KEC Firefox - Privacy & Security-Focused Browser Fork

![Firefox Browser](./docs/readme/readme-banner.svg)

A privacy and security-focused fork of [Mozilla Firefox](https://firefox.com/) that removes all telemetry, AI features, and sponsored content while providing enterprise-grade security protections.

## Key Features

### Privacy & Security (Enabled by Default)

- **Zero Telemetry**: All Mozilla telemetry, Glean, and data collection completely disabled
- **Zero AI Features**: No AI sidebar, chat, summaries, or writing tools
- **No Sponsored Content**: All sponsored shortcuts, suggestions, and ads removed
- **HTTPS-Only Mode**: Enforced by default for all connections
- **DNS-over-HTTPS (DoH)**: Encrypted DNS queries enabled
- **Enhanced Tracking Protection**: Strict blocking of trackers and fingerprinting
- **First-Party Isolation**: Cookies isolated to their origin site
- **WebRTC Leak Protection**: Prevents IP address leaks in video calls
- **Fingerprint Resistance**: Canvas, WebGL, and font fingerprinting protection
- **No Pocket Integration**: Read-it-later service disabled
- **No Normandy/Experiments**: All experimentation features removed

### Security Hardening

- **Memory Protection**: Enhanced heap hardening and corruption protections
- **TLS 1.3**: Enforced for maximum cryptographic security
- **Mixed Content Blocking**: Complete blocking of insecure content
- **Process Isolation**: Enhanced sandboxing and process separation
- **Certificate Hardening**: Strict OCSP stapling and SHA-1 enforcement
- **Site Isolation**: Strict first-party isolation policies
- **Permissions Auto-Revocation**: Automatic reset of unused permissions
- **Spectre/Meltdown Mitigations**: Window size fingerprinting protection
- **Content Security Policy**: Strict CSP enforcement
- **XSS Protection**: Enhanced cross-site scripting defenses
- **Clickjacking Protection**: Secure window features

### Cross-Platform Support

- **Windows**: Full sandboxing and secure process isolation
- **macOS**: GPU tracking disabled, secure sandboxing
- **Linux**: Full setuid sandbox support

## What Was Removed

- Mozilla Telemetry & Glean metrics collection
- Firefox Suggest & sponsored shortcuts
- Pocket integration
- Normandy experiments & studies
- VPN promotions
- Mozilla VPN integrations
- Activity Stream telemetry
- Health report uploads
- Crash reporter telemetry
- All background data collection

## Building

### Prerequisites

For detailed build requirements, see [Firefox Build Requirements](https://firefox-source-docs.mozilla.org/setup/installation.html).

Basic requirements:
- Python 3.x
- Rust
- clang/LLVM
- autoconf 2.13 (for some platforms)
- 8GB+ RAM recommended
- 30GB+ free disk space

### Quick Build

```bash
# Clone the repository
git clone https://github.com/KGECMD/firefox.git
cd firefox

# Bootstrap the build system
./mach bootstrap

# Build Firefox
./mach build
```

### Build Commands

```bash
./mach build                 # Full build
./mach build faster         # Faster incremental build
./mach run                  # Run the built browser
./mach package              # Create distribution package
```

### Platform-Specific Builds

**Windows:**
```bash
./mach build --target=win32
./mach package --target=win32
```

**macOS:**
```bash
./mach build --target=darwin
./mach package --target=darwin
```

**Linux:**
```bash
./mach build --target=linux
./mach package --target=linux
```

## Contributing

This is a fork of Mozilla Firefox. For contribution guidelines, see the original [Firefox Contributors' Quick Reference](https://firefox-source-docs.mozilla.org/contributing/contribution_quickref.html).

### Reporting Issues

For Firefox-related issues, please use [bugzilla.mozilla.org](https://bugzilla.mozilla.org/).

For issues specific to this fork, please open an issue on GitHub.

## License

Firefox is available under the terms of the [Mozilla Public License v2.0](LICENSE).

## Resources

- [Firefox Source Docs](https://firefox-source-docs.mozilla.org/)
- [Mozilla Firefox Repository](https://github.com/mozilla/firefox)
- [Firefox Nightly Builds](https://www.mozilla.org/firefox/channel/desktop/#nightly)
- [Mozilla Security](https://wiki.mozilla.org/Security)

## Privacy Policy

This browser does NOT:
- Send any telemetry or usage data
- Connect to Mozilla's metrics servers
- Include any AI features
- Show sponsored content or ads
- Connect to experimentation services
- Send crash reports without explicit consent

Your browsing data stays on your device.

## Security Features Verified

All security preferences can be verified in `about:config`:

| Setting | Value | Purpose |
|---------|-------|---------|
| `dom.security.https_only_mode` | true | HTTPS enforcement |
| `network.trr.mode` | 2 | DNS-over-HTTPS |
| `security.tls.version.min` | 3 | TLS 1.3 minimum |
| `privacy.resistFingerprinting` | true | Fingerprint protection |
| `network.cookie.cookieBehavior` | 1 | Third-party cookie block |
| `browser.safebrowsing.enabled` | true | Malware protection |
| `dom.webgl.disabled` | true | WebGL fingerprint protection |
| `media.peerconnection.ice.default_address_only` | true | WebRTC leak protection |

---

*This is an unofficial fork and is not affiliated with, endorsed by, or connected to Mozilla Foundation or Mozilla Corporation.*

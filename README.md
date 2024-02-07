## What is this?

aap-juce-plugin-host is a port of JUCE AudioPluginHost (`JUCE/extras/AudioPluginHost`) to [aap-juce](https://github.com/atsushieno/aap-juce).

It used to be a normative use case for of `aap_audio_plugin_client` module (plugin hosting part), which is now taken by aap-juce-simple-host repo. This JUCE app port still works, but it is not giving best aap-juce experience (e.g. you cannot connect nodes by touches, without mouse).

It should be noted that AudioPluginHost is not very optimal for AAP (very minimalistic changes to the original sources were made). The audio settings are not optimal for AAP and the audio output sounds crippled. JUCE plugins are, on the other hand, in general fine and they give good audio outputs through their AAP `MidiDeviceService`, for example.

## Building

There used to be aap-juce-plugin-host Projucer version (i.e. built using Projucer), but this repository is based on CMake. It builds aap-core, patch JUCE sources (this means, patching both JUCE modules and `extras/AudioPluginHost`), and build AudioPluginHost just as a normal CMake target, within Android context.

The normative build command is `make`.

For further build dependencies, see the GitHub Actions build setup in `.github/workflows/actions.yml` would give you more details (it actually reuses common workflows from aap-juce, so you will end up looking up the file in that submodule).

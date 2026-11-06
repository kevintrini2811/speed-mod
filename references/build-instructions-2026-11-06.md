# Explicit Speed Mod build

Status: DONE.

The README now builds `SpeedMod.csproj` before `FusionMod.csproj` explicitly.
Fusion's optional Speed Mod integration no longer supplies a transitive build.
The installer consumes the two build outputs; it does not compile projects.

Verification on 2026-11-06:

- Cleaned Speed Mod and Fusion Mod build outputs.
- Built Speed Mod in Release: zero errors and zero warnings.
- Built Fusion Mod in Release: zero errors and zero warnings.
- Confirmed a newly generated `speed-mod/bin/Release/net6.0/SpeedMod.dll`.
- Reviewed the README diff and checked whitespace.

This correction changes documentation only. It does not install DLLs or change
game behavior, so no live game test is required.

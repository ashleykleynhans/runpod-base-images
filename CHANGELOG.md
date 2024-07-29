# CHANGELOG

## 2024-07-29

- Added `parallel`, `pv`, `sysstat` Ubuntu packages.

## 2024-07-28

- Added `--enable-proposed-api` to code-server arguments so that the
  terminal clipboard can function correctly.

## 2024-07-25

- Bumped xformers 0.0.27.post1 to xformers 0.0.27.post2.

## 2024-07-25

- Added `py311-cu121-torch240` target for Python 3.11 + CUDA 12.1 + torch 2.4.0.
- Added `py310-cu121-torch240` target for Python 3.10 + CUDA 12.1 + torch 2.4.0.

## 2024-07-14

- Added support for multiple Python versions.
- Renamed targets to include Python version.
- Added `py311-cu121-torch231` target for Python 3.11 + CUDA 12.1 + torch 2.3.1.
- Added `py311-cu121-torch222` target for Python 3.11 + CUDA 12.1 + torch 2.2.2.
- Removed `py310-cu121-torch221` target.
- Removed `py310-cu121-torch230` target.

## 2024-07-13

- Removed `cu118-torch200` target.
- Removed `cu118-torch212` target.
- Removed `cu118-torch222` target.
- Removed `cu118-torch230` target.

## 2024-07-10

- Added `cu121-torch231` target for CUDA 12.1 + torch 2.3.1.

## 2024-07-01

- Added `cu121-torch212` target for CUDA 12.1 + torch 2.1.2.
- Added code-server.
- Disabled CUDA and Pytorch tests.

## 2024-06-20

- Added `cu121-torch222` target for CUDA 12.1 + torch 2.2.2.

## 2024-06-15

- Added Pytorch test on container startup.

## 2024-06-14

- Added CUDA version checker to the container start script.

## 2024-05-20

- Added `cu121-torch230` target for CUDA 12.1 + torch 2.3.0.

## 2024-05-08

- Moved installation of apps into build/apps.sh.
- Moved installation of apt packages into build/packages.sh.
- Added `cu118-torch200` target for CUDA 11.8 + torch 2.0.0.

## 2024-05-06

- Added `cu118-torch230` target for CUDA 11.8 + torch 2.3.0.
- Added cron service.

## 2024-04-15

- Added aria2.
- Allow different registry.
- Fix naming conflict.

## 2024-04-12

- Update rclone.

## 2024-04-10

- Created the repo.

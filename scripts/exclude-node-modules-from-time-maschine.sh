#!/usr/bin/env bash
# src: https://programmingarehard.com/2022/03/03/time-machine-for-developers.html/
cd "$HOME/documents" && find $(pwd) \
  -maxdepth 4 \
  -type d \( -name vendor -o -name node_modules \) \
  -prune \
  -exec tmutil addexclusion {} \; \
  -exec tmutil isexcluded {} \;



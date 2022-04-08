#!/usr/bin/env bash
# The nix-store -q thing is an absolute hack, but I don't know enough about Nix to solve this
socat -b 4096 UDP-RECV:42001 STDOUT \
    | python2.7 "$(nix-store -q "$(command -v tetra-rx)")"/lib/osmo-tetra-sq5bpf/demod/python-3.7/simdemod2.py -o /dev/stdout -i /dev/stdin \
    | TETRA_HACK_RXID=1 TETRA_HACK_PORT=7379 tetra-rx -a -r -s -i /dev/stdin &
# nix-telive

Use sq5bpf's Telive with Nix on any Nix compatible Linux system

**Please do not direct issues with this setup to sq5bpf.**

### Why?

Many components of osmo-tetra rely on Python 2.7 and which is often not availible on modern distros. Telive's default gnuradio-companion files only work with GNURadio 3.7. Using Nix to manage an environment with older packages made the most sense to not clutter my system with random stuff.

### Instruction Summary

Everything here should be done within nix-shell

1. [Read Telive's documentation.](https://github.com/sq5bpf/telive/blob/master/telive_doc.pdf) It really helps you understand what's going on, and should anything go wrong, it will help with your troubleshooting. It's also essential to read to understand how to operate Telive.

2. Change environment variables in default.nix to suit your location. By default it is configured to listen to the Toronto Transit Commission's TETRA network.

3. Start the physical layer, [anything from here should work](https://github.com/sq5bpf/telive/tree/master/gnuradio-companion/receiver_xmlrpc).

4. Run tetra-rx.sh.

5. Start a new terminal with dimensions 203x60. with lxterminal you can use the argument --geometry=203x60. In this terminal; run telive.

### Thanks

I want to give a huge thank you to sq5bpf for making Telive. I love listening to the public transit operators in my city, and Telive made that possible for me.

Thank you to winterqt and brecert for helping me learn how to make Nix packages
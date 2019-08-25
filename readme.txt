The filename and paragraph below are all memes, so don't take it as
condescending / offensive or anything.

I'm certain there will still be a bunch of people directly asking me why
my romhack doesn't work, but on the off chance that someone is actually
reading this instead of asking me, here's some help since N64 emulators
can be a bit tricky to get set up.

tl;dr you need to use GLideN64 and set your cpu mode to interpreter in
your emulator before it works.

# Error Codes

- Error 01:
    - You need to set the CPU mode to "Interpreter" in your emulator.
        - For PJ64 1.6:
            - Go to Options -> Settings, uncheck the "Hide Advanced
              Settings" option if you haven't already (then click OK and
              go back to the settings menu), then click on the "Advanced"
              tab, then set the "CPU core style" dropdown to say
              "Interpreter," then click OK.
      - For Mupen64:
          - Go to Options -> Settings, then click on the "General" tab,
            then set the "CPU core" option to say "Pure Interpreter,"
            then click OK.

- Error 02:
    - The game needs GLideN64 to work properly, so download it from here
      https://github.com/gonetz/GlideN64/releases/ (get the **GLideN64
      Public Release 7z** file,) then extract it using 7-zip or WinRAR
      (7-zip is recommended) and copy the ***contents*** of the
      **bin/Zilmar-specs** folder into your plugins folder.
          - For PJ64 1.6: C:/Program Files (x86)/Project64 1.6/Plugin/
          - For PJ64 2.x: Project64/Plugin/GFX/
          - For Mupen64: Mupen64/Plugin/
    - Go to Options -> settings, then click the Plugins tab, then in the
      Video plugins dropdown, select "GLideN64 Public Release (version)"
      then click OK.
    - You may also need to enable the "Emulate frame buffer" option in
      the Frame buffer tab of the GLideN64 Settings menu.

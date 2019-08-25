import sys
import os

SEGMENTS = (
    ( "data/level_title",    "LevelTitle",    ( 0x07, 0x80  ) ),
    ( "data/level_hub",      "LevelHub",      ( 0x07,       ) ),
    ( "data/level_rickroll", "LevelRickroll", ( 0x07,       ) ),
    ( "data/level_main",     "LevelMain",     ( 0x07, 0x0A, ) ),
    ( "data/level_kuppa",    "LevelKuppa",    ( 0x07,       ) ),
    ( "data/star_bg",        "StarBg",        (       0x0A, ) ),
)

EXTERN_SYMBOLS = (
    "lvl_title_fb_preamble",
    "lvl_title_snd_hwtest",
    "rig_select_show_error",
    "lvl_title_halt_on_err",
    "rig_select_error_no",
    "rigLevelTitle01",
    "rigObjPipe",
    "rigObjBlanket",
    "rigLevelHub01",
    "bhvObjWarpPipeDW",
    "bhvObjGPSignpost",
    "bhvObjBlanket",
    "colLevelHub01",
    "texLevelHub01n0004F2cmd",
    "diagEntryHubWelcome",
    "diagEntryHubGpsign",
    "diagEntryHubLegbroken",
    "diagEntryHubMegachicken",
    "diagEntryHubStop",
    "rigLevelRickroll01",
    "rigLevelMain01",
    "colLevelMain01",
    "bhvObjWarpPipeLevelSel",
    "diagEntryMainToadHi",
    "diagEntryMainWallkick",
    "diagEntryMainChuckya",
    "diagEntryMainShell",
    "diagStrMainLvlname",
    "rigLevelKuppa01",
    "colLevelKuppa01",
    "dlLevelKuppa02n0000",
    "rigLevelKuppa02",
    "colLevelKuppa02",
    "diagEntryKuppaDab",
    "diagStrKuppaLvlname",
    "rigObjAaaaaaaaa",
    "rigObjAaaaaaaaa2",
    "dlStarBgF2cmdA",
    "dlStarBgF2cmdB",
)

def load_symfile(fn):
    f = open(fn)
    data = f.read().replace("\x1A", "")
    f.close()
    return [
        ( int(line.split()[0], 16), line.split()[1] )
        for line in data.split("\n")
        if line != ""
    ]

def main():
    # load data
    f = open("build/mario_dev.z64", "rb")
    romdata = f.read()
    f.close()
    symbols = load_symfile("build/mario_dev.sym")

    # make symbol array
    segments = [
        [0, 0, (seg[0], seg[1], s)]
        for seg in SEGMENTS
        for s in seg[2]
    ]
    extern_symbols = [
        [0, exs]
        for exs in EXTERN_SYMBOLS
    ]
    sym_len = 0

    # search symbols for rom start/end
    for sym in symbols:
        for exs in extern_symbols:
            if sym[1] == exs[1].lower():
                exs[0] = sym[0]
                if len(sym[1]) >= sym_len:
                    sym_len = len(sym[1])
        for seg in segments:
            if sym[1].startswith("seg%02x%s" % (seg[2][2], seg[2][1].lower())):
                if sym[1].endswith("start"): seg[0] = sym[0]
                if sym[1].endswith("end"):   seg[1] = sym[0]
                break

    # write bins
    for seg in segments:
        path = os.path.join(seg[2][0], "seg%02X" % seg[2][2], "data.bin")
        f = open(path, "wb")
        f.write(romdata[seg[0] : seg[1]])
        f.close()

    # write symbol defines
    f = open(os.path.join("build", "extern_symbols.inc"), "w")
    for exs in extern_symbols:
        space = " " * (sym_len - len(exs[1]))
        f.write(".definelabel %s,%s 0x%08X\n" % (exs[1], space, exs[0]))
    f.close()

    return 0

if __name__ == "__main__":
    sys.exit(main())

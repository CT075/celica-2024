import sys
import os
import mimetypes
import subprocess
import contextlib
import functools


def main(d, png2dmp, out):
    p = functools.partial(print, file=out)

    p("// THIS FILE IS GENERATED")
    p("PUSH")
    for fname in os.listdir(d):
        name = os.path.splitext(fname)[0]
        file = os.path.join(d, fname)
        match mimetypes.guess_type(file):
            case ("image/png", _):
                output = fname + ".dmp"
                subprocess.run([png2dmp, file, "-o", os.path.join(d, output)])
                p(f"ORG ItemIconGraphicOffs+(128*{name}Icon)")
                p(f"#incbin {output}")
    p("POP")


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(
        prog="MakeIconInstaller", description="assign item icons"
    )

    parser.add_argument("dir")
    parser.add_argument("--output", required=False)
    parser.add_argument("--png2dmp", required=True)

    args = parser.parse_args()

    d = args.dir if args.dir else os.getcwd()

    with (
        open(args.output, "w") if args.output else contextlib.nullcontext(sys.stdout)
    ) as out:
        main(d, args.png2dmp, out)

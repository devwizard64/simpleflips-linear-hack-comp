import sys
import time

def main(argv):
    if len(argv) < 2:
        print("usage: %s <format>" % argv[0])
        return 1

    print(time.strftime(argv[1], time.localtime()))
    return 0

if __name__ == "__main__":
    sys.exit(main(sys.argv))

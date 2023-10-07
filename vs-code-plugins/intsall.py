#!/usr/bin/env python3
import argparse as arg
import subprocess as sp

def args():
    parser = arg.ArgumentParser(description='Installs vscode plugins from given file.')
    parser.add_argument('-f', '--file', dest='PLUGINS_FILE_PATH', required=True, help='Path to the file containing list of vscode plugins to be installed.')
    return parser.parse_args()


def main(args: arg.Namespace):
    with open(args.PLUGINS_FILE_PATH, 'r') as f:
        plugins = [line.strip() for line in f]
        for plugin in plugins:
            print(f'Installing {plugin}')
            sp.run(['code', '--install-extension', plugin])

if __name__ == '__main__':
    main(args())

"""Dotfiles installer."""
import argparse
import os
import shutil
import subprocess
import sys
from typing import List, NamedTuple, Sequence


class File(NamedTuple):
    """File representation."""

    source: str
    target: str


def _clean(path: str) -> str:
    return os.path.abspath(os.path.normpath(path))


def here(path: str) -> str:
    return _clean(os.path.join(os.path.dirname(__file__), path))


def home(path: str) -> str:
    return _clean(os.path.expanduser(os.path.join("~", path)))


FILES: List[File] = [
    File(here("bash/bash_profile"), home(".bash_profile")),
    File(here("bash/bashrc"), home(".bashrc")),
    File(here("bin/hl"), home("bin/hl")),
    File(here("fish"), home(".config/fish")),
    File(here("git/gitconfig"), home(".gitconfig")),
    File(here("python/pythonrc"), home(".pythonrc")),
    File(here("tmux/tmux.conf"), home(".tmux.conf")),
    File(here("vim/vim"), home(".vim")),
    File(here("vim/vimrc"), home(".vimrc")),
]


def install_file(file: File, symlink=False):
    """Install the specified file."""
    directory = os.path.dirname(file.target)
    if not os.path.exists(directory):
        os.makedirs(directory)

    if symlink:
        subprocess.call(["ln", "-sf", file.source, file.target])
    else:
        subprocess.call(["cp", "-rf", file.source, file.target])


def main(argv: Sequence[str] = None) -> int:
    """Entry point of the command line interface."""
    parser = argparse.ArgumentParser()
    args = parser.parse_args(argv)
    for file in FILES:
        install_file(file, symlink=True)
        print(f"{file.source} \033[33;1m->\033[m {file.target}")
    line = " SUCCESS ".center(os.get_terminal_size().columns, "=")
    print(f"\033[32;1m{line}\033[m")
    print(f"{len(FILES)} files have been successfully copied.")
    return 0


if __name__ == "__main__":
    sys.exit(main())

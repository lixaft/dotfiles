"""Installation script."""
import argparse
import os
import subprocess
import sys
from pathlib import Path
from typing import List, NamedTuple, Sequence

HERE = Path(__file__).parent.absolute()
HOME = Path.home()


# Container to handle symlinks.
class Symlink(NamedTuple):
    """Data required to create a symlink."""

    source: Path
    target: Path


# Register the symlinks that should be created.
SYMLINKS: List[Symlink] = [
    Symlink(HERE.joinpath("bash", "bash_profile"), HOME.joinpath(".bash_profile")),
    Symlink(HERE.joinpath("bash", "bashrc"), HOME.joinpath(".bashrc")),
    Symlink(HERE.joinpath("git", "gitconfig"), HOME.joinpath(".gitconfig")),
    Symlink(HERE.joinpath("tcsh", "mycshrc"), HOME.joinpath(".mycshrc")),
    Symlink(HERE.joinpath("tmux", "tmux.conf"), HOME.joinpath(".tmux.conf")),
    Symlink(HERE.joinpath("vim", "vim"), HOME.joinpath(".vim")),
    Symlink(HERE.joinpath("vim", "vimrc"), HOME.joinpath(".vimrc")),
    Symlink(HERE.joinpath("zsh", "zshrc"), HOME.joinpath(".zshrc")),
    Symlink(HERE.joinpath("fish"), HOME.joinpath(".config", "fish")),
    Symlink(HERE.joinpath("starship", "starship.toml"), HOME.joinpath(".config", "starship.toml")),
]


def install_symlinks() -> int:
    """Entry point of the command line interface."""
    print("Installing dotfiles...")
    print("=" * os.get_terminal_size().columns)
    print()

    for symlink in SYMLINKS:
        subprocess.call(["rm", "-rf", str(symlink.target)])
        print(f"{symlink.source} -> {symlink.target}")
        if not symlink.target.parent.exists():
            os.makedirs(symlink.target.parent)
        symlink.target.symlink_to(symlink.source)

    print()
    print("=" * os.get_terminal_size().columns)
    print("Dotfiles installed!")
    return 0


def main(argv: Sequence[str] = None) -> int:
    """Entry point of the command line interface."""
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-a",
        "--all",
        action="store_true",
        help="Use every other action in one.",
    )
    parser.add_argument(
        "-s",
        "--symlinks",
        action="store_true",
        help="Install the symlinks between this file on the home files.",
    )
    args = parser.parse_args(argv)

    if args.all or args.symlinks:
        install_symlinks()
    else:
        parser.print_help()

    return 0


if __name__ == "__main__":
    sys.exit(main())

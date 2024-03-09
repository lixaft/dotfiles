local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
    s("main", {
        t({
            "from __future__ import annotations",
            "",
            "import argparse",
            "from typing import TYPE_CHECKING",
            "",
            "if TYPE_CHECKING:",
            "    from collections.abc import Sequence",
            "",
            "",
            "def main(argv: Sequence[str] | None = None) -> int:",
            "    parser = argparse.ArgumentParser()",
            "    args = parser.parse_args(argv)",
            "    return 0",
            "",
            "",
            'if __name__ == "__main__":',
            "    raise SystemExit(main())",
        }),
    }),
}

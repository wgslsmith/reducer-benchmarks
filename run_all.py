#!/usr/bin/env python3

import json
from pathlib import Path
from compare_reducers import run_test_case


if __name__ == "__main__":
    aggregate_stats = {}
    for group in Path("test_cases").iterdir():
        for path in group.iterdir():

            def run_case(parallelism, out):
                original_size, reducer_stats = run_test_case(
                    path,
                    parallelism=parallelism,
                )

                with open(path.joinpath(out), "w") as f:
                    f.write(
                        json.dumps(
                            {"original_size": original_size, "stats": reducer_stats},
                            indent=4,
                        )
                    )

            if not path.joinpath("stats_st.json").exists():
                print(f"[{path}:st]")
                run_case(1, "stats_st.json")
                print()

            if not path.joinpath("stats_mt_8.json").exists():
                print(f"[{path}:mt8]")
                run_case(8, "stats_mt_8.json")
                print()

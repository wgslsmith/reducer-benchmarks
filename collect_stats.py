#!/usr/bin/env python3

import json
from pathlib import Path
import statistics

st_stats = []
mt_8_stats = []

for group in Path("test_cases").iterdir():
    for path in group.iterdir():
        stats_st = json.loads(path.joinpath("stats_st.json").read_text())
        stats_mt_8 = json.loads(path.joinpath("stats_mt_8.json").read_text())

        st_stats.append(stats_st)
        mt_8_stats.append(stats_mt_8)


def compute_stats(data):
    return {
        "min": min(data),
        "max": max(data),
        "mean": statistics.mean(data),
        "median": statistics.median(data),
    }


def as_time(stats):
    return {
        k: f"{round(seconds // 60)}:{round(seconds % 60)}"
        for k, seconds in stats.items()
    }


def compute_reducer_stats(stats, reducer):
    return {
        "time": as_time(
            compute_stats([stats["stats"][reducer]["time"] for stats in stats])
        ),
        "calls": compute_stats([stats["stats"][reducer]["calls"] for stats in stats]),
        "size": compute_stats([stats["stats"][reducer]["size"] for stats in stats]),
        "reduction": compute_stats(
            [
                round(
                    (stats["original_size"] - stats["stats"][reducer]["size"])
                    / stats["original_size"]
                    * 100,
                    2,
                )
                for stats in stats
            ]
        ),
    }


def compute_config_stats(stats):
    return {
        "creduce": compute_reducer_stats(stats, "creduce"),
        "cvise": compute_reducer_stats(stats, "cvise"),
        "perses": compute_reducer_stats(stats, "perses"),
        "picire": compute_reducer_stats(stats, "picire"),
    }


print(
    json.dumps(
        {
            "original_size": compute_stats(
                [stats["original_size"] for stats in st_stats]
            ),
            "st": compute_config_stats(st_stats),
            "mt_8": compute_config_stats(mt_8_stats),
        },
        indent=4,
    )
)

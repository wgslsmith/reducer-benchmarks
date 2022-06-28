#!/usr/bin/env python3

import argparse
import json
import subprocess
import os

from pathlib import Path
from tempfile import TemporaryDirectory


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("path")
    return parser.parse_args()


def run_reducer(
    shader, inputs, compiler, backend, regex, reducer, out_dir, parallelism
):
    args = [
        "wgslsmith",
        "reduce",
        "crash",
        str(shader),
        str(inputs),
        "--compiler",
        compiler,
        "--backend",
        backend,
        "--regex",
        regex,
        "--reducer",
        reducer,
        "-o",
        str(out_dir),
        "--parallelism",
        str(parallelism),
    ]

    proc = subprocess.run(args, capture_output=True)
    proc.check_returncode()
    output = proc.stdout.decode("utf-8")
    lines = output.splitlines()
    return {
        "time": float(lines[-2].split()[-1][:-1]),
        "calls": int(lines[-1].split()[1]),
        "size": os.path.getsize(Path(out_dir).joinpath("shader.wgsl")),
    }


def run_test_case(
    path: Path,
    parallelism=1,
    reducers=["creduce", "cvise", "perses", "picire"],
):
    with open(path.joinpath("config.json")) as f:
        config = json.loads(f.read())

    original_size = os.path.getsize(path.joinpath("shader.wgsl"))

    reducer_stats = {}

    for reducer in reducers:
        print(f"running {reducer}...")
        with TemporaryDirectory(dir="/home/hasan/dev/wgslsmith/tmp") as tmpdir:
            stats = run_reducer(
                path.joinpath("shader.wgsl"),
                path.joinpath("inputs.json"),
                config["compiler"],
                config["backend"],
                config["regex"],
                reducer,
                tmpdir,
                parallelism,
            )

            if reducer == "picire":
                time = stats["time"]
                calls = stats["calls"]
                size = stats["size"]
                reduction_pc = (original_size - size) / original_size * 100
                print(
                    f"{reducer}: {time}s, {calls} calls, {size}/{original_size}, {reduction_pc}%"
                )
                print(f"running {reducer}2...")
                with TemporaryDirectory(dir="/home/hasan/dev/wgslsmith/tmp") as tmpdir1:
                    next_stats = run_reducer(
                        Path(tmpdir).joinpath("shader.wgsl"),
                        path.joinpath("inputs.json"),
                        config["compiler"],
                        config["backend"],
                        config["regex"],
                        reducer,
                        tmpdir1,
                        parallelism,
                    )

                    stats["time"] += next_stats["time"]
                    stats["calls"] += next_stats["calls"]
                    stats["size"] = next_stats["size"]

                    time = stats["time"]
                    calls = stats["calls"]
                    size = stats["size"]
                    reduction_pc = (original_size - size) / original_size * 100
                    print(
                        f"{reducer}: {time}s, {calls} calls, {size}/{original_size}, {reduction_pc}%"
                    )
                    print(f"running {reducer}3...")
                    with TemporaryDirectory(
                        dir="/home/hasan/dev/wgslsmith/tmp"
                    ) as tmpdir2:
                        next_stats = run_reducer(
                            Path(tmpdir1).joinpath("shader.wgsl"),
                            path.joinpath("inputs.json"),
                            config["compiler"],
                            config["backend"],
                            config["regex"],
                            reducer,
                            tmpdir2,
                            parallelism,
                        )

                        stats["time"] += next_stats["time"]
                        stats["calls"] += next_stats["calls"]
                        stats["size"] = next_stats["size"]

            time = stats["time"]
            calls = stats["calls"]
            size = stats["size"]
            reduction_pc = (original_size - size) / original_size * 100
            print(
                f"{reducer}: {time}s, {calls} calls, {size}/{original_size}, {reduction_pc}%"
            )

            reducer_stats[reducer] = stats

    return original_size, reducer_stats


if __name__ == "__main__":
    args = parse_args()
    path = Path(args.path)
    run_test_case(path)

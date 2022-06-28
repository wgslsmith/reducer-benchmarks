# reducer-benchmarks

This repo contains a collection of shaders that Tint or Naga (mostly Naga) compile to invalid HLSL/MSL, as well as scripts for comparing the performance of several reduction tools using [`wgslsmith`](https://github.com/wgslsmith/wgslsmith).

The test cases in this repo should be reproducible with wgslsmith/wgslsmith@f8917cad59365befc7adea829460423796c41b56.

## Installing reducers

For Perses, use https://github.com/wgslsmith/perses. Make sure to set the following in `$WGSLSMITH_DIR/wgslsmith.toml`:

```toml
[reducer.perses]
jar = "/path/to/perses_deploy.jar"
```

The others can be installed on Ubuntu with:

```sh
$ sudo apt install creduce cvise
$ pip install picire
```

## Running benchmarks

This will reduce each test case using the reducers, and write the results to `stats_st.json` (single-threaded) and `stats_mt_8.json` (multi-threaded) in each test case directory.

```sh
$ ./run_all.py
```

Then run the following to compute aggregate stats for each reducer:

```sh
$ ./collect_stats.py > stats.json
```

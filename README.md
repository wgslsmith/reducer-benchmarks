# reducer-benchmarks

This repo contains a collection of shaders that Tint or Naga (mostly Naga) compile to invalid HLSL/MSL, as well as scripts for comparing the performance of several reduction tools using [wgslsmith](https://github.com/wgslsmith/wgslsmith).

The test cases in this repo are reproducible with naga@0b60f410ab7bd0ca0d67d024c8b5da84b55fbf18 and dawn@2b4df7889186d2e98e437a2d1bb3e083b4722edb.

## Setup

Run the following commands (in the wgslsmith repo) to checkout the required commits of tint and naga and then rebuild wgslsmith.

```sh
# Checkout required wgslsmith commit
$ git checkout 4dbea9e77f6f1dc7574ec7b6f9154c9fe83ff39b
# Checkout required tint and naga commits
$ cd external/naga
$ git checkout 0b60f410ab7bd0ca0d67d024c8b5da84b55fbf18
$ cd ../../external/dawn
$ git checkout 2b4df7889186d2e98e437a2d1bb3e083b4722edb
$ cd ../..
# Rebuild wgslsmith
$ ./build.py wgslsmith
```

Also, follow the instructions [here](https://wgslsmith.github.io/validator/index.html) to setup the validation server.

### Installing reducers

For Perses, use https://github.com/wgslsmith/perses. Make sure to set the following in your wgslsmith config file:

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

# P6's POSIX.2: p6huggingface

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Hooks](#hooks)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Hooks

- `deps` -> `p6df::modules::p6huggingface::deps()`
- `init` -> `p6df::modules::p6huggingface::init(_module, dir)`

### Functions

#### p6huggingface

##### p6huggingface/init.zsh

- `p6_hf_file_upload(path_or_fileobj, path_in_repo, repo_id)`
  - Args:
    - path_or_fileobj
    - path_in_repo
    - repo_id
- `p6_hf_hub_download(repo_id, filename, revision, cache_dir)`
  - Args:
    - repo_id
    - filename
    - revision
    - cache_dir
- `p6_hf_repo_create(repo_id)`
  - Args:
    - repo_id
- `p6df::modules::p6huggingface::deps()`
- `p6df::modules::p6huggingface::init(_module, dir)`
  - Args:
    - _module
    - dir

## Hierarchy

```text
.
├── init.zsh
├── lib
└── README.md

2 directories, 2 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>

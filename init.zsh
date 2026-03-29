# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::p6huggingface::deps()
#
#>
######################################################################
p6df::modules::p6huggingface::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
#<
#
# Function: p6df::modules::p6huggingface::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::p6huggingface::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  p6_return_void
}

######################################################################
#<
#
# Function: p6_hf_hub_download(repo_id, filename, revision, cache_dir)
#
#  Args:
#	repo_id -
#	filename -
#	revision -
#	cache_dir -
#
#>
######################################################################
p6_hf_hub_download() {
  local repo_id="$1"
  local filename="$2"
  local revision="$3"
  local cache_dir="$4"

  if p6_string_blank "$revision" && p6_string_blank "$cache_dir"; then
    python -c "from huggingface_hub import hf_hub_download; hf_hub_download(repo_id=\"$repo_id\", filename=\"$filename\")"
  elif p6_string_blank "$cache_dir"; then
    python -c "from huggingface_hub import hf_hub_download; hf_hub_download(repo_id=\"$repo_id\", filename=\"$filename\", revision=\"$revision\")"
  else
    python -c "from huggingface_hub import hf_hub_download; hf_hub_download(repo_id=\"$repo_id\", filename=\"$filename\", revision=\"$revision\", cache_dir=\"$cache_dir\")"
  fi

  p6_return_void
}

######################################################################
#<
#
# Function: p6_hf_repo_create(repo_id)
#
#  Args:
#	repo_id -
#
#>
######################################################################
p6_hf_repo_create() {
  local repo_id="$1"

  python -c "from huggingface_hub import create_repo; create_repo(repo_id=\"$repo_id\")"

  p6_return_void
}

######################################################################
#<
#
# Function: p6_hf_file_upload(path_or_fileobj, path_in_repo, repo_id)
#
#  Args:
#	path_or_fileobj -
#	path_in_repo -
#	repo_id -
#
#>
######################################################################
p6_hf_file_upload() {
  local path_or_fileobj="$1"
  local path_in_repo="$2"
  local repo_id="$3"

  python -c "from huggingface_hub import upload_file; upload_file(path_or_fileobj=\"$path_or_fileobj\", path_in_repo=\"$path_in_repo\", repo_id=\"$repo_id\")"

  p6_return_void
}

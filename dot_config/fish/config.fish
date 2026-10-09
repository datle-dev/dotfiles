set -gx export EDITOR nvim
set -gx export NVIM_APPNAME dlevim

if status is-interactive
    set -g fish_prompt_pwd_dir_length 3
end

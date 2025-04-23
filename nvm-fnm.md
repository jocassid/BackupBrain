[README.md](README.md)

# nvm / fnm

Node Version Manager / Fast Node Manager.  Fast Node Manager is a Windows app 
for managing node versions.

| Action               | nvm                                                                                    | fnm                             |
|----------------------|----------------------------------------------------------------------------------------|---------------------------------|
| Install manager app  | `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh \| bash` [2] | `winget install Schniz.fnm` [1] |
| Install node version | `nvm install 20`                                                                       | `fnm install 20` [3]            |
| Use node version     | `nvm use 20`                                                                           | `fnm use 20                     |


* [1] [Instructions for setting up shell](https://github.com/Schniz/fnm?tab=readme-ov-file#shell-setup) 
* [2] Running `\. "$HOME/.nvm/nvm.sh"` to set up environment w/out having to restart shell
* [3] `fnm` installs node versions under `"$env:HOMEDRIVE$env:HOMEPATH\AppData\Roaming\fnm\node-versions"`


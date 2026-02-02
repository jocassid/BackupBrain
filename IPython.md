[README.md](README.md)

# IPython

**Documentation:** https://ipython.readthedocs.io/en/stable/index.html 

## "Magic" Commands

| Command       | Description                                                                       |
|---------------|-----------------------------------------------------------------------------------|
| `%autoreload` | Reloads modules.                                                                  |
| `%load_ext`   | Loads extention         -                                                         |
| `%pdb`        | Enables Debugging using `pdb` when an exception is raised you'll get a pdb prompt |

### %autoreload

Run `%load_ext autoreload` to make `%autoreload` available.  
See https://ipython.readthedocs.io/en/stable/config/extensions/autoreload.html for details.

This table is from the autoreload documentation

| Command         | Description                                                                                               |
|-----------------|-----------------------------------------------------------------------------------------------------------|
| `%autoreload`   | Reload all modules (except those excluded by %aimport) automatically now.                                 |
| `%autoreload 0` | Disable automatic reloading.                                                                              |
| `%autoreload 1` | Reload all modules imported with %aimport every time before executing the Python code typed.              |
| `%autoreload 2` | Reload all modules (except those excluded by %aimport) every time before executing the Python code typed. |
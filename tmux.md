[README.md](README.md)

# tmux

This is mostly information from https://tmux.info/docs/commands written in a 
more compact format.  I also list commands based on how often I use them

## Session Management

| Command                 | Description                  |
|-------------------------|------------------------------|
| `tmux new -s [name]`    | Create new named session     |
| `tmux ls`               | List all active sessions     |
| `tmux attach -t [name]` | Attach to named session      |
| `<Ctrl+b> d`            | Detach from current session  |
| `<Ctrl+b> s`            | Interactive session selector |
| `<Ctrl+b> $`            | Rename current session       |

## Window Commands

| Command        | Description                 |
|----------------|-----------------------------|
| `<Ctrl+b> c`   | Create new window           |
| `<Ctrl+b> w`   | Interactive window selector |
| `<Ctrl+b> n`   | Next window                 |
| `<Ctrl+b> p`   | Previous window             |
| `<Ctrl+b> l`   | Toggle last window          |
Ctrl+b [0-9]

Switch to window by number
Ctrl+b ,

Rename window
Ctrl+b &

Kill window (with confirmation)

## Pane Management

| Command                 | Description                  |
|-------------------------|------------------------------|
Ctrl+b %

Split pane horizontally (left/right)
Ctrl+b "

Split pane vertically (top/bottom)
Ctrl+b ←↑→↓

Navigate between panes
Ctrl+b o

Cycle through panes
Ctrl+b ;

Jump to last active pane
Ctrl+b q

Show pane numbers (type to jump)
Ctrl+b z

Zoom pane (toggle fullscreen)
Ctrl+b Space

Cycle through layouts
Ctrl+b Ctrl+←→↑↓

Resize pane by 1 cell
Ctrl+b x

Kill current pane

## General Commands

| Command                 | Description                  |
|-------------------------|------------------------------|
Ctrl+b ?

List all key bindings
Ctrl+b :

Enter command mode
Ctrl+b t

Show clock
Ctrl+b ~

Show message history


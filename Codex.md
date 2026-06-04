[README.md](README.md)

# Codex

## 30 Minutes o' AI

I was watching https://www.youtube.com/watch?v=px7XlbYgk7I and left at the 28:30 mark

## Slash commands

Looks like `/approvals` and `/model` will get config in GUI, but I'm not certain if it will let you set config 

| Command      | Works in GUI | Description                                     |
|--------------|--------------|-------------------------------------------------|
| `/approvals` |              | Choose what Codex can do w/out approval         |
| `/goal`      |              |                                                 |
| `/init`      |              | create AGENTS.md file w/ instructions for codex |
| `/model`     |              | Choose what model and reasoning effort to use   |
| `/review`    |              |                                                 |
| `/status`    | Yes          | Show current session configuration              |

## AGENTS.md

* https://agents.md - Information on Agents.md
* AGENTS.md is always loaded into context.  It is recommended to create separate .md files for 
specific workflows/tasks.  Point your AGENTS.md file at these by including a section such as:

```markdown
## Task-Specific Documentation

Task-specific routines and documentation are contained in ./agents.docs/

./agent-docs/frontent - use for frontend tasks
```

## Config.toml

* `~/.codex/config.toml`


## Additional Info

* https://agents.md - Information on Agents.md
* https://developers.openai.com/cookbook/articles/codex_exec_plans
* https://github.com/openai/codex/blob/main/docs/config.md#config-reference
* https://developers.openai.com/codex/prompting/
* https://youtu.be/474wZZHoWN4?si=sjbWflTMjk0jpB5O 95% of Codex in 30 minutes 
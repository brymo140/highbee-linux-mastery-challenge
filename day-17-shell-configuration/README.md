# Day 17 : Persisting Configuration

## Phase 4 - ENVIRONMENT, VIM & TEXT PROCESSING | Day 17 of 30

## Commands covered today
See commands.md for all 10 commands with syntax and my own explanation of what each one does and when I would reach for it.

## What I practiced
Yesterday I created a temporary environment variable, one that vanished the moment I closed the terminal. Today fixed exactly that problem. The focus was persisting configuration: .bashrc, source, alias, unalias, type, which, and whereis, essentially how to make your setup actually stick around.

## What surprised me
What surprised me most today is how much thought went into solving a very human problem. Nobody remembers every single command they use regularly, and it feels like whoever designed this part of Linux understood that completely. The alias command lets you take any long, awkward command and give it a short name you'll actually remember, then bake it permanently into your shell so it's there every time you open a terminal. Small feature, but genuinely thoughtful. I added my own alias and a persistent variable to .bashrc today, reloaded it instantly with source, and confirmed both survived a full terminal restart.

## Evidence

Screenshot or terminal transcript of the drill in evidence/.

## Related

Previous day: [day-16-environment-variables](https://github.com/brymo140/highbee-linux-mastery-challenge/tree/main/day-16-environment-variables)

Next day: [day-18-](..)

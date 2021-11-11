# Pimp My Terminal

> "Why does my terminal look like a Fallout 3 console?"
> 
> "I don't want to do a finger workout every time I want to type something"
> 
> "But mom I want a fancy terminal like all the cool kids on the block!"


Well if you don't mind wacky and slightly opinionated writing, here are some instructions + ready-made settings for a more pleasant / productive terminal experience. This is the workflow I built over the past years of doing scientific computing and may save you some time and googling. I do hope it will :).


![Pimped terminal!](https://raw.github.com/anicusan/PimpMyTerminal/master/images/PimpedTerminal.png?raw=true)
Multiplexing! Ligatures! Coloured output! Buzzwords! Elevator pitch!




## Hail Platform Portability: Alacritty Terminal

Do you work on Windows, macOS, Linux, remote servers, or all of the above? It would be nice to have the same consistent work environment and not be tied to ~~Microsoft~~ platform-specific programs; e.g. iTerm2 is a _lovely_ terminal, but I can't have it on my University's supercomputer :(.

Turns out portability ain't that easy - and it's made no easier by languages like C and C++ that have a gazillion slightly different [interpretations](https://devtut.github.io/cpp/implementation-defined-behavior.html#size-of-integral-types) of the same code. Modern alternatives make a big deal out of consistency across platforms - or at least they should do. Anyways, digression aside, I prefer [Alacritty](https://github.com/alacritty/alacritty) as a properly portable terminal, with very consistent behaviour on Windows, macOS and most flavours of Linux; it also helps that it's the fastest terminal in [benchmarks](https://jwilm.io/blog/alacritty-lands-scrollback/#benchmarks), with GPU acceleration and all.

Alacritty is configured via a text file in your home folder named ".alacritty.yml"; well-commented and self-explanatory, the default script is very hackable. My settings are in the `.alacritty.yml` file in this repository - just copy it into your home folder, or `~`:

```
$> git clone https://github.com/anicusan/PimpMyTerminal.git
$> cd PimpMyTerminal
$PimpMyTerminal> cp .alacritty.yml ~
```




### Bonus: Font with Ligatures

In [FiraCode's](https://github.com/tonsky/FiraCode) words, your eyes spend a non-zero amount of energy to scan, parse and join multiple characters like "!=" or "=>" into a single logical one, i.e. ≠ and ⇒. We can use a font with _ligatures_ for rendering regular ASCII symbols as their logical representations; I really, really like FiraCode:

![FiraCode ligatures](https://raw.github.com/anicusan/PimpMyTerminal/master/images/FiraCodeExample.png?raw=true)
Example of FiraCode ligatures, taken from its [repository](https://github.com/tonsky/FiraCode).

Install it on your system using the instructions given in its repository - it depends on your system (portability, eh?).




## Stop `bash`-ing shells, use `zsh`

All commands you run in a terminal are executed by a _shell_, which figures out which program to run when you type e.g. `ls -la`; it is essentially your hosting programming environment. Perhaps you've heard of Windows "cmd", or "PowerShell", or "bash", or "zsh". Linux shells are generally much more powerful and customisable than Windows ones - and a lot friendlier for compiling and running code without a clunky IDE (_this is also where flame wars may start: Linux is technically just the kernel, or interface between software and hardware; the "shells" I refer to here are technically the ones abiding to the [POSIX](https://pubs.opengroup.org/onlinepubs/9699919799.2018edition/) standard; such pedantism is ~~bloody~~ technically useless_).

Most Linux-like systems nowadays use the "Bourne-again Shell", or `bash`, which is pretty nice, but also pretty '80s. I want excellent auto-completion, plugins, and anything that makes me do more while typing less. Now, the further you stray from the standard `bash`, the more incompatible your shell scripts will be to other systems you may end up using; [`fish`](https://github.com/fish-shell/fish-shell) is a friendly and relatively popular shell, and also a very different experience to standard Linux shells (do look it up, you might enjoy it!); [`nushell`](https://github.com/nushell/nushell) is even weirder, but much more modern. Choices, trade-offs, choices.

At the moment, I prefer `zsh`, mainly for its huge community (plugins!) and balance between consistency across Linux systems and hackability. Here is a nice guide for [installing `zsh`](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH).




### Pimping `zsh`

Want a fancy shell with least effort? Yeah, me too. Get the people at [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh) a beer. It's fantastic.
Run this and be amazed:

```
$> sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Oh-My-Zsh is a community-driven set of packages and scripts for managing `zsh`, including the most helpful plugins out of the box.




### Short Intro to `zsh` Configuration

Every time you launch a new `zsh` shell (e.g. starting up a terminal, or a new tab therein), a startup script is first executed; for `zsh`, that is the `.zshrc` file in your home directory. If you open it, you'll see multiple Oh-My-Zsh settings you can activate or edit - for example, I prefer `ZSH_THEME="frisk"`. If you change settings, you'll need to restart your shell to see the effects; simply run `exec zsh`.




## Acknowledgments

Thanks to Jackyboo @jacksykes17 for the idea of "Pimp My Terminal".
And a massive thank you to all the developers of Alacritty, FiraCode, ZSH, Oh-My-ZSH, tmux, Vim, Ultimate Vim, Awesome Vim and all the angels taking the time to write tutorials and answers on StackOverflow - Valhalla has a special place for you.




## Licensing

This repository is licensed under the "do-whatever-the-heck-you-want-I-don't-care" license, or Creative Commons Zero v1.0 Universal. Yeah, really, you don't have to give me any credit or anything; all I hope is that this repo will save you from the 4+ years of Googling I did to get to this terminal workflow.

Or you can hit me up for a beer if you're in Birmingham, UK :D
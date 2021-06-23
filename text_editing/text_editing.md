# Piping:
stdin, 1 stdout, 2 stderr
| Command               | Function      |
| ---                   | ---           |
| pipe1 \| pipe2         | 
| pipe > filename       | Write stdout of pipe to file 'filename'. |
| pipe >> filename      | Append stdout of pipe to file 'filename' |
| pipe 2> filename      | Write only stderr to file. |
| pipe 2>> filename     | Append only stderr to file. |
| pipe > filename 2>&1  | Write stdout and stderr to same file. |
| pipe > filename1 2> filename2 | Write stdout to file 'filename1' and stderr to file 'filename2' |
| pipe < filename       | Redirects content of file 'filename' to stdin of pipe. |
| ---                   | --- |

** Notes: **  
- In general, all '>' commands will override files if they exist and create files if they do not. Be careful to not accidentally delete files this way.
- The redirect command '... < filename' is similar to 'cat filename | ...', but the 'cat'-command will spawn an additional process (see [here](https://unix.stackexchange.com/questions/466463/cat-and-pipe-vs-redirection)).

### Sources \& Further Reading:
- [linux.com tutorial on pipes and filters](https://www.linux.com/news/pipes-and-filters/)



# Commonly used tools:

Almost all information you need to use these tools can be found by using ```man tool-name```.

| Tool  | Function |
| ---   | --- |
| head  | Return first rows of text |
| tail  | Return last rows of text |
| sort  | Sort lines of text |
| less  | Display text |
| wc    | Count words, lines, characters, etc. |
| paste | |
| join  | |
| split | |
| csplit| |
| fold  | |
| diff  | |
| cat   | Output file on stdout | 
| grep  | Search text for pattern |
| tr    | Delete or replace single characters |
| cut   | Remove sections from lines of text |
| sed   | Stream editor to manipulate text |
| awk   | Complex pattern scanning and processing programming language |

### Sources \& Further Reading:
- linuxuser magazine (german), 06.2015
# Regular expressions:
"()^$*+-[]"

https://www.ibm.com/docs/en/watson-explorer/11.0.2?topic=queries-posix-regular-expression-syntax-examples
https://www.petefreitag.com/cheatsheets/regex/character-classes/

# grep

# sed
https://www.howtogeek.com/666395/how-to-use-the-sed-command-on-linux/
# awk

[YouTube-Video on awk](https://www.youtube.com/watch?v=9YOZmI-zWok)



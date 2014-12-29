## ICEcoder web editor

This is a docker image of ICEcoder web editor on Ubuntu 14.04 LTS with Apache2

Very flexible multlaguage syntax,very good as root container for web-project containers

The editor can be accessed as http://<hostip>:<port>/icecoder/

You can access /var/www/html (the root of the webserver)  and everything below, this can be configured inside the editor. 

### Editor features

For full information and manual, please visit the website https://icecoder.net/

#### Basic features

* Context aware code highlighting
* Desktop like file manager
* Document tabs indicate current doc & changes made
* Code folding
* Browser based, can run online or offline

#### Language Support

* HTML, CSS, LESS, JavaScript, CoffeeScript, PHP, Ruby, Python & many more!
* Easy to support over 60 other languages

#### Useful Feedback

* Found match & current position counter
* Indicates content type cursor is on
* Displays nest position of text cursor, hover to select, click to set cursor
* Nest structure OK/broken indicator
* Colour preview block on CSS colours, ie red, #f00 or RGBA(255,0,0,0.5)
* Live bug reporting system

#### Time Savers

* Live editing
* Multiple selections
* Smart tab key system (selected lines are auto-indented)
* Open last files on load
* Code Assist system
* Adds end tags as you type and in a context aware way
* Diff pane with insert, changed and removed lines highlighted
* Autocloses brackets and quotes as you type
* ESC = Comment/Uncomment line, incl partial lines
* HTML & JavaScript code hinting
* Tag wrappers
* File uploader, plus supports multiple files
* Jump to definition shortcut

#### Secure

* Account login to help keep online files secure
* Multi domain config settings
* Restrict files, ban files and restrict by IP
* Multi user, dev and demo modes

#### Customisable

* Settings to change behaviour, functionality & style
* Control multiple users and registration
* Plugin manager
* Template based config files
* Add your own custom processes

#### Groundbreaking Features

* Find & replace builder to apply to current doc, open docs, files & filenames
* Highlight word and press CTRL+I to Google search that
* DOM element highlighting with the Pestcide plugin
* Can rename open files (whoaah!)
* CTRL+Enter open current webpage in new tab
* MySQL Database management via Adminer plugin
* Sass and LESS compiling on save plugins
* Github integration to clone, pull, commit & sync repos
* Linux terminal plugin
* Image viewer with hex & RGB eyedropper
* Alphanumeric tab sorting
* Farbtastic color picker integrated
* Open remote file content

### Running a docker image

To start the image listening on external port 8080 execute

	docker run -d -p 8080:80 nimmis/icecoder

please remeber to use the `-d` flag to make it run in the background, to access a running container, use

	docker exec -t <container id> /bin/bash


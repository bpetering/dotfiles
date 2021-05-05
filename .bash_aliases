alias kp2='mono ~/apps/keepass247/KeePass.exe ~/Documents/list.kdbx >/dev/null 2>&1 &'

alias python='python3'
alias p3='python3'

# A function to find words given specific consonant patterns.
# Used for creating major system entries
function findwords() {
    WORDSFILE="/usr/share/dict/words"
    vowels='[aeiouy]'

    if (( $# == 0 )); then
        echo "Usage: findwords <letter1> [<letter2> <letter3> <letter4>]"
        return
    elif (( $# == 1 )); then
       pattern="^$1$vowels*|^$vowels*$1" 
    elif (( $# == 2 )); then
       pattern="^$1$vowels*$2$vowels*"
    elif (( $# == 3 )); then
       pattern="^$1$vowels*$2$vowels*$3$vowels*"
    elif (( $# == 4 )); then
       pattern="^$1$vowels*$2$vowels*$3$vowels*$4$vowels*"
    fi

    #echo "\$# = $#"
    #echo "args = $@"
    #echo "pattern = $pattern"

    grep -E "$pattern" /usr/share/dict/words
}

alias pdfbox='java -jar ~/apps/trunk/app/target/pdfbox-app-3.0.0-SNAPSHOT.jar'

function findbook() { 
    grep -i $1 ~/books/BOOKS.ALL || find ~/books -type f -name "*$1*";
}
function addbooks() {
    ~/books/addbooks.sh $@
}
alias a='addbooks'

alias z='java -jar ~/apps/Zettelkasten-3.3.0.jar >/dev/null 2>&1 &'

alias gits='git status'
alias gitb='git branch'

alias zotero='~/apps/Zotero_linux-x86_64/zotero >/dev/null 2>&1 &'

alias startflux='xflux -l -34.932 -g 138.601 -r 1'

function postvim {
    echo "Remembers tags and meta description!"
    filename=$1
    if [ -z $filename ]; then
        echo "filename (with or without .html.jinja extension): "
        read filename
    fi
    filename=$(echo $filename | sed -e 's/.jinja//' | sed -e 's/.html//')
    dirpath=~/podium/posts/$(date +%Y)/$(date +%m)/$(date +%d)
    filepath=$dirpath/$filename.html.jinja
    mkdir -p $dirpath && echo -e "{% extends 'post.jinja' %}\n\n{% block content %}\n{{ super() }}\n\n{% endblock content %}\n\n" > $filepath
    echo 'Title: ' > $filepath.meta
    echo "Tags: " >> $filepath.meta
    echo "Description: " >> $filepath.meta
    vim $filepath $filepath.meta
}

alias openit='knock -d 5 139.162.42.41 43246 54032 9539 32498'
alias wpopenit='knock -d 5 45.79.238.155 1723 25782 12312 43817'

alias pycharm='pycharm.sh >/dev/null 2>&1 &'

alias dc='docker-compose'

alias ssh-add='ssh-add -t 3600'



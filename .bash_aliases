
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

alias z='java -jar ~/apps/Zettelkasten-3.3.0.jar >/dev/null 2>&1 &'

alias gits='git status'
alias gitb='git branch'

alias zotero='~/apps/Zotero_linux-x86_64/zotero >/dev/null 2>&1 &'

function postvim {
    filename=$1
    if [ -z $filename ]; then
        echo "filename (with or without .html.jinja extension): "
        read filename
    fi
    filename=$(echo $filename | sed -e 's/.jinja//' | sed -e 's/.html//')
    dirpath=~/soapbox/posts/$(date +%Y)/$(date +%m)/$(date +%d)
    filepath=$dirpath/$filename.html.jinja
    mkdir -p $dirpath && echo -e "{% extends 'templates/base.jinja' %}\n\n{% block content %}\n\n{% endblock content %}\n\n" > $filepath
    echo 'Title: ' > $filepath.meta
    vim $filepath $filepath.meta
}


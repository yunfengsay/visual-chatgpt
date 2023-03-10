function get_md5sum() {
    if [ "$(uname)" == "Darwin" ]; then
        md5 -q $1
    else
        md5sum $1 | cut -d' ' -f1
    fi
}
get_md5sum requirement.txt 


alias ls='lsd'
alias cat='bat'

PS1='\[\e[47;30m\]  \[\e[0m\]\[\e[37;44m\]\[\e[44;97m\] \W \[\e[0m\]\[\e[34m\]\[\e[0m\] '

printf "\033[5 q"


command_not_found_handle() {
    local comando="$1"
    local resultado

    resultado=$("$PREFIX/libexec/termux/command-not-found" "$comando" 2>&1)
   echo ''
    printf '\e[1;31m[*]\033[0m Comando no encontrado: %s\n' "$comando"

    printf '%s\n' "$resultado" |
        sed \
        -e 's/No command /No se encontró el comando /g' \
        -e 's/did you mean:/ Quizás quisiste escribir:/g' \
        -e 's/Install it by executing:/Puedes instalarlo ejecutando:/g' \
        -e 's/The program /El programa /g' \
        -e 's/ is not installed/ no está instalado/g' \
        -e 's/Command /Comando /' \
        -e 's/ in package / en el paquete /' \
        -e 's/found,/,/'
    echo ''

    return 127
  }

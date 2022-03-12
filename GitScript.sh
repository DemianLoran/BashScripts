#!/bin/bash

#DEFINICION DE COLORES
greenColour="\e[0;32m\033[1m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turqoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"

#CAPTURA DE SALIDA FORZADA
trap ctrl_c INT
function ctrl_c(){
    echo -e "\n${redColour}[!]Saliendo...\n${endColour}"
    tput cnorm; exit 1
}

#PANEL DE AYUDA
function helpPanel(){
    echo -e "\n\t\t${redColour}[!]Uso: ./GitScript${endColour}"
    for i in $(seq 1 80); do echo -ne "${redColour}#"; done; echo -ne "${endColour}"

    #OPCIONES DE RESPOSITORIOS
    echo -e "\n\n\t\t${blueColour}Opciones para trabajar con el repositorio${endColour}"
    #Inicializando un repositorio en la ubicación actual: Git init
    echo -e "\n\t${purpleColour}[-i]${endColour}\t\t${yellowColour}Inicializa un repositorio en la ubicacion actual${endColour}"
    #Muestra los cambios realizados sobre los archivos del respositorio: Git show
    echo -e "\n\t${purpleColour}[-s]${endColour}\t\t${yellowColour}Muestra los cambios realizados en los archivos del respositorio${endColour}"
    #Git log árbol del directorio actual
    echo -e "\n\t${purpleColour}[-l]${endColour}\t\t${yellowColour}Git log árbol en directorio actual${endColour}"
    #git add nombre_del_archivo, agrega un archivo al repositorio
    echo -e "\n\t${purpleColour}[-a][..]${endColour}\t${yellowColour}Agrega un archivo al repositorio ${endColour}${grayColour}Nombre-del-archivo${endColour}"
    #git status, nos permite ver el estado de todos nuestros archivos y carpetas.
    #git rm --cached: Elimina los archivos de nuestro repositorio local y del área de staging, pero los mantiene en nuestro disco duro
    #git rm --force: Elimina los archivos de Git y del disco duro.
    #git checkout + ID del commit nos permite viajar en el tiempo. Podemos volver a cualquier versión anterior de un archivo específico o incluso del proyecto entero.
    #git reset. En este caso, no solo “volvemos en el tiempo”, sino que borramos los cambios que hicimos después de este commit.
    #Hay dos formas de usar git reset: con el argumento --hard, borrando toda la información que tengamos en el área de staging (y perdiendo todo para siempre). O, un poco más seguro, con el argumento --soft, que mantiene allí los archivos del área de staging para que podamos aplicar nuestros últimos cambios pero desde un commit anterior.

    #OPCIONES DE TAGS
    echo -e "\n\t\t${blueColour}Opciones para trabajar con Tag${endColour}"
    #Crea un nuevo tag y se lo asigna a un commit
    echo -e "\n\t${purpleColour}[-t][..][..]${endColour}\t${yellowColour}Crea nuevo tag con ${endColour}${grayColour}Nombre-del-tag Id-del-Commit${endColour}"
    #Borrar un tag en el repositorio local: git tag -d nombre-del-tag
    echo -e "\n\t${purpleColour}[-d][..]${endColour}\t${yellowColour}Borra un tag del repositorio local con ${endColour}${grayColour}Nombre-del-tag${endColour}"    
    #Listar los tags de nuestro repositorio local: git show-ref --tags.
    echo -e "\n\t${purpleColour}[-v]${endColour}\t\t${yellowColour}Lista los tags del repositorio local${endColour}"
    #Publicar un tag en el repositorio remoto: git push origin --tags.
    echo -e "\n\t${purpleColour}[-p]${endColour}\t\t${yellowColour}Publica los tags en el repositorio remoto ${endColour}" 
    #Borrar un tag del repositorio remoto: git tag -d nombre-del-tag y git push origin :refs/tags/nombre-del-tag.
    echo -e "\n\t${purpleColour}[-r][..]${endColour}\t${yellowColour}Borra un tag del repositorio remoto con ${endColour}${grayColour}Nombre-del-tag${endColour}"    
    #Acceso a Panel de ayuda
    #echo -e "\n\t${purpleColour}[-h]${endColour}\t\t${yellowColour}Help Panel ${endColour}"

    #Crear un nuevo tag y asignarlo a un commit: git tag -a nombre-del-tag id-del-commit.
    #Borrar un tag en el repositorio local: git tag -d nombre-del-tag.
    #Listar los tags de nuestro repositorio local: git tag o git show-ref --tags.
    #Publicar un tag en el repositorio remoto: git push origin --tags.
    #Borrar un tag del repositorio remoto: git tag -d nombre-del-tag y git push origin :refs/tags/nombre-del-tag.
    #git rebase reescribe la historia del repositorio, cambia la historia de donde comenzó la rama y solo debe ser usado de manera local.

    #FUNCION DE SALIDA CORRECTA
    exitt

    #git diff commitA commitB, muestra las diferencias entre el commitA y el commitB
    
    #git stash ..El stashed nos sirve para guardar cambios para después, Es una lista de estados que nos guarda algunos cambios que hicimos en Staging para poder cambiar de rama sin perder el trabajo que todavía no guardamos en un commit.
    #git clean --dry-run .. Para saber qué archivos vamos a borrar tecleamos
    #git clean -f .. Para borrar todos los archivos listados (que no son carpetas) tecleamos
    #git cherry-pick IDCommit .. Existe un mundo alternativo en el cual vamos avanzando en una rama pero necesitamos en master uno de esos avances de la rama, para eso utilizamos el comando. 
    #git commit --amend ..  lo que hará es que los cambios que hicimos nos los agregará al commit anterior.
    #git reset --soft HashDelHEAD te mantiene lo que tengas en staging ahí.
    #git reset --hard HashDelHEAD resetea absolutamente todo incluyendo lo que tengas en staging.
    #Crear una rama en el repositorio local: git branch nombre-de-la-rama o git checkout -b nombre-de-la-rama.
    #Publicar una rama local al repositorio remoto: git push origin nombre-de-la-rama.
    #Git clone +url-publica ->para descargar un duplicado del repositorio.
    #git merge +rama, merge a la rama indicada desde la que  estas ahora.
   
    
    #git grep color -->use la palabra color
    #git grep la --> donde use la palabra la
    #git grep -n color–> en que lineas use la palabra color
    #git grep -n platzi --> en que lineas use la palabra platzi  
    #git grep -c la --> cuantas veces use la palabra la
    #git grep -c paltzi --> cuantas veces use la palabra platzi
    #git grep -c “<p>”–> cuantas veces use la etiqueta <p>
    #git log -S “cabecera” --> cuantas veces use la palabra cabecera en todos los commits.
    #grep–> para los archivos
    #log --> para los commits.
    #git shortlog -sn = muestra cuantos commit han hecho cada miembros del equipo.
    #git shortlog -sn --all = muestra cuantos commit han hecho cada miembros del equipo hasta los que han sido eliminado
    #git shortlog -sn --all --no-merge = muestra cuantos commit han hecho cada miembros quitando los eliminados sin los merges
    #git blame ARCHIVO = muestra quien hizo cada cosa linea por linea
    #git COMANDO --help = muestra como funciona el comando.
    #git blame ARCHIVO -Llinea_inicial,linea_final= muestra quien hizo cada cosa linea por linea indicándole desde que linea ver ejemplo -L35,50
    #git branch -r **= se muestran todas las ramas remotas
    #git branch -a = se muestran todas las ramas tanto locales como remotas
}

function exitt(){
    tput cnorm; exit 0
}

function git_Init(){
    clear
    git init
    exitt
}

function git_Show(){
    clear
    git show
    exitt
}

function git_Log(){
    clear
    git log --oneline --decorate --graph --all
    exitt
}

function git_Add(){
    clear
    git add $argumento1
    exitt
}

function nuevo_Tag(){
    clear
    git tag -a $argumento1 $argumento2
    exitt
}

function borra_Tag(){
    clear
    git tag -d $argumento1
    exitt
}

function lista_Tag(){
    clear
    git show-ref --tags
    exitt
}

function push_Tag(){
    clear
    git push origin --tags
    exitt
}

function borra_Tag_Remoto(){
    clear
    git push origin :refs/tags/$argumento1
    exitt
}

#PROCESO PRINCIPAL
declare -i parameter_counter=0; while getopts 'islatdvpr' opt; do
    case $opt in
        i) git_Init;;
        s) git_Show;;
        l) git_Log;;
        a) argumento1=$2; git_Add $argumento1;;
        t) argumento1=$2; argumento2=$3; nuevo_Tag $argumento1 $argumento2;;
        d) argumento1=$2; borra_Tag $argumento1;;
        v) lista_Tag;;
        p) push_Tag;;
        r) argumento1=$2; borra_Tag_Remoto $argumento1;;
        *) helpPanel;;
    esac
done

if [ $parameter_counter -eq 0 ]; then
    helpPanel
fi

tput cnorm;

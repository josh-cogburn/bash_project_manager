
FILE_NAME='.bash_project_manager.sh';
BASE_DIR=~/projects/bash_project_manager;
BASH_PATH=~/.bashrc;

INIT=".init.sh";

function init_bash_project_manager(){
    echo "source $BASE_DIR/$FILE_NAME;" >> $BASH_PATH;
}

function hello_world(){
    echo "Hello, $USER";
}

function reload_project_manager(){
    source $BASE_DIR/$FILE_NAME;
}

function init(){
    FILE=$PWD/$INIT;
    if [ -f "$FILE" ]; 
        then
            echo "File exists."
            echo "File:"
            echo "$FILE"
            source $FILE
            echo "Project environment is ready."
        else
            echo "$FILE does not exist."
    fi
        
}



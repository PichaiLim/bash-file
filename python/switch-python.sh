PS3='Please enter your choice: '
options=("Using python version 2" "Using python version 3" "Check using python version" "Check path python" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Using python version 2")
            echo "you chose choice 1"
            echo "Switch python version 2"
            alias python=python2
            python --version
            break
            ;;
        "Using python version 3")
            echo "you chose choice 2 \r"
            echo "Switch python version 3"
            alias python=python3
            python --version
            break
            ;;
        "Check using python version")
            echo "you chose choice $REPLY which is $opt"
            python --version
            ;;
        "Check path python")
            echo "you chose choice $REPLY which is $opt"
            which python
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY \n";;
    esac
done
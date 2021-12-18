#!/bin/bash
_docker_config()
{
    echo "Welcome to docker"
}

_pushover_config()
{
    echo "Welcome to pushover"
}

# This declares and associative array with the keys being the menu items
# and the values being the functions to be executed.
# This will have to include all possible programs
declare -A functab=(["Docker"]=_docker_config
                    ["Pushover"]=_pushover_config)

title="Config manager"
prompt="Pick an option:"

# The options are hard-coded here, of course you will dynamically generate it
# I omitted that for testing purposes
declare -a options=("Docker" "IdontExist" "Pushover" "IdontexistEither")

echo "$title"
PS3="$prompt "

select opt in "${options[@]}" "Quit"
do

    if [[ $opt == "Quit" ]]; then
        echo "Goodbye!"
        break
    fi

    if [[ -z $opt ]]; then
        echo "Didn't understand \"$REPLY\" " >&2
        REPLY=
    else
        # Here we check that the option is in the associative array
        if [[ -z "${functab[$opt]}" ]]
        then
            echo "Invalid option. Try another one." >&2
        else
            # Here we execute the function
            eval ${functab[$opt]}   # See note below
        fi
    fi
done

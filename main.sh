#!/bin/bash

source "$(dirname "$0")/functions/functions_implementation.sh"

# ========================================
# CLI File Management & Automation Toolkit
# ========================================

clear


echo "========================="
echo "     File Manager Pro    "
echo "========================="

echo ""
echo "Welcome To File Management Toolkit!"
echo "Your files, your control ."
echo ""

echo "Initializing System... "
echo "System Is Ready ! "
echo ""


while true
do

    attempts=1
    login_status=0

    while [ "$attempts" -le 3 ]; do

        read -p "Enter Your Username: " username
        read -s -p "Enter Your Password: " password
        echo ""

        if [ -z "$username" ] || [ -z "$password" ]; then

            echo "Username & Password Is Required "
            attempts=$((attempts+1))

        else

            if [ "$username" = "admin" ] && [ "$password" = "1234" ]; then

                echo "Login Successfully !!"
                login_status=1
                break
            else

                echo "Username Or Password Is Incorrect..."
                attempts=$((attempts+1))
            fi
        fi

    done

    if [ "$attempts" -gt 3 ]; then

        echo "Failed Attempts... access denied!"
        break
    fi


    if [ "$login_status" -eq 1 ]; then

        echo "Welcome To File Manager! "
        echo ""

        while true
        do

            echo "1- Create New File"
            echo "2- Create New Folder"
            echo "3- List Files & Folders"
            echo "4- Search For a File"
            echo "5- Copy a File"
            echo "6- Move / Rename a File"
            echo "7- Delete a File"
            echo "8- Backup a Folder"
            echo "9- File Statistics"
            echo "0- Logout"
            echo "========================="

            trials=1

            while [ "$trials" -le 3 ]
            do

                read -p "Enter Your Choice: " choice

                if [ -z "$choice" ]; then

                    echo "Choice Cannot Be Empty!!"
                    trials=$((trials+1))

                else

                    case "$choice" in

                        1)
                            create_file
                            break
                            ;;
                        2)
                            create_folder
                            break
                            ;;
                        3)
                            list_files_and_folders
                            break
                            ;;
                        4)
                            search_file
                            break
                            ;;
                        5)
                            copy_file
                            break
                            ;;
                        6)
                            move_file
                            break
                            ;;
                        7)
                            delete_file
                            break
                            ;;
                        8)
                            backup_folder
                            break
                            ;;
                        9)
                            file_statistics
                            break
                            ;;
                        0)
                            echo "Logging out...goodbye!!"
                            break 2
                            ;;
                        *)
                            echo "Invalid Choice! Please try again."
                            trials=$((trials+1))
                            ;;
                    esac

                fi

            done

        done

    fi

done

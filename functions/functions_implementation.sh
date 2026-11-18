create_folder()
{
    read -p "Enter Folder Name: " folder_name

    if [ -z "$folder_name" ];then

	echo "Folder Name Cannot Be Empty!"

    elif [ -e "$folder_name" ];then

	echo "Folder Already Exists!!"

    else

	if mkdir "$folder_name" ;then

	    echo "Folder Created Successfully!"

	else
	    echo "Failed To create Folder!"

	fi
    fi

}

create_file()
{
    read -p "Enter File Name: " file_name

    if [ -z "$file_name" ];then

        echo "File Name Cannot Be Empty!"

    elif [ -e "$file_name" ];then

        echo "File Already Exists!!"

    else

        if touch "$file_name" ;then

	    echo "File Created Successfully!"

	else

	    echo "Failed To Create File!"
	fi
    fi
}


list_files_and_folders()
{
    if [ -z "$(ls -A)" ];then

	echo "Directory IS Empty!!"
    else
	ls -1A
    fi
}


search_file()
{
    read -p "Enter File Name: " file_name

    if [ -z "$file_name" ];then

	echo "File Name Cannot Be Empty!!"
    else

	result=$(find . -type f -iname "$file_name")

	if [ -n "$result" ] ;then

	    echo "File IS Found!"
	    echo "$result"
	else
	    echo "File IS Not Found!!"
	fi
    fi
}


copy_file()
{

    read -p "Enter Source File: " source_file
    read -p "Enter Destination: " destination

    if [ -z "$source_file" ] || [ -z "$destination" ];then

        echo "Source File & Destination Cannot Be Empty!!"

    elif [ -f "$source_file" ];then

            if cp -i "$source_file" "$destination" ;then

                echo "File Copied successfully!"
            else
                echo "Failed To Copy File!!"

            fi
    else
            echo "Source File Does Not Exist!!"
    fi
}


move_file()
{

    read -p "Enter Source File: " source_file
    read -p "Enter Destination: " destination

    if [ -z "$source_file" ] || [ -z "$destination" ];then

	echo "Source File & Destination Cannot Be Empty!!"

    elif [ -f "$source_file" ];then

	if mv -i "$source_file" "$destination" ;then

	    echo "File Moved / Renamed Successfully"
	else
	    echo "Failed To Move File"
	fi

    else
	echo "File Does Not Exist!!"

    fi
}


delete_file()
{
    read -p "Enter File Name: " file_name

    if [ -z "$file_name" ];then

	echo "File Name Cannot Be Empty!!"

    elif [ -f "$file_name" ];then

	read -p "Are You Sure You Want To Delete '$file_name'? (y/n): " confirm

	if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ];then

	    if rm "$file_name" ;then

		echo "File IS Deleted Successfully!"
	    else

		echo "Failed To Delete File!!"
	    fi

	else

	    echo "Delete Cancelled."
	fi

    else

	    echo "File Does Not Exist!!"
    fi

}


backup_folder()
{

    read -p "Enter Folder Name: " folder_name

    if [ -z "$folder_name" ];then

	echo "Folder Name Cannot Be Empty!!"

    elif [ -d "$folder_name" ];then

	mkdir -p Backups

	if cp -ri "$folder_name" Backups/ ;then

	    echo "Folder IS Backed Up Successfully!"
	else
	    echo "Failed To Backup Folder!!"
	fi

    else
	echo "Folder Does Not Exist!!"
    fi
}


file_statistics()
{
    read -p "Enter File Name: " file_name

     if [ -z "$file_name" ];then

        echo "File Name Cannot Be Empty!!"

    elif [ -f "$file_name" ];then

        echo "File Name: $file_name"
	echo "Lines: $(wc -l < "$file_name" )"
	echo "Words: $(wc -w < "$file_name" )"
	echo "Characters: $(wc -m < "$file_name" )"
	echo "Size: $(du -h "$file_name" | cut -f1)"

    else
        echo "File Does Not Exist!!"
    fi
}

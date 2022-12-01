#!/bin/bash
i="0"
while [ $i -lt 100 ]
do
gcc project_code.c -o project_code
./project_code
read opt1
if [ $opt1 == 1 ]
then

     echo "List all files and directories..."
     echo "Showing all file and directories..."
     sleep 3

     echo "Loading..."
     sleep 3

     echo "---------------Output---------------"
     ls
     echo " "

elif [ $opt1 == 2 ]
then
     echo "Create new file..."
     echo "Which type of file you want to create:"
     echo "1- .c"
     echo "2- .sh"
     echo "3- .txt"
     echo "Enter your choice:"
     read filechoice

           if [ $filechoice == 1 ]
           then
                echo "Enter file name without .c extension:"
                read filename
                touch $filename.c
                echo "---------------Output---------------"
                echo "File created successfully."
                echo " "

           elif [ $filechoice == 2 ]
           then
                echo "Enter file name without .sh extension:"
                read filename2
                touch $filename2.sh
                echo "---------------Output---------------"
                echo "File created successfully."
                echo " "

          elif [ $filechoice == 3 ]
          then
               echo "Enter file name without .txt extension:"
               read filename3
               touch $filename3.txt
               echo "---------------Output---------------"
               echo "File created successfully."
               echo " "
          else
               echo "Invalid input...try again!"
               echo " "
               fi

elif [ $opt1 == 3 ]
then
     echo "Delete exixting file..."
     echo "Enter the name of file you want to delete:"
     echo "Note: Please enter full name with extension."
     read delfile
     echo "---------------Output---------------"

     if [ -f "$delfile" ];
     then
          rm $delfile
          echo "Successfully deleted."
          echo " "
     else
          echo "File does not exist.... try again!"
          echo " "
          fi

elif [ $opt1 == 4 ]
then
     echo "---------------Output---------------"
     echo "Rename file..."
     echo "Enter old name of file with extension:"
     read old
     echo "Checking for file..."
     sleep 3

     if [ -f "$old" ];
     then
          echo "File existed."
          echo "Now Enter new name for file with extension:"
          read new
          mv $old $new
          echo "Successfully renamed."
          echo "Now your file exist with $new name"
     else
          echo "$old does not exist...try again with current filename."
          fi
          echo " "

elif [ $opt1 == 5 ]
then
     echo "Edit file contant..."
     echo "Enter file name with extension:"
     read edit
     echo "---------------Output---------------"
     echo "Checking for file..."
     sleep 3

     if [ -f "$edit" ];
     then
          echo "Opening file..."
          sleep 3
          nano $edit
          echo " "

    else
         echo "$edit File does not exist...try again."
         fi

elif [ $opt1 == 6 ]
then
     echo "Search file..."
     echo "Enter the file name with extension to search:"
     read f
     echo "---------------Outut---------------"

     if [ -f "$f" ];
     then
          echo "Searching for $f file"
          echo "File found."
          find /home -name $f
          echo " "

    else
         echo "File does not exist...try again."
         echo " "
         fi

elif [ $opt1 == 7 ]
then
     echo "Details of file..."
     echo "Enter file name with extension to see details:"
     read details
     echo "---------------Output---------------"
     echo "Checking for file..."
     sleep 4

     if [ -f "$details" ];
     then
          echo "Loading properties.."
          stat  $details

     else
          echo "$details File does not exist...try again."
          fi
          echo " "

elif [ $opt1 == 8 ]
then
     echo "View contant of file..."
     echo "Enter file name:"
     read readfile
     echo "---------------Output---------------"

     if [ -f "$readfile" ];
     then
          echo "Showing file content:"
          sleep 3

          cat $readfile

     else
          echo "$readfile does not exist."
          fi
          echo " "

elif [ $opt1 == 9 ]
then
     echo "Sort file content..."
     echo "Enter the file name with extension to sort:"
     read sortfile
     echo "---------------Output---------------"

     if [ -f "$sortfile" ];
     then
          echo "Sorting file content..."
          sleep 3

          sort $sortfile

     else
          echo "$sortfile File does not exist...try again."
          fi
          echo " "

elif [ $opt1 == 10 ]
then
     echo "---------------Output---------------"
     echo "List of all directories..."
     echo "Showing all directories..."
     echo "Loading..."
     sleep 3

     ls -d *\

     echo " "

elif [ $opt1 == 11 ]
then
     echo "List of files with particular extension..."
     echo "Which type of file list you want to see?"
     echo "1- .c"
     echo "2- .sh"
     echo "3- .txt"
     echo "Enter your choice:"
     read extopt
     echo "---------------Output---------------"

     if [ $extopt == 1 ]
     then
          echo "List of .c files shown bellow:"
          echo "Loading..."
          sleep 3

          ls *.c

     elif [ $extopt == 2 ]
     then
          echo "List of .sh files shown below:"
          echo "Loading..."
          sleep 3
          ls *.sh

     elif [ $extopt == 3 ]
     then
          echo "List of .txt file shown below:"
          echo "Loading..."
          sleep 3
          ls *.txt

    else
         echo "Invalid input...try again."
         fi
         echo " "

elif [ $opt1 == 12 ]
then
     echo "---------------Output---------------"
     echo "Total number of directories..."
     echo "Loading all directories..."
     sleep 3

     echo "Counting..."
     sleep 3

     echo "Number of directories are:"
     echo */ | wc -w
     echo " "

elif [ $opt1 == 13 ]
then
     echo "---------------Output---------------"
     echo "Total number of files in current directory..."
     echo "Loading all files..."
     sleep 3

     echo "Number of files are:"
     ls -l | grep -v 'total' | grep -v '^d' | wc -l
     echo " "

elif [ $opt1 == 14 ]
then
     echo "---------------Output---------------"
     echo "Sort files..."
     echo "Your request of sorting files is generated."
     echo "Sorting..."
     sleep 3

     ls | sort

     echo " "

elif [ $opt1 == 0 ]
then
     echo "That's all."
     echo "Successfuly exist."
     break

else
     echo "Invalid input...try again."
     fi

      i=$[$i+1]

done

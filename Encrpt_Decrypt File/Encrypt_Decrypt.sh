#!/bin/bash
echo "Welcome, I am ready to encrypt/decrypt a file/folder for you :)"
echo -e "Place me to the same folder, where a file to be encrypted/decrypted is present"
echo ""
# trap "echo An interrupt signal detected." 2

select operation in Encrypt Decrypt Quit; do
      if [[ $operation == "Encrypt" ]]; then
            read -p "Enter the Exact File Name with extension >> " file
            sudo gpg -c $file
            echo "I have encrypted the file sucessfully..."
            read -p "Should I remove the original file? (Y/N) >> " remove
            if [[ remove == "Y" || remove == "y" ]]; then
                  rm -rf $file
                  echo "Original file removed !!"
            fi
      elif [[ $operation == "Decrypt" ]]; then
            read -p "Enter the Exact File Name with extension >> " file
            read -p "Enter the output file name with extension >> " output
            sudo gpg -d $file >$output
      elif [[ $operation == "Quit" ]]; then
            echo "Bye-Bye"
            break
      else
            echo "Please enter a valid input. !!"
      fi
done

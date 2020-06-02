for FILE in $HOME/dotfiles/.*;
                do  
                if [ $FILE != ".git" ]; then
                                echo $FILE;
                                ln -s $FILE $HOME 
                fi
done

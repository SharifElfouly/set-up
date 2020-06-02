for FILE in $HOME/dotfiles/.*;
                do  
                if [ $FILE != ".git" ]; then
                                echo $FILE;
                                ln -s $HOME/dotfiles/$FILE $HOME 
                fi
done

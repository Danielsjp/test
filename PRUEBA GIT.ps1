git config --global user.name daniel.sanchez
git config --global user.email sjp.daniel@gmail.com
git config --global core.editor "code --wait"
git init
git status
git add .
git remote add origin https://github.com/Danielsjp/test.git
git branch -M main 
git push -u origin main
git add .
git commit -m "test"
git push
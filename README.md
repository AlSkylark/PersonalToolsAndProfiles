posh.omp.json should go wherever `~` points to.  
`.bashrc` and `.inputrc` are for Git Bash, and also should go there.

posh.omp.json is a template for oh my posh terminal, can be ran with: `eval "$(oh-my-posh init bash --config ~/posh.omp.json)"` in a .bashrc or similar config file, can be used in powershell too. 
When using it for the first time it might look like it's bugging with weird symbols, you need to install the fonts, my preference is `oh-my-posh font CascadiaCode`, then restart the Terminal and select the font for your default profile.

`rider` needs to go wherever `rider64.exe` is so that when you add it to the PATH env variable you can just invoke "rider" in the command line

The powershell profile is to be placed under `Documents\PowerShell` or wherever `$PROFILE` is, you might need to create the folder (or place the one in this repo).
" ###############################                                
" # MAIN VIM CONFIGURATION FILE #                                
" ###############################                                
                                                                 
" stops text from disapering when using console emulators like Co
" this usally happens when going to the end or start of the file 
" '32' seems to work quiet well                                  
set ttyscroll=32                                                 
                                                                 
" disable being compatible with vi                               
set nocompatible                                                 
                                                                 
" enable for faster terminal                                     
set ttyfast                                                      
                                                                 
" always show line numbers                                       
set nu                                                           
                                                                 
" enable syntax highlighting in case when editing src files      
syntax enable                                                    
                                                                 
" adjust formatting                                              
set smartindent                                                  
set tabstop=4                                                    
set shiftwidth=4                                                 
set expandtab                                                    
                                                                 
" define encoding                                                
set encoding=utf-8                                               
                                                                 
" set language to be always english                              
set helplang=EN                                                  
set langmenu=en_US                                               
let $LANG='en_US'                                                
                                                                 
" define threshold for text wrapping                             
set textwidth=80                                                 
                                                                 
" better searching                                               
set path+=**                                                     
                                                                 
" display all matching files when using 'find' command + tab     
set wildmenu                                                     
                                                                 
" disable error bells                                            
set noerrorbells                                                 
                                                                 
" automatically cd into the directory that the file is in        
set autochdir                                                    
                                                                 
" set font of GVIM                                               

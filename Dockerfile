FROM sharelatex/sharelatex:latest 
# using the official image as a base 

RUN set -x \
    && tlmgr init-usertree \ 
    # Select closest mirror automatically: http://tug.org/texlive/doc/install-tl.html

    && tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet/ \ 
    # Using latest TeX Live repository

    && tlmgr update --self --verify-repo=none \ 
    #update tlgmr 

    && tlmgr update texlive-scripts \ 
    # Solves "Cannot install ctex via tlmgr: "Unknown option: status-file" bug

    && (tlmgr install --verify-repo=none scheme-full || true) \ 
    # runs && tlmgr install scheme-ful  instllation

    && apt-get update \ 
    && apt-get install python3-pygments -y \ 
    # Install pygmentize for overleaf is a little tricky

    # To avoid having latexmkrc-file in the root directory of the project we enable shell-escape by default
    && echo % enable shell-escape by default >> /usr/local/texlive/2021/texmf.cnf \
    && echo shell_escape = t >> /usr/local/texlive/2021/texmf.cnf

    

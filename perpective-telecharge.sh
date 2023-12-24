#!/bin/bash

# Vérifier si tlmgr est installé
if ! command -v tlmgr &> /dev/null; then
    echo "TeX Live n'est pas installé sur votre système. Veuillez installer TeX Live."
    exit 1
fi

# Installer le package perspective
tlmgr install perspective

# Vérifier si l'installation a réussi
if [ $? -eq 0 ]; then
    echo "Le package perspective a été installé avec succès."
else
    echo "Erreur lors de l'installation du package perspective."
    #exit 1
fi

pdflatex  Perspective.tex


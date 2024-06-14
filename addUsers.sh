# Fonctionnel mais message d'erreur "/dev/null : permission denied". Les utilisateurs sont bien crées néanmoins
#!/bin/bash

# Vérification de la présence d'arguments
if [ $# -eq 0 ]; then
  echo "Il manque les noms d'utilisateurs en argument - Fin du script"
  exit 1
fi

# Nouvel utilisateur
for username in "$@"
do
  # Vérification de l'existence de l'utilisateur
  if id "$username" &>/dev/null; then
    echo "L'utilisateur $username existe déjà"
  else
    # Création de l'utilisateur
    sudo useradd "$username"
    
    # Vérification de la création de l'utilisateur
    if id "$username" &>/dev/null; then
      echo "L'utilisateur $username a été créé"
    else
      echo "Erreur à la création de l'utilisateur $username"
    fi
  fi
done

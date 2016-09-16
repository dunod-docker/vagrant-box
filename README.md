# Packer pour la box Vagrant dunod-docker 

Nous utilisons [Packer](https://www.packer.io/) pour générer un box vagrant qui sera ensuite disponible sur [Atlas](https://atlas.hashicorp.com).

C'est la prochaine "génération de Vagrant" car il permet de générer des images de machine virtuelle pour un nombre important de format (AMI pour AWS, quemu...).

# Génération de la box

Il suffit simplement d'installer Packer puis de récupérer les différents et lancer la création de la box.

`$ git clone https://github.com/dunod-docker/vagrant-box.git
$ cd vagrant-box
$  export ATLAS_TOKEN=TOKEN # le token est nécessaire pour pouvoir utiliser Atlas
$ packer build PackerFile.json`

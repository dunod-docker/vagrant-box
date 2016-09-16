# Packer pour la boxe Vagrant dunod-docker 

Nous utilisons [Packer](https://www.packer.io/) pour générer un boxe vagrant qui sera ensuite disponible sur [Atlas](https://atlas.hashicorp.com).

C'est la prochaine "génération de Vagrant" car il permet de générer des images de machine virtuelle pour un nombre important de format (AMI pour AWS, quemu...).

# Génération de la boxe

Il suffit simplement d'installer Packer puis de récupérer les différents fichiers de ce répertoire et lancer la création de la boxe.

```bash
$ git clone https://github.com/dunod-docker/vagrant-box.git
$ cd vagrant-box
$ export ATLAS_TOKEN=TOKEN # le token est nécessaire pour pouvoir utiliser Atlas
$ packer build PackerFile.json</code>
```
Vous aurez ainsi en résultat une boxe Vagrant. Si vous désirez avoir directement une image VirtualBox, changez simplement la ligne `"keep_input_artifact": false` par `"keep_input_artifact": false`: une image sera alors dans le répertoire `output-virtualbox-iso`

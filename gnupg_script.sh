uname -a #conocer el sistema instalado
which gpg #para ver si esta instalado 
gpg --version #ver version de gpg
gpg --full-generate-key #generar llaves
gpg --list-keys #llavero digital
gpg --armor --export #exportar la llave publica
gpg --list-keys #lista todas las llaves

#para listar las llaves privadas
gpg --list-secret-keys --keyid-format=long 
#exporta la llave privada 
gpg --armor --export-secret-keys 08F019E40AC3E0AE





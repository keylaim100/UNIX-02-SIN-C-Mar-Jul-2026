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
#importar llave publica de mi compañero
gpg --import amigo_llave_publica.asc
#redirecciona el mensaje que se imprime en la pantalla a un archivo 
$echo "este mensaje es secreto" > doc_no_cifrado.txt
#este comando encrypta el archivo que creamos usando el hash de nuestro compañero y enviandoselo
gpg --output doc_cifrado.txt --encrypt --recipient CB9CBC531023778D3B81C90EA13BBAAB40C5844C doc_no_cifrado.txt
gpg: 29A8B0E9948BABB9: There is no assurance this key belongs to the named user
#verifica lo que hay dentro del archivo
cat doc_cifrado.txt
#este comando nos ayuda a desencriptar el mensaje de mi compañero
gpg --decrypt amigo_doc_cifrado.txt
#para firmar un documento
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
#comprueba la creacion del documento y el contenido
cat doc_no_cifrado_firmado.txt
#verifica la firma de mi compañero
gpg --verify darwin_doc_no_cifrado_firmado.txt
#comando par darle voto de confianza a mi compañero
gpg --edit-key CB9CBC531023778D3B81C90EA13BBAAB40C5844C
#comando que firma la clave para corroborar mi decision
gpg --sign-key A13BBAAB40C5844C
#se verifica el documento firmado por mi compañero
gpg --verify darwin_doc_no_cifrado_firmado.txt
#firmar el documento en formato binario
gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt
#verifica la firma en binario de mi compañero
gpg --verify darwin_doc_no_cifrado_firmado_binario.txt












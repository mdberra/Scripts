echo "1. Eliminando en ServerRemote ServerServina"
#
ssh marce@35.243.241.239 './sshScriptDeleteServerServina.sh'
#
echo "2. Copiando ServerServina a ServerRemote"
scp /home/marce/Desktop/Code/Go/bin/serverServina 35.243.241.239:/home/marce
#
echo "3. Moviendo ServerServina a /home/liberdinat"
#
ssh marce@35.243.241.239 './sshScriptMoveServerServina.sh'
#
#----------------------------------------------------------------------------------------
#
echo "4. Eliminando en ServerRemote PepeYa"
#
ssh marce@35.243.241.239 './sshScriptDeletePepeYa.sh'
#
echo "5. Copiando PepeYa a ServerRemote"
scp -r /home/marce/Desktop/Code/Angular/PepeYa/dist/PepeYa 35.243.241.239:/var/www/html/
#
echo "6. Reload Nginx"
ssh marce@35.243.241.239 './sshScriptNginxReload.sh
#


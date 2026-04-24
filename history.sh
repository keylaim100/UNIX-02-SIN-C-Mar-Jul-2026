history
    1  git remote add upstream https://github.com/jonathanetitoo/UNIX-02-SIN-C-Mar-Jul-2026.git
    2  git fetch upstream
    3  git checkout -b eval_p2_1_g1 upstream/eval_p2_1_g1
    4  git push -u origin eval_p2_1_g1
    5  mv orion/notas orion/apuntes
    6  cd evaluation
    7  cd orion
    8  mv orion/notas orion/apuntes
    9  cd ..
   10  mv orion/notas orion/apuntes
   11  cd orion
   12  mkdir respaldos
   13  ls
   14  cd ..
   15  git add .
   16  git commit -m "Fix problema 1: estructura de directorios corregida"
   17  cd evaluation
   18  cd orion
   19  mv telemetria.log apuntes/
   20  mv config.tmp config.conf
   21  ls
   22  git add .
   23  git commit -m "Fix problema 2: archivos movidos y renombrados"
   24  chmod 640 apuntes/telemetria.log
   25  cd apuntes
   26  ls -l
   27  git add .
   28  git commit -m "Fix problema 3: permisos numericos 640 en telemetria.log"
   29  git add .
   30  git commit -m "Fix problema 3: permisos numericos 640 en telemetria.log"
   31  cd ..
   32  ls -l
   33  chmod u+x script.sh
   34  chmod o-w config.conf
   35  ls -l
   36  chmod u+s script.sh
   37  ls -l
   38  chmod +t /tmp/orion_zone
   39  ls -ld /tmp/orion_zone
   40  mkdir -p /tmp/orion_zone
   41  ls
   42  ls -ld /tmp/orion_zone
   43  chmod +t /tmp/orion_zone
   44  ls -ld /tmp/orion_zone
   45  gpg --full-generate-key
   46  cd ..
   47  gpg --output orion/apuntes/telemetria.log.gpg --encrypt --recipient lyra@orion.lab orion/apuntes/telemetria.log
   48  gpg --output orion/config.conf.asc --clearsign orion/config.conf
   49  gpg --verify orion/script.sh.sig orion/script.sh
   50  gpg --output orion/config.conf.asc --clearsign orion/config.conf
   51  gpg --verify orion/script.sh.sig orion/script.sh
   52  gpg --output orion/script.sh.sig --detach-sign orion/script.sh
   53  gpg --verify orion/script.sh.sig orion/script.sh
   54  history
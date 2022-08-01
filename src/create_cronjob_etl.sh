!/usr/bin/bash env 
(crontab -l 2>/dev/null; echo "0 0 1 * * jupyter nbconvert --execute /home/jovyan/work/etl.ipynb") | crontab -



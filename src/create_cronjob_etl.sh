!/usr/bin/bash env 
(crontab -l 2>/dev/null; echo "*/5 * * * * jupyter nbconvert --execute /home/jovyan/work/etl.ipynb") | crontab -



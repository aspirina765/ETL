# ETL
Para executar pyspark e jupyter notebook, usamos docker, da pasta docker/ . Nela existem os scripts que geram o notebook em que poderá ser executado o código, por meio da porta 8889, ou seja, em http://localhost:8889. Caso seja preciso, o token de login fica no terminal, no url do jupyter notebook gerado dentro do container de docker.

Para a parte de SQL, foi utilizado o Hive do Spark. Os pacotes de python estão em src/requirements.txt, e pode ser instalado por pip install -r src/requirements.txt . Para chave de api https://rapidapi.com/Active-api/api/airport-info/ para pegar os dados, ela foi guardada em arquivo .env, e é exemplificada por .env.example.

Utilizei de requisição GET assíncrona, a fim de fazer o scrapping dos dados sem o servidor negar serviço.

Comentários foram adicionados.

Em src/, tem o script create_cronjob_etl.sh, um cronjob para crontab de Linux (que pode ser executado por notebook de Databricks usando a mágica %sh na célula). Está configurado para executar o notebook etl.ipynb todo início de mês.

A escolha por docker foi por ele permitir um compartilhamento melhor, seja por causa de problemas de dependencias que o python possa vir a ter, seja por poder levar a imagem ao dockerhub, ou a qualquer nuvem, seja ela gerenciada ou on-premise. E isto torna a solução mais flexível e escalável.

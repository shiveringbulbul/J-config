docker run --name jupyter -p 7000:8888 -v $HOME/Desktop/jupyter:/home/jovyan/work -d  jupyter/datascience-notebook start-notebook.sh — NotebookApp.token=’’

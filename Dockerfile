FROM python:3.6.7
RUN echo "on declare l'environnement"

RUN echo "On ajoute le fichier dans l'image attention au ' .' qui donne la destination, ici la racinne "
ADD main.py .
ADD requirements.txt .

RUN echo "Les librairies ou la librairie"
RUN pip install -r requirements.txt

RUN echo 'On précise qui/quoi on execute'
CMD ["python3","main.py"]
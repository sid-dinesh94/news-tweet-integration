# news-tweet-integration

## Instructions

* Install Docker or Docker Toolbox (depending on your OS)
* Download or clone this repository into a folder of your choice. Preferably C Drive if you are using Windows (and no spaces in your directory path)
* In the docker shell, Go into the folder in the repository named Docker and run the following command
	`docker build -t jupyter/news-tweet-integration .`
	This step might take upto 45 minutes to complete. This step creates a Docker image with all packages required to run the Jupyter notebook in this repository.
* Go back one folder up to the repository home and download these csv files from this GoogleDrive. Request permission. This is where the sample data is. The data files are approximately 500MB in total. Please email the owner of this repository for a copy of the data.
* Download the csv files into the repository home
* Run the following command:
	`docker run -it -p 8888:8888 -v <absolute_path_to_repository_home>/:home/jovyan/work jupyter/news-tweet-integration`
	The command runs the image interactively (-it), exposes on to port (8888) of your local machine the port (8888) from the image, and mounts (-v) the contents of the repository (notebooks, data) into the path /home/jovyan/work of the jupyter/news-tweet-integration image. The image automatically starts jupyter notebook.
	If mounted correctly, all changes made to data and notebooks are saved onto your local copy. If there is any issue, all changes will be lost. If the notebooks are displayed in your working directory (Jupyter Notebook's home page) when the Docker image starts, then your changes will be replicated.  


## Notebooks

* LDA.ipynb takes a dataset of News articles and creates, visualizes LDA topic clusters. Some cleaning is also done. The final output of this notebook is a datafile called LDAclusters.csv.
* SentenceEncoder.ipynb takes the LDAclusters.csv dataset, loads the Google Sentence Encoder module from Tensorflow, reads in the Tweets dataset and then attempts at finding similar tweets to a news article.

## TO DO
* Better documentation of Notebooks
* Online clustering algorithms to avoid using LDA
* Study of properties of News and Tweet embeddings 

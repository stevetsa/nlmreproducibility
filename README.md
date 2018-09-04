# nlmreproducibility

Containerization for Reproducible Bioinformatics Research
 
As computational work becomes increasingly embedded in biomedical research practices, computational reproducibility has become an issue of increasing importance. Computational reproducibility requires that other researchers are able to deploy and use software and analysis workflows in their own computing environments. Platforms like Docker and Singularity allow the creation and configuration of software containers, which can be distributed and deployed across a range of systems. This lecture, presented by Steve Tsang, will give an introductory overview of containerization and how containers can facilitate reproducible bioinformatics research, providing examples from the NCI Cloud Resources and various hackathons.

## Launch the presentation with Binder
[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/stevetsa/nlmreproducibility/master)

## Launch the presentation with Docker container
[Install Docker in your environment](https://docs.docker.com/install/)
```{}
git clone https://github.com/stevetsa/nlmreproducibility.git
docker run -v `pwd`:`pwd` -w `pwd` -i -t stevetsa/nlmreproducibility
## inside container - follow on screen instructions (Copy/paste this URL/token into your browser )
## click to select the nlmreproducibility folder
## click to select slides.ipynb
```



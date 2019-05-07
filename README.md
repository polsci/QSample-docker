# QSample-docker

Dockerfile to run QSample ("a natural language processing tool for automatically detecting quotations in text") https://github.com/christianscheible/qsample  

Here is the associated academic paper on Qsample:  
http://www.aclweb.org/anthology/P/P16/P16-1164.pdf

and the associated citation:

    @InProceedings{scheibleklingerpado2016,
      author    = {Scheible, Christian and Klinger, Roman and Pad\'{o}, Sebastian},
      title     = {Model Architectures for Quotation Detection},
      booktitle = {Proceedings of the 54th Annual Meeting of the Association for Computational Linguistics},
      pages     = {1736-1745},
      year      = {2016}
    }

I created this Dockerfile while testing QSample and maybe this is useful for others doing the same thing. Please direct any questions about their paper and code to the authors above or via the Qsample repo: https://github.com/christianscheible/qsample.

## Build the Dockerfile

`docker build https://github.com/polsci/Qsample-docker.git -t qsample`

## Run an interactive shell to test out Qsample

`docker run -it qsample /bin/sh`

## Testing

As detailed [here](https://github.com/christianscheible/qsample) you can run Qsample on some example documents with this command:

`java -jar target/qsample-0.1-jar-with-dependencies.jar --sample example/documents/ output`

The output directory will contain the results.

See https://github.com/christianscheible/qsample#usage for further information on the output format.

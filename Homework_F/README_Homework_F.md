## Homework F (optional)

> Diego Montesinos Valencia
>
> [**Stackoverflow profile**](https://es.stackoverflow.com/users/176115/dmephisto?tab=profile)



During the development of my final work I had a series of problems especially with the new version of R and RStudio due to the fact that it made the update of these softwares to their most recent versions (until today), rather than a purely bioinformatic problem, they were problems related to the loading of packages and the installation of various dependencies, for this reason consider that these two problems are of interest to people (like me) who are beginning to manage the different software involved in bioinformatics analysis.

In general, the two problems I had with R and RStudio were:

> 1. **When trying to load any type of package, all failed.**
>
>    
>
> 2. **When trying to install the R package "factoextra" related to the extraction and display of the results of multivariate data analysis, I got the error "had non-zero exit status" and in turn I was referring to the dependencies "curl" , "Libssl-dev", "libcurl" and "xml2".**



Before mentioning the solution to these two problems, I want to briefly describe how I did the update from R to version 4.0.0 (2020-04-24) "Arbor Day" and from RStudio to version 1.2.5042.

In the first instance it is necessary to mention that all the steps were performed in the Ubuntu 18.04 LTS (Bionic Baver) (64-bit) operating system. Initially I considered to completely uninstall R and RStudio so I looked in stackoverflow how to do it and found the following post:

[**"Complete remove and reinstall R, including all packages"**](https://stackoverflow.com/questions/24118558/complete-remove-and-reinstall-r-including-all-packages)

Commands are mentioned in it

```
$ sudo apt-get remove r-base-core
$ sudo apt-get remove r-base
$ sudo apt-get autoremove
```

to completely remove R, in addition to the instruction within R

```
.libPaths() 
```

In order to know the directory where the packages are located and thus be able to delete them completely, this was useful to me since initially I had the idea of reinstalling R from zero.

Also in the following link

[**"How To Uninstall RStudio Desktop"**](https://support.rstudio.com/hc/en-us/articles/200554736-How-To-Uninstall-RStudio-Desktop)

I found the command

```
$ sudo apt-get remove rstudio
```

with which to uninstall RStudio.

Once this was done, I found a tutorial in Spanish on YouTube that showed me how to install the new versions of R and RStudio. This tutorial is at the following link

[**"Instalando R & RStudio en Ubuntu 18.04"**](https://www.youtube.com/watch?v=3ni-jP2qEWg&list=LLqlqzeToMRCsNFeLOdp-vvw&index=6&t=598s)

By following the aforementioned tutorial, R and RStudio were installed in Ubuntu 18.04 LTS in the most recent versions (until May 2020). However, the above mentioned problems started to arise when trying to install and load some packages in RStudio.

Below I will briefly describe how to solve these problems:



#### 1. When trying to load any type of package, all failed.

Since I had installed the new version of RStudio, I installed packages like “ggplot2” and when trying to load them I got the following: Error: package or namespace load failed for ‘ggplot2’.
In this case, search stackoverflow for an answer and find the one with the following link

[**"Unable to install packages in latest version of RStudio and R Version.3.1.1"**](https://stackoverflow.com/questions/25599943/unable-to-install-packages-in-latest-version-of-rstudio-and-r-version-3-1-1)

Which didn't completely solve the problem, but it gave me some hint until I hit a post on community.rstudio.com, what is next

[**"Every libraries failed to load after upgrading R to 3.6.0"**](https://community.rstudio.com/t/every-libraries-failed-to-load-after-upgrading-r-to-3-6-0/29736)

in which I mentioned that when updating the version of R you had to use the following command (in R)

```
update.packages(repos='http://cran.rstudio.com/', ask=FALSE, checkBuilt=TRUE)
```

with said command in RStudio, I was able to solve the problem and finally I was able to load the package "ggplot2".



#### 2. When trying to install the R package "factoextra" related to the extraction and display of the results of multivariate data analysis, I got the error "had non-zero exit status" and in turn I was referring to the dependencies "curl" , "Libssl-dev", "libcurl" and "xml2".

To solve this problem I found the following link of stackoverflow

[**"Non Zero Exit Status” R 3.0.1 'XML' and 'RCurl'**](https://stackoverflow.com/questions/20671814/non-zero-exit-status-r-3-0-1-xml-and-rcurl)

and the next post in Spanish

[**ERROR EN R: “INSTALLATION OF PACKAGE ‘X’ HAD NON-ZERO EXIT STATUS” (POSIBLE SOLUCIÓN)**](https://vivaelsoftwarelibre.com/error-r-installation-of-package-x-had-non-zero-exit-status-posible-solucion/)

In essence the two links mention that the problem is due to the packages that are missing from Linux (or in this case from Ubuntu) and that are necessary for R. The obvious solution is to install these ("curl", "libssl-dev" , "libcurl" and "xml2") packages but through the Linux terminal with the following command

```
$ sudo apt-get install curl libssl-dev libcurl4-openssl-dev libxml2-dev
```

with which the essential libraries are installed for R to work correctly in Ubuntu.

Although they seem very simple problems, at the time I tried to solve them it was quite complicated, since I tried several unsuccessful solutions and in some cases led me to uninstall and reinstall R and RStudio. However, I think that at least I have learned to perform my searches in stackoverflow more optimally and to have an idea of the problems that can arise when installing a new version of R or installing this program on another computer (“The successful installation of these programs it does not always entail a correct functioning of all its qualities ”).

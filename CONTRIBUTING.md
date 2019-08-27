# Contributing to our Website

Our website is developed with Phalcon, in order to showcase an implementation and leverage the power of the framework.

## Contributions

Contributions to our website should be made in the form of GitHub pull requests. Each pull request will be reviewed by a core contributor (someone with permission to merge pull requests). Based on the type and content of the pull request, it can either be merged immediately, put on hold if clarifications are needed, or rejected. 

Please ensure that you are sending your pull request to the correct branch and that you already have rebased your code.

## Questions & Support

_We only accept bug reports, new feature requests and pull requests in GitHub._ For questions regarding the usage of the
our website code or support requests please visit the [official forums][:forums:].

## Bug Report Checklist

* Make sure you are using the latest released version of Phalcon before submitting a bug report. Bugs in versions older than the latest released one will not be addressed by the core team.

* If you have found a bug, it is essential to add relevant information to reproduce it. Being able to reproduce a bug greatly reduces the time to investigate and fix it. This information should come in the form of a script, small application, or even a failing test. Please check [Submit Reproducible Test][:srt:] for more information.

* As part of your report, please include additional information such as the OS, PHP version, Phalcon version, web server, memory etc.

* If you're submitting a Segmentation Fault error, we would require a backtrace. Please check [Generating a Backtrace][:bt:] for more information.

## Pull Request Checklist

* Don't submit your pull requests to the master branch. Branch from the required branch and, if needed, rebase to the proper branch before submitting your pull request. If it doesn't merge cleanly with master you may be asked to rebase your changes

* Don't put submodule updates, composer.lock, etc in your pull request unless they are to merged commits

* Make sure that the code you write adheres with the general style and coding standards of the [Accepted PHP Standards][:psr:]

## Getting Support

If you have a questions about how to use Phalcon, please see the [support page][:support:].

## Requesting Features

If you have a change or new feature in mind, please fill an [NFR][:nfr:].

Thanks! 


<3 Phalcon Team


[:forums:]: https://forum.phalcon.io/
[:bt:]: https://github.com/phalcon/cphalcon/wiki/Generating-a-backtrace
[:psr:]: http://www.php-fig.org/psr/
[:support:]: https://phalcon.io/support
[:nfr:]: https://github.com/phalcon/cphalcon/wiki/New-Feature-Request---NFR

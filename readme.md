# ADL LRS test env - for Skillz vendors 

#### Installation tested on <b>Ubuntu 14.04</b> machine with Python 2.7.18, <b>Ubuntu 14.04+</b> is recommended. Updated to be compliant with the 1.0.3 xAPI spec.

This version is stable, but only intended to support a small amount of users as a proof of concept. While it uses programming best practices, it is not designed to take the place of an enterprise system.

## Get started
Clone the project and run docker-compose up
The server is listening on port 8080
Can be changed in the docker-compose.yml

## Test LRS

    (env)dbowner:ADL_LRS$ fab test_lrs

## Helpful Information

* [Test Coverage](https://github.com/adlnet/ADL_LRS/wiki/Code-Coverage)
* [Code Profiling](https://github.com/adlnet/ADL_LRS/wiki/Code-Profiling-with-cProfile)
* [Setting up Nginx and uWSGI](https://github.com/adlnet/ADL_LRS/wiki/Using-uWSGI-with-Nginx)
* [OAuth Help](https://github.com/adlnet/ADL_LRS/wiki/Using-OAuth)
* [Clearing the Database](https://github.com/adlnet/ADL_LRS/wiki/Clearing-the-Database)

## Contributing to the project
We welcome contributions to this project. Fork this repository, make changes, and submit pull requests. If you're not comfortable with editing the code, please [submit an issue](https://github.com/adlnet/ADL_LRS/issues) and we'll be happy to address it.

## License
   Copyright &copy;2016 Advanced Distributed Learning

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

# Tapi: Keg Manager  

#### Bryce Bresnan <Bryce.Bresnan@gmail.com>
#### Evgeny Zbirun <zbirunzbirun@gmail.com>
#### PJ Perry <pjperry28@gmail.com>

#### This app organizes keg inventory and auto curates taps for bars. 

## Technologies Used

* Ruby
* Rails
* Active Record

## Setup/Installation Requirements

* Clone this repository from GitHub.
* Navigate to the root in command line
* Run <code>$bundle install</code> to install the required gems.
* Run <code>$rake db:setup</code> to create the database structure in Active Record.
* Run <code>$rails s</code> to start the server.
* Navigate in your browser to http://localhost:3000/

*Admin: For security, any users that require admin privlidges will have to be given them via the rails console.
*Default Users: By default, Admin and User are seeded in the database. Use Admin@admin.com PW: 1234...

## Known Bugs

## License
MIT License

Copyright (c) 2022 Bryce Bresnan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

<div class="header-line">
    <div class="size-wrap">
        <div class="header-line-title title-white">Documentation</div>
    </div>
</div>

<div class="size-wrap">

    <div class="note">Phalcon's documentation is maintained in <a href="#">Github repositories</a>. You are more than welcome to send us pull requests if you found an error or if </div>

    <div class="content-wrap clear-fix">

        <div class="sidebar">

            <div class="searchbox-wrap">
                <input type="text" name="q" id="searchbox" class="searchbox" placeholder="Search" />
                <input type="submit"  class="search-button" />
            </div>

            <div class="table-of-contents">
                <div class="h4">Preface</div>
                <ul class="unstyled">
                    <li><a href="#" class="link-black">Our motivation</a></li>
                    <li><a href="#" class="link-black">Framework Benchmarks</a></li>
                    <li><a href="#" class="link-black">License</a></li>
                </ul>

                <div class="h4">Getting Started</div>
                <ul class="unstyled">
                    <li><a href="#" class="link-black">Installation</a></li>
                    <li><a href="#" class="link-black">Tutorial 1: Let’s learn by example</a></li>
                    <li><a href="#" class="link-black">Tutorial 2: Explaining INVO</a></li>
                    <li><a href="#" class="link-black">Tutorial 3: Creating a Simple REST API</a></li>
                    <li><a href="#" class="link-black">List of examples</a></li>
                </ul>

                <div class="h4">MVC</div>
                <ul class="unstyled">
                    <li><a href="#" class="link-black">Micro Applications</a></li>
                    <li><a href="#" class="link-black">MVC Applications</a></li>
                    <li><a href="#" class="link-black">Routing</a></li>
                    <li><a href="#" class="link-black">The MVC Architecture</a></li>
                    <li><a href="#" class="link-black">Using Controllers</a></li>
                    <li><a href="#" class="link-black">Working with Models</a></li>
                    <li><a href="#" class="link-black">Using Views</a></li>
                    <li><a href="#" class="link-black">View Helpers</a></li>
                    <li><a href="#" class="link-black">Generating URLs and Paths</a></li>
                    <li><a href="#" class="link-black">Dispatching Controllers</a></li>
                </ul>

                <div class="h4">Section Title</div>
                <ul class="unstyled">
                    <li><a href="#" class="link-black">Phalcon Query Language (PHQL)</a></li>
                    <li><a href="#" class="link-black">Caching in the ORM</a></li>
                    <li><a href="#" class="link-black">Queueing</a></li>
                    <li><a href="#" class="link-black">Database Abstraction Layer</a></li>
                    <li><a href="#" class="link-black">Database Migrations</a></li>
                </ul>

                <div class="h4">Section Title</div>
                <ul class="unstyled">
                    <li><a href="#" class="link-black">Dependency Injection/Service Location</a></li>
                    <li><a href="#" class="link-black">ODM (Object-Document Mapper)</a></li>
                    <li><a href="#" class="link-black">Assets Management</a></li>
                    <li><a href="#" class="link-black">Volt: Template Engine</a></li>
                    <li><a href="#" class="link-black">Working with Namespaces</a></li>
                    <li><a href="#" class="link-black">Events Manager</a></li>
                    <li><a href="#" class="link-black">Request Environment</a></li>
                    <li><a href="#" class="link-black">Returning Responses</a></li>
                    <li><a href="#" class="link-black">Cookies Management</a></li>
                    <li><a href="#" class="link-black">Flashing Messages</a></li>
                </ul>

                <div class="h4">Section Title</div>
                <ul class="unstyled">
                    <li><a href="#" class="link-black">Dependency Injection/Service Location</a></li>
                    <li><a href="#" class="link-black">ODM (Object-Document Mapper)</a></li>
                    <li><a href="#" class="link-black">Assets Management</a></li>
                    <li><a href="#" class="link-black">Volt: Template Engine</a></li>
                    <li><a href="#" class="link-black">Working with Namespaces</a></li>
                    <li><a href="#" class="link-black">Events Manager</a></li>
                    <li><a href="#" class="link-black">Request Environment</a></li>
                    <li><a href="#" class="link-black">Returning Responses</a></li>
                    <li><a href="#" class="link-black">Cookies Management</a></li>
                    <li><a href="#" class="link-black">Flashing Messages</a></li>
                </ul>


                <div class="h4">Section Title</div>
                <ul class="unstyled">
                    <li><a href="#" class="link-black">Command Line Applications</a></li>
                    <li><a href="#" class="link-black">Debugging Applications</a></li>
                    <li><a href="#" class="link-black">Phalcon Developer Tools</a></li>
                    <li><a href="#" class="link-black">Increasing Performance: What’s next?</a></li>
                </ul>

                <div class="h4">API</div>
                <ul class="unstyled">
                    <li><a href="#" class="link-black">API Documentation</a></li>
                </ul>

                <div class="h4">Older versions</div>
                <ul class="unstyled">
                    <li><a href="#" class="link-black">Documentation for older versions</a></li>
                </ul>

            </div>

        </div>

        <div class="content">

            <div class="h4 section-title">Getting Started</div>

            <h1>Tutorial 1: Let’s learn by example</h1>

            <ul>
                <li><a href="#checking-your-installation" class="reference internal">Checking your installation</a></li>
                <li><a href="#creating-a-project" class="reference internal">Creating a project</a></li>
                <li><a href="#conclusion" class="reference internal">Conclusion</a></li>
                <li><a href="#sample-applications" class="reference internal">Sample Applications</a></li>
            </ul>

            <div id="checking-your-installation">
                <h2>Checking your installation</h2>
                <p>We’ll assume you have Phalcon installed already. Check your phpinfo() output for a section referencing “Phalcon” or execute the code snippet below:</p>
                <div class="highlight">
                    <pre> print_r(get_loaded_extensions());</pre>
                </div>
                <p>The Phalcon extension should appear as part of the output:</p>
                <div class="highlight">
<pre>Array
(
    [0] => Core
    [1] => libxml
    [2] => filter
    [3] => SPL
    [4] => standard
    [5] => phalcon
    [6] => pdo_mysql
)</pre>
                </div>
            </div>





        </div>

    </div>

</div>

<div class="size-wrap footer-wrap">

    <table class="footer-links">
        <tr>
            <td>
                <div class="footer-links-title">Main</div>
                <ul class="footer-links-list unstyled">
                    <li><a href="#" class="link-black">Download</a></li>
                    <li><a href="#" class="link-black">Documentation</a></li>
                    <li><a href="#" class="link-black">Blog</a></li>
                </ul>
            </td>
            <td>
                <div class="footer-links-title">Services</div>
                <ul class="footer-links-list unstyled">
                    <li><a href="#" class="link-black">Consulting</a></li>
                    <li><a href="#" class="link-black">Hosting</a></li>
                </ul>
            </td>
            <td>
                <div class="footer-links-title">Support</div>
                <ul class="footer-links-list unstyled">
                    <li><a href="#" class="link-black">Forum/Community</a></li>
                    <li><a href="#" class="link-black">Stack Overflow</a></li>
                    <li><a href="#" class="link-black">Issue Tracker</a></li>
                </ul>
            </td>
            <td>
                <div class="footer-links-title">Get Involved</div>
                <ul class="footer-links-list unstyled">
                    <li><a href="#" class="link-black">Team</a></li>
                    <li><a href="#" class="link-black">About</a></li>
                    <li><a href="#" class="link-black">Roadmap</a></li>
                </ul>
            </td>
        </tr>
    </table>

    <div class="donate-wrap">
        Donate to Phalcon: <a href="#" class="button button-small orange">Flattr</a> or <a href="#" class="button button-small orange">via PayPal</a>
    </div>

    <div class="social-links">
        <a href="#" class="social-link tw">Twitter</a>
        <a href="#" class="social-link fb">Facebook</a>
        <a href="#" class="social-link gp">Google Plus</a>
        <a href="#" class="social-link vm">Vimeo</a>
    </div>

</div>

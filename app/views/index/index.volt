{% set doc_path = 'http://docs.phalconphp.com/en/latest' %}

<div class="intro-review row-fluid">

	<div class="span6" align="left">

		<h5>Welcome to</h5>
		<h2>THE FASTEST PHP FRAMEWORK</h3>
		<h5>
			Phalcon is a web framework implemented as a C extension
			<br />
			offering
			<a href="{{ doc_path }}/benchmark.html">high performance</a>
			and lower resource consumption.
		</h5>

		<div class="row-fluid">
			<div class="text-center span12">
				<div class="btn-group">
					<a href='http://try.phalconphp.com'>
						<button class="btn btn-large btn-primary">Try it Online</button>
					</a>
					<a href='{{ url('download') }}'>
						<button class="btn btn-large btn-success">Download</button>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="span6">
		<iframe src="http://player.vimeo.com/video/63022489?portrait=0&amp;color=94bfab" width="450" height="282" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
	</div>

</div>

<!--
<div class="featured row-fluid">

	<div class="featured-specs span6">
		<h2>A framework as <br/>
			C-extension.<br/>
			Interesting!!
		</h2>
		<h4>Check this presentation out for more:</h4>
	</div>

	<div class="featured-specs span6">
		<div id="speakerdeck_presentation_wrapper_4edf11f72a2b980050009919">
			<iframe class="present_iframe" frameBorder="0" allowTransparency="true" mozallowfullscreen="true" webkitallowfullscreen="true" id="presentation_frame_4edf11f72a2b980050009919" src="//speakerdeck.com/embed/4edf11f72a2b980050009919?size=preview&slide=1" width="370" height="305"></iframe>
		</div>
	</div>
</div>
-->

<div class="features row-fluid">

	<div class="span3">
		<h2>Everything you need</h2>
	</div>

	<div class="span4">

		<ul>
		<li>Full <a href='{{ doc_path }}/reference/applications.html'>MVC</a> applications
		(<a href='{{ doc_path }}/reference/applications.html#single-module'>Single-Module</a>,
		<a href='{{ doc_path }}/reference/applications.html#multi-module'>Multi-Module</a> and
		<a href='{{ doc_path }}/reference/micro.html'>Micro</a> Applications)</li>

	<li>ORM (
		<a href='{{ doc_path }}/reference//models.html#transactions'>Transactions</a>,
		<a href='{{ doc_path }}/reference//models.html#behaviors'>Behaviors</a>,
		<a href='{{ doc_path }}/reference//models.html#relationships-between-models'>Relations</a>,
		<a href='{{ doc_path }}/reference//phql.html'>PHQL</a>,
		<a href='{{ doc_path }}/reference//models.html#events-and-events-manager'>Events</a>,
		<a href='{{ doc_path }}/reference//models.html#validation-failed-events'>Validations</a>,
		<a href='{{ doc_path }}/reference//models.html#hydration-modes'>Hydration</a>,
		<a href='{{ doc_path }}/reference//models.html#logging-low-level-sql-statements'>Logging</a>,
		<a href='{{ doc_path }}/reference//models.html#profiling-sql-statements'>Profiling</a>,
		Sharding)</li>

		<li><a href='{{ doc_path }}/reference/request.html'>HTTP Request</a>/<a href='{{ doc_path }}/reference/response.html'>Response</a></li>
		<li><a href='{{ doc_path }}/reference/odm.html'>ODM for Mongo</a></li>
		<li><a href='{{ doc_path }}/reference/volt.html'>Template Engine (Volt)</a></li>
		<li><a href='{{ doc_path }}/reference/di.html'>DI/IOC</a></li>
		<li><a href='{{ doc_path }}/reference/events.html'>Events Management</a></li>
	</div>

	<div class="span4">
		<ul>
			<li><a href='{{ doc_path }}/reference/escaper.html'>Escaping/Filtering</a></li>
			<li><a href='{{ doc_path }}/reference/forms.html'>Forms Builder/Validation</a></li>
			<li><a href='{{ doc_path }}/reference/flash.html'>Flash Messages</a></li>
			<li><a href='{{ doc_path }}/reference/cache.html'>Caching</a></li>
			<li><a href='{{ doc_path }}/reference/pagination.html'>Pagination</a></li>
			<li><a href='{{ doc_path }}/reference/annotations.html'>Annotations</a></li>
			<li><a href='{{ doc_path }}/reference/security.html'>Security</a></li>
			<li><a href='{{ doc_path }}/reference/translate.html'>Translations</a></li>
			<li><a href='{{ doc_path }}/reference/loader.html'>Universal Auto-Loader</a></li>
			<li><a href='{{ doc_path }}/reference/logging.html'>Logging</a></li>
			<li><a href='{{ doc_path }}/reference/cli.html'>CLI</a></li>
		</ul>
	</div>
</div>

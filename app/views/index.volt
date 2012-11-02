<!DOCTYPE html>
<html lang="en">
    {{ partial('partials/header') }}
    <body>
        {{ partial('partials/navbar') }}

        {{ content() }}

        {{ partial('partials/footer') }}

        {{ javascript_include(config.app.js.gs, config.app.js.local) }}
        {{ javascript_include(config.app.js.twitter, config.app.js.local) }}
	</body>
</html>

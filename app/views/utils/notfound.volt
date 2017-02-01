{% extends 'layouts/main.volt' %}

{% block content %}
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                {% include 'partials/header_top.volt' %}
                <!-- Header Content -->
                <div class="col-sm-12">
                    <div align="center">
                        <div style="max-width: 600px">
                            <h1>{{ locale.translate('oops') }}</h1>
                            <br>
                            <br>
                            <h2>{{ locale.translate('something_went_wrong') }}</h2>
                        </div>
                    </div>
                </div>
                <!-- /End Header Content -->
            </div>
        </div>
    </div>
{% endblock %}
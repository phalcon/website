
<div class="codesample views_front_end_code code_templates">
    <div class="codesample-header">
        <h3>{{ tr("template_engines") }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Views represent the user interface of your application. Views are often HTML files with embedded PHP code that perform tasks related solely to the presentation of the data. Views handle the job of providing data to the web browser or other tool that is used to make requests from your application.

            Phalcon\Mvc\View and Phalcon\Mvc\View\Simple are responsible for the managing the view layer of your MVC application.
        </p>
        <pre>
            <code class="php">

use Phalcon\Mvc\View\Simple as SimpleView;

$di->set('view', function () {

    $view = new SimpleView();

    $view->setViewsDir('../app/views/');

    return $view;
}, true);

            </code>
        </pre>
    </div>
</div>

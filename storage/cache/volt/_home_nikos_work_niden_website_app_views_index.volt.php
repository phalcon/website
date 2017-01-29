<!DOCTYPE html>
<html lang="<?= $language ?>">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="keyword" content="<?= $this->utils->env('APP_KEYWORDS', '') ?>">
    <meta name="description" content="<?= $this->utils->env('APP_DESCRIPTION', '') ?>">
    <meta name=generator content="Phalcon Framework 3.0.3">

    <meta property="og:url" content="https://phalconphp.com/">
    <meta property="og:site_name" content="Phalcon Website">

    <link rel="canonical" href="https://phalconphp.com/">
    <link rel="author" href="https://github.com/tobispace">
    <link rel="publisher" href="https://phalconphp.com/">

    <link href="/images/favicon.ico" rel="icon" type="image/x-ico"/>

    <title>Phalcon - High Performance PHP Framework</title>

    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type='text/css'>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:700,400' rel='stylesheet' type='text/css'>
    <link href="/css/flags.css" rel='stylesheet' type='text/css'>
    <link href="/css/highlight.js.css" rel='stylesheet' type='text/css'>

    <link href="/css/phalcon.min.css" rel='stylesheet' type='text/css'>

    <?php if ((empty(!$this->utils->env('GOOGLE_ANALYTICS', '')))) { ?>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', '<?= $this->utils->env('GOOGLE_ANALYTICS') ?>', 'auto');
        ga('send', 'pageview');

    </script>
    <?php } ?>

</head>

<body>



    <!-- =========================
         Background Images
    ============================== -->

    <ul class="bg-slideshow">
        <li><span>Image 01</span></li>
        <li><span>Image 02</span></li>
        <li><span>Image 03</span></li>
        <li><span>Image 04</span></li>
        <li><span>Image 05</span></li>
        <li><span>Image 06</span></li>
    </ul>

    <!-- =========================
         Section1 - Header
    ============================== -->
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                                <!-- Header top -->
                <div class="col-sm-3 logo">
                    <a href="<?= $this->url->get() ?>">
                        <img alt="" class="logo-phalcon" src="<?= $cdnUrl ?>images/phalcon1.png">
                    </a>
                </div>
                <div class="col-sm-7 menu-phalcon">
                    <div class="center">
                        <ul class="nav navbar-nav main-menu">
    <li class="first">
        
    </li>
    <li><a href="https://docs.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('documentation') ?></a></li>
    <li><a href="https://forum.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('forum') ?></a></li>
    <li><a href="https://slack.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('Slack') ?></a></li>
    <li><a href="https://blog.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('blog') ?></a></li>
    <li><a href="https://api.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('API') ?></a></li>
    <li><a href="http://phalconist.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('resources') ?></a></li>
    
    <li class="dropdown" style="margin-left:3px;">
        <a href="javascript:;" class="dropdown-toggle" id="dropdownLanguageMenu" data-toggle="dropdown"><img src="<?= $cdnUrl ?>/images/flags/<?= $language ?>.gif" alt="" />&nbsp;<span class="caret"></span></a>
        <ul class="dropdown-menu" id="dropdown-language" role="menu" style="color:black" aria-labelledby="dropdownLanguageMenu">
            <li role="presentation" class="dropdown-link" style="color:black;"><?= $languages_available ?></li>
        </ul>
    </li>
</ul>

                    </div>
                </div>
                <div class="col-sm-2 social-icons-align" style="margin-top:15px;">
                    <a href="https://twitter.com/phalconphp">
                        <img alt="" src="<?= $cdnUrl ?>images/twitter.png">
                    </a>
                    <a href="https://github.com/phalcon/cphalcon/">
                        <img alt="" src="<?= $cdnUrl ?>images/github.png">
                    </a>
                </div>
                <!-- /End Header Top -->

                <!-- Header Content -->
                <div class="col-sm-12">
                    <div align="center">
                        <div style="max-width: 600px">
                            <h1><?= $this->locale->translate('header_tagline') ?></h1>
                        </div>
                    </div>

                    <br>

                    <p>
                        <?= $this->locale->translate('header_slogan') ?>
                        <a id="bench-link" href="https://docs.phalconphp.com/" target="_blank">
                            <?= $this->locale->translate('see_for_yourself') ?>
                        </a>
                    </p>

                    <br>
                    <br>
                    <br>

                    <a href="/<?= $language ?>/download"
                       class="btn btn-lg btn-phalcon btn-download">
                        <button class="view-detail btn">
                            <i class="fa fa-download"></i> <?= $this->locale->translate('get_phalcon', $version) ?>
                        </button>
                    </a>
                    <div class="sublinks">
                        <a href="/<?= $language ?>/download"><?= $this->locale->translate('download_version', $version) ?></a> |
                        <a href="/<?= $language ?>/download"><?= $this->locale->translate('install_instructions') ?></a>
                    </div>
                </div>
                <!-- /End Header Content -->
            </div>
        </div>
    </div>

    <!-- =========================
         Section2 - Advertised
    ============================== -->
    <div id="advertised-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="advertised red">
                        <div class="arrow-left"></div>
                        <div class="arrow-down-2"></div>
                        <p>
                            <img src='<?= $cdnUrl . 'images/professor.png' ?>'
                                 title='<?= $this->locale->translate('learn') ?>'
                                 alt='<?= $this->locale->translate('learn') ?>' />
                            <?= $this->locale->translate('learn') ?>
                        </p>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="advertised">
                        <p>
                            <a href="<?= $docsRoot ?>reference/tutorial.html" style="color:#ffffff">
                                <img src='<?= $cdnUrl . 'images/chemistry.png' ?>'
                                     title='<?= $this->locale->translate('try_phalcon') ?>'
                                     alt='<?= $this->locale->translate('try_phalcon') ?>' />
                                <?= $this->locale->translate('try_phalcon') ?>
                            </a>
                        </p>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="advertised">
                        <p>
                            <a href="http://zephir-lang.com">
                                <img src='<?= $cdnUrl . 'images/zephir_logo.png' ?>'
                                     title='<?= $this->locale->translate('zephir') ?>'
                                     alt='<?= $this->locale->translate('zephir') ?>' />
                            </a>
                        </p>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="advertised">
                        <p>
                            <a href="/<?= $language ?>/about">
                                <img src='<?= $cdnUrl . 'images/drop.png' ?>'
                                     title='<?= $this->locale->translate('contribute') ?>'
                                     alt='<?= $this->locale->translate('contribute') ?>' />
                            <?= $this->locale->translate('contribute') ?>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--
    =========================
         Section3 - Features
    =========================
    -->

    <section id="feature-section" class="codesamples">
        <div class="container">
            <div class=" col-md-12 white-bg">
                <!-- Features Left -->
                <div class="col-sm-5">
                    <h2 class="verticle-line">
                        <?= $this->locale->translate('basic_features') ?>
                    </h2>
                    <ul class="feature-list">
                        <li class="basic_features low_overhead">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('low_overhead') ?>'
                                     alt='<?= $this->locale->translate('low_overhead') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('low_overhead') ?></h3>
                                <p>
                                    <?= $this->locale->translate('low_overhead_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="basic_features mvc">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('mvc_hmvc') ?>'
                                     alt='<?= $this->locale->translate('mvc_hmvc') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('mvc_hmvc') ?></h3>
                                <p>
                                    <?= $this->locale->translate('mvc_hmvc_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="basic_features di">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('dependency_injection') ?>'
                                     alt='<?= $this->locale->translate('dependency_injection') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('dependency_injection') ?></h3>
                                <p>
                                    <?= $this->locale->translate('dependency_injection_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="basic_features rest">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('rest') ?>'
                                     alt='<?= $this->locale->translate('rest') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('rest') ?></h3>
                                <p>
                                    <?= $this->locale->translate('rest_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="basic_features autoloader">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('autoloader') ?>'
                                     alt='<?= $this->locale->translate('autoloader') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('autoloader') ?></h3>
                                <p>
                                    <?= $this->locale->translate('autoloader_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="basic_features router">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('router') ?>'
                                     alt='<?= $this->locale->translate('router') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('router') ?></h3>
                                <p>
                                    <?= $this->locale->translate('router_description') ?>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- /End Features Left -->

                <!-- Features Right -->
                <div class="col-sm-7">
                    <div class="codesample basic_features_code code_low_overhead">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('low_overhead') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="text-center">
                    <?= $this->locale->translate('low_overhead_title') ?>
                </h3>
                <ul class="features features-positive">
                    <li>
                        <?= $this->locale->translate('low_overhead_1') ?>
                    </li>
                    <li>
                        <?= $this->locale->translate('low_overhead_2') ?>
                    </li>
                    <li>
                        <?= $this->locale->translate('low_overhead_3') ?>
                    </li>
                    <li>
                        <?= $this->locale->translate('low_overhead_4') ?>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample basic_features_code code_mvc" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('mvc') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Build single and multi-module applications with ease and pleasure. Using the file structure, scheme and patterns you already know.
        </p>
        <div class="row">
            <div class="col-xs-6">
                <pre>
                    <code class="php">
single/
    app/
        controllers/
        models/
        views/
    public/
        css/
        img/
        js/

                    </code>
                </pre>
            </div>
            <div class="col-xs-6">
                <pre>
                    <code class="php">
multiple/
     apps/
       frontend/
          controllers/
          models/
          views/
          Module.php
       backend/
          controllers/
          models/
          views/
          Module.php
       public/
       ../
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample basic_features_code code_di" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('dependency_injection') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            <?= $this->locale->translate('dependency_injection_1') ?>
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
//<?= $this->locale->translate('dependency_injection_2') ?>

$di = new Phalcon\DI();

//<?= $this->locale->translate('dependency_injection_3') ?>

$di->set("request", new Phalcon\Http\Request());

..

//<?= $this->locale->translate('dependency_injection_4') ?>

$request = $di->getShared("request");
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample basic_features_code code_rest" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('restful_services') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            <?= $this->locale->translate('restful_services_1') ?>
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Micro;

$app = new Micro();

// <?= $this->locale->translate('restful_services_2') ?>

$app->get('/check/status', function () {
    return $this->response->setJsonContent([
        "status" => "important"
    ]);
});

$app->handle();
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample basic_features_code code_autoloader" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('auto_loader') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Register namespaces, prefixes, directories or classes. Take advantage of the autoloader events and maintain full control
            over what files are loaded and from where.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Loader;

// Creates the autoloader
$loader = new Loader();

// Register some namespaces
$loader->registerNamespaces(
    array(
       "Example\Base"    => "vendor/example/base/",
       "Example\Adapter" => "vendor/example/adapter/",
       "Example"         => "vendor/example/"
    )
);

// Register autoloader
$loader->register();
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample basic_features_code code_router" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('router') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            <?= $this->locale->translate('router_1') ?>
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
// <?= $this->locale->translate('router_2') ?>

$router = new \Phalcon\Mvc\Router();

// <?= $this->locale->translate('router_3') ?>

$router->add(
   "/admin/users/my-profile",
   array(
       "controller" => "users",
       "action"     => "profile",
   )
);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                </div>
                <!-- /End Features Right -->
            </div>
        </div>
    </section>

    <!-- =========================
         Section3 - Features
    ============================== -->
    <section id="feature-section" class="codesamples">
        <div class="container">
            <div class=" col-md-12 white-bg">
                <!-- Features Left -->
                <div class="col-sm-5">
                    <h2 class="verticle-line">
                        Data & storage
                    </h2>
                    <ul class="feature-list">
                        <li class="data_storage orm">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('orm') ?>'
                                     alt='<?= $this->locale->translate('orm') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('orm') ?></h3>
                                <p>
                                    <?= $this->locale->translate('orm_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="data_storage phql">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('phql') ?>'
                                     alt='<?= $this->locale->translate('phql') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('phql') ?></h3>
                                <p>
                                    <?= $this->locale->translate('phql_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="data_storage odm">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('odm_for_mongo') ?>'
                                     alt='<?= $this->locale->translate('odm_for_mongo') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('odm_for_mongo') ?></h3>
                                <p>
                                    <?= $this->locale->translate('odm_for_mongo_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="data_storage transactions">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('transactions') ?>'
                                     alt='<?= $this->locale->translate('transactions') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('transactions') ?></h3>
                                <p>
                                    <?= $this->locale->translate('transactions_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="data_storage cache">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('cache') ?>'
                                     alt='<?= $this->locale->translate('cache') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('cache') ?></h3>
                                <p>
                                    <?= $this->locale->translate('cache_description') ?>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="col-sm-7">
                    <div class="codesample data_storage_code code_orm">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('orm') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            A powerful ORM is provided by Phalcon allowing you to manipulate database records
            as classes and objects. MySQL, PostgreSQL and SQLite are supported out of the box.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Model;

class Robots extends Model
{
    public $id;

    public $name;

    public function initialize()
    {
        $this->hasMany("id", "RobotsParts", "robots_id");
    }
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample data_storage_code code_phql" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('phql') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            PHQL is a high-level, object-oriented SQL dialect that allows to write queries using a standardized SQL-like language. PHQL is implemented as a parser (written in C) that translates syntax in that of the target RDBMS.
            To achieve the highest performance possible, Phalcon provides a parser that uses the same technology as SQLite. This technology provides a small in-memory parser with a very low memory footprint that is also thread-safe.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
$phql  = "SELECT * FROM Formula\Cars ORDER BY Formula\Cars.name";
$query = $manager->createQuery($phql);

$phql  = "SELECT Formula\Cars.name FROM Formula\Cars ORDER BY Formula\Cars.name";
$query = $manager->createQuery($phql);

$phql  = "SELECT c.name FROM Formula\Cars c ORDER BY c.name";
$query = $manager->createQuery($phql);

$phql = "SELECT c.* FROM Cars AS c ORDER BY c.name";
$cars = $manager->executeQuery($phql);
foreach ($cars as $car) {
    echo "Name: ", $car->name, "\n";
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample data_storage_code code_odm" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('odm_for_mongo') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            In addition to its ability to map tables in relational databases, Phalcon can map documents to a MongoDB database.
            The ODM offers a CRUD functionality, events, validations among other services.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
// How many robots are there?
$robots = Robots::find();
echo "There are ", count($robots), "\n";

// How many mechanical robots are there?
$robots = Robots::find(
    array(
        array(
            "type" => "mechanical"
        )
    )
);
echo "There are ", count($robots), "\n";
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample data_storage_code code_transactions" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('transactions') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            When a process performs multiple database operations, it might be important that each step is completed successfully so that data integrity can be maintained. Transactions offer the ability to ensure that all database operations have been executed successfully before the data is committed to the database.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Model\Transaction\Failed as TxFailed;
use Phalcon\Mvc\Model\Transaction\Manager as TxManager;

try {

    // Create a transaction manager
    $manager     = new TxManager();

    // Request a transaction
    $transaction = $manager->get();

    // Get the robots to be deleted
    foreach (Robots::find("type = 'mechanical'") as $robot) {
        $robot->setTransaction($transaction);
        if ($robot->delete() == false) {
            // Something's gone wrong, we should rollback the transaction
            foreach ($robot->getMessages() as $message) {
                $transaction->rollback($message->getMessage());
            }
        }
    }

    // Everything's gone fine, let's commit the transaction
    $transaction->commit();

    echo "Robots were deleted successfully!";

} catch (TxFailed $e) {
    echo "Failed, reason: ", $e->getMessage();
}
</code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample data_storage_code code_cache" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('cache') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            The cache component allows faster access to frequently used or already processed data. It supports many
            backends such as Redis, Memcached, Mongo, Files, Apc and more
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Cache\Frontend\Data as FrontendData;
use Phalcon\Cache\Backend\Memcache as BackendMemcache;

// Set the models cache service
$di->set('modelsCache', function () {

    // Cache data for one day by default
    $frontCache = new FrontendData(
        array(
            "lifetime" => 86400
        )
    );

    // Memcached connection settings
    $cache = new BackendMemcache(
        $frontCache,
        array(
            "host" => "localhost",
            "port" => "11211"
        )
    );

    return $cache;
});
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                </div>
            </div>
        </div>
    </section>

    <!-- =========================
         Section3 - Features
    ============================== -->
    <section id="feature-section" class="codesamples">
        <div class="container">
            <div class=" col-md-12 white-bg">
                <!-- Features Left -->
                <div class="col-sm-5">

                    <h2 class="verticle-line">
                        <?= $this->locale->translate('views_and_frontend') ?>
                    </h2>

                    <ul class="feature-list">
                        <li class="views_front_end templates">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('template_engines') ?>'
                                     alt='<?= $this->locale->translate('template_engines') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('template_engines') ?></h3>
                                <p>
                                    <?= $this->locale->translate('template_engines_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="views_front_end volt">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('template_engine_volt') ?>'
                                     alt='<?= $this->locale->translate('template_engine_volt') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>
                                    <?= $this->locale->translate('template_engine_volt') ?>
                                </h3>
                                <p>
                                    <?= $this->locale->translate('template_engine_volt_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="views_front_end i18n">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('i18n') ?>'
                                     alt='<?= $this->locale->translate('i18n') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('i18n') ?></h3>
                                <p>
                                    <?= $this->locale->translate('i18n_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="views_front_end forms">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('forms_builder') ?>'
                                     alt='<?= $this->locale->translate('forms_builder') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>
                                    <?= $this->locale->translate('forms_builder') ?>
                                </h3>
                                <p>
                                    <?= $this->locale->translate('forms_builder_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="views_front_end flash">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('flash_messages') ?>'
                                     alt='<?= $this->locale->translate('flash_messages') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>
                                    <?= $this->locale->translate('flash_messages') ?>
                                </h3>
                                <p>
                                    <?= $this->locale->translate('flash_messages_description') ?>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- /End Features Left -->

                <!-- Features Right -->
                <div class="col-sm-7">
                    <div class="codesample views_front_end_code code_templates">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('template_engines') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Views represent the user interface of your application. Views are often HTML files with embedded PHP
            code that perform tasks related solely to the presentation of the data. Views handle the job of providing
            data to the web browser or other tool that is used to make requests from your application.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="html">
<?= $this->escaper->escapeHtml('<html>
    <body>
    <div class=\'top\'><?php $this->partial(\'shared/ad_banner\'); ?></div>
    <div class=\'content\'>
        <h1>Robots</h1>
        <p>Check out our specials for robots:</p>
        ...
    </div>
    <div class=\'footer\'><?php $this->partial(\'shared/footer\'); ?></div>
    </body>
</html>') ?>
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample views_front_end_code code_volt" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('template_engine_volt') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Volt is an ultra-fast and designer friendly templating language written in Zephir/C for PHP. It provides you a set of helpers 
            to write views in an easy way. Volt is highly integrated with other components of Phalcon,
            just as you can use it as a stand-alone component in your applications.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
<?= $this->escaper->escapeHtml('{# app/views/products/show.volt #}') ?>

<?= $this->escaper->escapeHtml('{% block last_products %}') ?>

<?= $this->escaper->escapeHtml('{% for product in products %}') ?>

    <?= $this->escaper->escapeHtml('* Name: {{ product.name|e }}') ?>

    <?= $this->escaper->escapeHtml('{% if product.status == \'Active\' %}') ?>

       <?= $this->escaper->escapeHtml('Price: {{ product.price + product.taxes/100}}') ?>

    <?= $this->escaper->escapeHtml('{% endif  %}') ?>

<?= $this->escaper->escapeHtml('{% endfor  %}') ?>

<?= $this->escaper->escapeHtml('{% endblock %}') ?>
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample views_front_end_code code_i18n"  style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('i18n') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            The component Phalcon\Translate aids in creating multilingual applications. Applications using this component, display content in different languages, based on the user’s chosen language supported by the application.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
// app/messages/es.php
$messages = array(
    "hi"      => "Hello",
    "bye"     => "Good Bye",
    "hi-name" => "Hello %name%",
    "song"    => "This song is %song%"
);

use Phalcon\Mvc\Controller;
use Phalcon\Translate\Adapter\NativeArray;

//UserController.php
class UserController extends Controller
{
    protected function getTranslation()
    {
        // Ask browser what is the best language
        $language = $this->request->getBestLanguage();

        // Check if we have a translation file for that lang
        if (file_exists("app/messages/" . $language . ".php")) {
            require "app/messages/" . $language . ".php";
        } else {
            // Fallback to some default
            require "app/messages/en.php";
        }

        // Return a translation object
        return new NativeArray(
            array(
                "content" => $messages
            )
        );
    }

    public function indexAction()
    {
        $this->view->name = "Mike";
        $this->view->t    = $this->getTranslation();
    }
}
//user.volt
<?= $this->escaper->escapeHtml('<p><?php') ?> echo $t->_("hi"), " ", $name; <?= $this->escaper->escapeHtml('?></p>') ?>
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample views_front_end_code code_forms" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('forms_builder') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Each element in the form can be rendered as required by the developer. Internally, Phalcon\Tag is used to produce the correct HTML
            for each element and you can pass additional HTML attributes as the second parameter of render():
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Select;

$form = new Form();

$form->add(new Text("name"));

$form->add(new Text("telephone"));

$form->add(
    new Select(
        "telephoneType",
        array(
            'H' => 'Home',
            'C' => 'Cell'
        )
    )
);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample views_front_end_code code_flash" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('flash_messages') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Use the flash notifier to show notifications to a user in a web application:
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function saveAction()
    {
        $this->flash->error("too bad! the form had errors");
        $this->flash->success("yes!, everything went very smoothly");
        $this->flash->notice("this a very important information");
        $this->flash->warning("best check yo self, you're not looking too good.");
    }
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                </div>
                <!-- /End Features Right -->
            </div>
        </div>
    </section>

    <!-- =========================
         Section3 - Features
    ============================== -->
    <section id="feature-section" class="codesamples">
        <div class="container">
            <div class=" col-md-12 white-bg">
                <!-- Features Left -->
                <div class="col-sm-5">
                    <h2 class="verticle-line"><?= $this->locale->translate('more') ?></h2>

                    <ul class="feature-list">
                        <li class="more_components acl">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('acl') ?>'
                                     alt='<?= $this->locale->translate('acl') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('acl') ?></h3>
                                <p>
                                    <?= $this->locale->translate('acl_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="more_components sharding">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('sharding') ?>'
                                     alt='<?= $this->locale->translate('sharding') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('sharding') ?></h3>
                                <p>
                                    <?= $this->locale->translate('sharding_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="more_components crypt">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('crypt') ?>'
                                     alt='<?= $this->locale->translate('crypt') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('crypt') ?></h3>
                                <p>
                                    <?= $this->locale->translate('crypt_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="more_components events">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('events') ?>'
                                     alt='<?= $this->locale->translate('events') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('events') ?></h3>
                                <p>
                                    <?= $this->locale->translate('events_description') ?>
                                </p>
                            </div>
                        </li>
                        <li class="more_components queueing">
                            <div class="feature-bullet">
                                <img src='<?= $cdnUrl . 'images/favorite.png' ?>'
                                     title='<?= $this->locale->translate('queueing') ?>'
                                     alt='<?= $this->locale->translate('queueing') ?>'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3><?= $this->locale->translate('queueing') ?></h3>
                                <p>
                                    <?= $this->locale->translate('queueing_description') ?>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- /End Features Left -->

                <!-- Features Right -->
                <div class="col-sm-7">
                    <div class="codesample more_components_code code_acl">
    <div class="codesample-header">
        <h3>
            <?= Phalcon\Text::upper($this->locale->translate('acl')) ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            This is how you can built the access control list (ACL):
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Acl;
use Phalcon\Acl\Role;
use Phalcon\Acl\Adapter\Memory as AclList;

// Create the ACL
$acl = new AclList();

// The default action is DENY access
$acl->setDefaultAction(Acl::DENY);

// Register two roles, Users is registered users
// and guests are users without a defined identity
$roles = array(
    'users'  => new Role('Users'),
    'guests' => new Role('Guests')
);

foreach ($roles as $role) {
    $acl->addRole($role);
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample more_components_code code_sharding" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('sharding') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Attach models to different database 
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Db\Adapter\Pdo\Mysql as MysqlPdo;
use Phalcon\Db\Adapter\Pdo\PostgreSQL as PostgreSQLPdo;

// This service returns a MySQL database
$di->set('dbMysql', function () {
    return new MysqlPdo(
        array(
            "host"     => "localhost",
            "username" => "root",
            "password" => "secret",
            "dbname"   => "invo"
        )
    );
});

// This service returns a PostgreSQL database
$di->set('dbPostgres', function () {
    return new PostgreSQLPdo(
        array(
            "host"     => "localhost",
            "username" => "postgres",
            "password" => "",
            "dbname"   => "invo"
        )
    );
});
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample more_components_code code_crypt" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('encryption') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Phalcon provides encryption facilities via the Phalcon\Crypt component. This class offers simple object-oriented
            wrappers to the openssl PHP’s encryption library.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Crypt;

// Create an instance
$crypt     = new Crypt();

$key       = 'This is a secret key (32 bytes).';
$text      = 'This is the text that you want to encrypt.';

$encrypted = $crypt->encrypt($text, $key);

echo $crypt->decrypt($encrypted, $key);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample more_components_code code_events" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('events_management') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            An EventsManager allows us to attach listeners to a particular type of event.
            The type that interests us now is “dispatch”. The following code filters all events produced by the Dispatcher:
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Dispatcher;
use Phalcon\Events\Manager as EventsManager;

$di->set('dispatcher', function () {

    // Create an events manager
    $eventsManager = new EventsManager();

    // Listen for events produced in the dispatcher using the Security plugin
    $eventsManager->attach('dispatch:beforeExecuteRoute', new SecurityPlugin);

    // Handle exceptions and not-found exceptions using NotFoundPlugin
    $eventsManager->attach('dispatch:beforeException', new NotFoundPlugin);

    $dispatcher = new Dispatcher();

    // Assign the events manager to the dispatcher
    $dispatcher->setEventsManager($eventsManager);

    return $dispatcher;
});
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                    <div class="codesample more_components_code code_queueing" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('queueing') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Activities like processing videos, resizing images or sending emails aren’t suitable to be executed online or
            in real time because it may slow the loading time of pages and severely impact the user experience.

            The best solution here is to implement background jobs. The web application puts jobs
            into a queue and which will be processed separately.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Queue\Beanstalk;
                        
// Connect to the queue
$queue = new Beanstalk(
    array(
        'host' => '192.168.0.21',
        'port' => '11300'
    )
);

// Insert the job in the queue
$queue->put(
    array(
        'processVideo' => 4871
    )
);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>

                </div>
                <!-- /End Features Right -->
            </div>
        </div>
    </section>

    <!-- =========================
         Section4 - Design
    ============================== -->
    <section>
        <div class="container">
            <div class="col-md-12 red-bg">

                <!-- HEADING -->
                <h2><?= $this->locale->translate('polling_app') ?></h2>
                <p><?= $this->locale->translate('watch_demo') ?></p>
                <div class="separator"></div>

                <!-- Video -->
                <div class="video-img"><img alt="" src="<?= $cdnUrl ?>images/flat_v3/laptop.png">
                    <div class="video">
                        <iframe src="https://player.vimeo.com/video/63022489?color=ffffff" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- =========================
         Section5 - Benefits
    ============================== -->
    <section>
        <div class="container">
            <div class="white-bg">

                <!-- Section Heading -->
                <h2>
                    <?= $this->locale->translate('sponsored_by') ?>
                </h2>
                <br>

                <a href="https://pdffiller.com/">
                    <img src="<?= $cdnUrl ?>images/backers/pdffiller-240x60.png">
                </a>

                <a href="https://mctekk.com/">
                    <img src="<?= $cdnUrl ?>images/backers/mctekk-240x60.png">
                </a>

                <a href="https://abits.com/">
                    <img src="<?= $cdnUrl ?>images/backers/abits-240x60.png">
                </a>

            </div>
        </div>
    </section>

    <!-- =========================
         Section5 - Contributors
    ============================== -->
    <section>
        <div class="container">
            <div class="white-bg">

                <!-- Section Heading -->
                <h2>
                    <?= $this->locale->translate('join_our_community') ?>
                </h2>
                <p>
                    <?= $this->locale->translate('join_our_community_description') ?>
                </p>
                <br>
                <div class="clearfix">

                    <!-- Benefit1 -->
                    <div class="col-md-4 community">
                        <a href="https://forum.phalconphp.com/">
                            <div class="benifit-icon">
                                <img alt=""
                                     src="<?= $cdnUrl ?>images/chat.png"
                                     width="60"
                                     height="60">
                            </div>
                            <h3>
                                <?= $this->locale->translate('forum') ?>
                            </h3>
                        </a>
                    </div>

                    <div class="col-md-4 community">
                        <a href="https://github.com/phalcon/cphalcon">
                            <div class="benifit-icon">
                                <img alt=""
                                     src="<?= $cdnUrl ?>images/github_black.png"
                                     width="60"
                                     height="60"
                                     style="border-radius: 25px;">
                            </div>
                            <h3>
                                <?= $this->locale->translate('github') ?>
                            </h3>
                        </a>
                    </div>
                    <!-- /End Benefit1 -->

                    <!-- Benefit2 -->
                    <div class="col-md-4 community">
                        <a href="http://stackoverflow.com/questions/tagged/phalcon">
                            <div class="benifit-icon">
                                <img alt=""
                                     src="<?= $cdnUrl ?>images/stackoverflow.png"
                                     width="60"
                                     height="60"
                                     style="border-radius: 25px;">
                            </div>
                            <h3>
                                <?= $this->locale->translate('stack_overflow') ?>
                            </h3>
                        </a>
                    </div>
                    <!-- /End Benefit2 -->
                </div>
            </div>
        </div>
    </section>

    <!-- =========================
         Section7 - Clients
    ============================== -->
    <section>
        <div class="container">
            <div class="col-md-12 white-bg">
                <h2><?= $this->locale->translate('contributors') ?></h2>
                <p>
                    <?= $this->locale->translate('contributors_description') ?>
                </p>
                <?= $this->partial('partials/contributors') ?>
            </div>
        </div>
    </section>





<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 col-sm-3">
                <h4><?= $this->locale->translate('download') ?></h4>
                <ul>
                    <li><a href="/download"><?= $this->locale->translate('installing_phalcon_php') ?></a></li>
                    <li><a href="<?= $docsRoot ?>index.html" class="header-nav-link" target="_blank"><?= $this->locale->translate('documentation') ?></a></li>
                    <li><a href="http://api.phalconphp.com">API</a></li>
                    <li><a href="<?= $docsRoot ?>reference/tutorial.html"><?= $this->locale->translate('tutorial') ?></a></li>
                    <li><a href="<?= $docsRoot ?>reference/tutorial.html#sample-applications"><?= $this->locale->translate('sample_applications') ?></a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-3">
                <h4><?= $this->locale->translate('community') ?></h4>
                <ul>
                    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('forum') ?></a></li>
                    <li><a href="https://github.com/phalcon/cphalcon">GitHub</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon/issues"><?= $this->locale->translate('issue_tracker') ?></a></li>
                    <li><a href="http://stackoverflow.com/questions/tagged/phalcon"><?= $this->locale->translate('stack_overflow') ?></a></li>
                    
                    <li><a href="http://builtwith.phalconphp.com/"><?= $this->locale->translate('built_with_phalcon') ?></a></li>
                    <li><a href="http://store.phalconphp.com/"><?= $this->locale->translate('store') ?></a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-2">
                <h4><?= $this->locale->translate('about') ?></h4>
                <ul>
                    <li><a class="link-black" href="http://blog.phalconphp.com/"><?= $this->locale->translate('blog') ?></a></li>
                    
                    
                    
                    
                    
                    
                </ul>
            </div>
            <div id="license-spaccer" class="visible-xs"></div>
            <div id="license-wrapper" class="col-xs-12 col-sm-4">
                <p class="license">
                    <?= $this->locale->translate('license_new_bsd') ?>
                </p>
            </div>
        </div>
    </div>
</footer>


    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/jquery.lazyload.min.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/jquery.magnific-popup.min.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/highlight.pack.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/jquery.ajaxchimp.min.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/jquery.backstretch.min.js"></script>
    <script src="<?= $cdnUrl ?>js/custom.js"></script>
</body>
</html>

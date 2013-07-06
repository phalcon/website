<div class="header-line" xmlns="http://www.w3.org/1999/html">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">Hosting</h1>
    </div>
</div>
<div class="size-wrap">

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
<div class="section" id="id1">
<h1>Работа с Моделями<a class="headerlink" href="#id1" title="Ссылка на этот заголовок">¶</a></h1>

<p>Модель представляет собой информацию (данные) приложения и правила для манипуляции этими данными. Модели в основном используются для управления правилами
    взаимодействия с соответствующими таблицами базы данных. В большинстве случаев, каждая таблица в вашей базе данных соответствует одной модели в вашем приложении.
    Большая часть всей бизнес-логики вашего приложения будет сосредоточена в моделях.</p>

<p><a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> является родительским классом для всех моделей в вашем приложении Phalcon. Он обеспечивает
    независимость данных
    от вашей базы, основные CRUD операции, расширенные поисковые возможности, а также возможность построения зависимостей между моделями.
    <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> исключает необходимость использования SQL запросов, потому как данный класс динамически переводит
    методы на соответствующие им операции СУБД.</p>
<blockquote class="highlights">
    <div>Модели предназначены для работы с базой данных на высшем уровне абстракции. Если вы испытваете потребность в работе с базой данных на низшем уровне, обратитесь к документации
        компонента <a class="reference internal" href="../api/Phalcon_Db.html"><em>Phalcon\Db</em></a>.
    </div>
</blockquote>
<div class="section" id="id2">
    <h2>Создание Модели<a class="headerlink" href="#id2" title="Ссылка на этот заголовок">¶</a></h2>

    <p>Модель это класс, который расширяет <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a>. Файл с моделью должен быть помещен в директорию models.
        Файл должен содержать только один класс; его имя должно быть записано в CamelCase стиле.</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Пример выше демонстрирует реализацию модели &#8220;Robots&#8221;. Обратите внимание, что класс Robots наследуется от <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a>.
        Данный компонент предоставляет большой набор функционала для модели, которая наследует его, включая основные операции CRUD (Create, Read, Update, Destroy),
        валидацию данных, а также поддержку усложненного поиска и возможность связывать несколько моделей друг с другом.</p>
    <blockquote class="highlights">
        <div>Если вы используете PHP 5.4 рекомендованно объявлять каждый столбец базы данных, который входит в модель в целях экономии памяти и
            уменьшения выделения памяти на выполнение.
        </div>
    </blockquote>
    <p>По умолчанию модель &#8220;Robots&#8221; будет ссылаться на таблицу &#8216;robots&#8217;. Если вы захотите вручную указать другое имя для маппинга таблицы,
        вы можете использовать метод getSource():</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">getSource</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">return</span> <span class="s2">&quot;the_robots&quot;</span><span class="p">;</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Теперь модель Robots маппирует (использует) таблицу &#8220;the_robots&#8221;. Метод initialize() помогает в создании модели с пользовательским поведением, т.е. использовании другой таблицы.
        Метод initialize() вызывает лишь однажды во время запроса.</p>
</div>
<div class="section" id="id3">
    <h2>Модели в Пространствах Имен<a class="headerlink" href="#id3" title="Ссылка на этот заголовок">¶</a></h2>

    <p>Пространства имен могут быть использованы во избежание конфликтов, связанных с именами классов. В этих случаях, необходимо указывать имя соответствующей таблицы базы данных используя метод
        getSource:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">namespace</span> <span class="nx">Store\Toys</span><span class="p">;</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">getSource</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">return</span> <span class="s2">&quot;robots&quot;</span><span class="p">;</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="id4">
    <h2>Понимание Записей В Объектах<a class="headerlink" href="#id4" title="Ссылка на этот заголовок">¶</a></h2>

    <p>Каждый экземпляр объекта модели представляет собой строку таблицы базы данных. Вы можете легко получить доступ к любой записи, считывая свойство объекта.
        К примеру, для таблицы &#8220;robots&#8221; с записями:</p>

    <div class="highlight-bash">
        <div class="highlight"><pre>mysql&gt; <span class="k">select</span> * from robots;
+----+------------+------------+------+
| id | name       | <span class="nb">type</span>       | year |
+----+------------+------------+------+
|  1 | Robotina   | mechanical | 1972 |
|  2 | Astro Boy  | mechanical | 1952 |
|  3 | Terminator | cyborg     | 2029 |
+----+------------+------------+------+
3 строки в наборе <span class="o">(</span>0,00 сек<span class="o">)</span>
</pre>
        </div>
    </div>
    <p>Вы можете найти опеределенную запись по ее первичному ключу и напечатать ее имя:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// Find record with id = 3</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="mi">3</span><span
                        class="p">);</span>

<span class="c1">// Печатать &quot;Terminator&quot;</span>
<span class="k">echo</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span><span class="p">;</span>
</pre>
        </div>
    </div>
    <p>Как только запись будет зарезервирована в памяти, мы можете производить изменения ее данных, а затем сохранить изменения.</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="mi">3</span><span
                        class="p">);</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s2">&quot;RoboCop&quot;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">();</span>
</pre>
        </div>
    </div>
    <p>Как вы можете видеть, нет никакой необходимости в использовании необработанных SQL запросов. <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a>
        предоставляет высший уровень абстракции базы данных для веб-приложений.</p>
</div>
<div class="section" id="id5">
<h2>Поиск записей<a class="headerlink" href="#id5" title="Ссылка на этот заголовок">¶</a></h2>

<p><a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> также предлагает несколько методов для выборки записей. В следующем примере мы покажем вам как
    запросить одну или несколько записей из модели:</p>

<div class="highlight-php">
    <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// How many robots are there?</span>
<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">();</span>
<span class="k">echo</span> <span class="s2">&quot;There are &quot;</span><span class="p">,</span> <span class="nb">count</span><span class="p">(</span><span class="nv">$robots</span><span class="p">),</span> <span
                    class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>

<span class="c1">// How many mechanical robots are there?</span>
<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="s2">&quot;type = &#39;mechanical&#39;&quot;</span><span
                    class="p">);</span>
<span class="k">echo</span> <span class="s2">&quot;There are &quot;</span><span class="p">,</span> <span class="nb">count</span><span class="p">(</span><span class="nv">$robots</span><span class="p">),</span> <span
                    class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>

<span class="c1">// Get and print virtual robots ordered by name</span>
<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="k">array</span><span
                    class="p">(</span>
    <span class="s2">&quot;type = &#39;virtual&#39;&quot;</span><span class="p">,</span>
    <span class="s2">&quot;order&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;name&quot;</span>
<span class="p">));</span>
<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span><span class="p">,</span> <span class="s2">&quot;</span><span
                    class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
<span class="p">}</span>

<span class="c1">// Get first 100 virtual robots ordered by name</span>
<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="k">array</span><span
                    class="p">(</span>
    <span class="s2">&quot;type = &#39;virtual&#39;&quot;</span><span class="p">,</span>
    <span class="s2">&quot;order&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;name&quot;</span><span class="p">,</span>
    <span class="s2">&quot;limit&quot;</span> <span class="o">=&gt;</span> <span class="mi">100</span>
<span class="p">));</span>
<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
   <span class="k">echo</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span><span class="p">,</span> <span class="s2">&quot;</span><span
                    class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
<span class="p">}</span>
</pre>
    </div>
</div>
<p>Вы также можете использовать метод findFirst(), чтобы получить только первую запись для данного критерия:</p>

<div class="highlight-php">
    <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// What&#39;s the first robot in robots table?</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">();</span>
<span class="k">echo</span> <span class="s2">&quot;The robot name is &quot;</span><span class="p">,</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span><span
                    class="p">,</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>

<span class="c1">// What&#39;s the first mechanical robot in robots table?</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="s2">&quot;type = &#39;mechanical&#39;&quot;</span><span
                    class="p">);</span>
<span class="k">echo</span> <span class="s2">&quot;The first mechanical robot name is &quot;</span><span class="p">,</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span><span
                    class="p">,</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>

<span class="c1">// Get first virtual robot ordered by name</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span
                    class="k">array</span><span class="p">(</span><span class="s2">&quot;type = &#39;virtual&#39;&quot;</span><span class="p">,</span> <span class="s2">&quot;order&quot;</span> <span
                    class="o">=&gt;</span> <span class="s2">&quot;name&quot;</span><span class="p">));</span>
<span class="k">echo</span> <span class="s2">&quot;The first virtual robot name is &quot;</span><span class="p">,</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span
                    class="na">name</span><span class="p">,</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
</pre>
    </div>
</div>
<p>Оба метода find() и findFirst() принимают ассоциативный массив, определяющий критерии поиска:</p>

<div class="highlight-php">
    <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span>
    <span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;type = &#39;virtual&#39;&quot;</span><span class="p">,</span>
        <span class="s2">&quot;order&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;name DESC&quot;</span><span class="p">,</span>
        <span class="s2">&quot;limit&quot;</span> <span class="o">=&gt;</span> <span class="mi">30</span>
    <span class="p">)</span>
<span class="p">);</span>

<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span>
    <span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;conditions&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;type = ?1&quot;</span><span class="p">,</span>
        <span class="s2">&quot;bind&quot;</span>       <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span><span class="mi">1</span> <span class="o">=&gt;</span> <span
                    class="s2">&quot;virtual&quot;</span><span class="p">)</span>
    <span class="p">)</span>
<span class="p">);</span>
</pre>
    </div>
</div>
<p>Доступные параметры запроса:</p>
<table border="1" class="docutils">
    <colgroup>
        <col width="4%"/>
        <col width="71%"/>
        <col width="25%"/>
    </colgroup>
    <thead valign="bottom">
    <tr class="row-odd">
        <th class="head">Parameter</th>
        <th class="head">Description</th>
        <th class="head">Пример</th>
    </tr>
    </thead>
    <tbody valign="top">
    <tr class="row-even">
        <td>conditions</td>
        <td>Условие поиска. Он используется для выделения только тех записей, которые полностью удовлетворяют условиям поиска. По умолчанию Phalcon\Mvc\Model предполагает что первый параметр является
            условием поиска
        </td>
        <td>&#8220;conditions&#8221; =&gt; &#8220;name LIKE &#8216;steve%&#8217;&#8221;</td>
    </tr>
    <tr class="row-odd">
        <td>columns</td>
        <td>Используется для указания списка столбцов возвращаемого в модели. Объект будет не полным при использовании этого параметра</td>
        <td>&#8220;columns&#8221; =&gt; &#8220;id, name&#8221;</td>
    </tr>
    <tr class="row-even">
        <td>bind</td>
        <td>Используется вместе с условием поиск, он заменяет указатели, освобождает значения для увеличения безопасности</td>
        <td>&#8220;bind&#8221; =&gt; array(&#8220;status&#8221; =&gt; &#8220;A&#8221;, &#8220;type&#8221; =&gt; &#8220;some-time&#8221;)</td>
    </tr>
    <tr class="row-odd">
        <td>bindTypes</td>
        <td>При использовании связующих указателей вы можете использовать этот параметр, для указания типа данных, что еще больше увеличит безопасность</td>
        <td>&#8220;bindTypes&#8221; =&gt; array(Column::BIND_TYPE_STR, Column::BIND_TYPE_INT)</td>
    </tr>
    <tr class="row-even">
        <td>order</td>
        <td>Используется для сортировки результатов. Можно использовать несколько полей через запятую</td>
        <td>&#8220;order&#8221; =&gt; &#8220;name DESC, status&#8221;</td>
    </tr>
    <tr class="row-odd">
        <td>limit</td>
        <td>Огарничивает результаты запроса.</td>
        <td>&#8220;limit&#8221; =&gt; 10 / &#8220;limit&#8221; =&gt; array(&#8220;number&#8221; =&gt; 10, &#8220;offset&#8221; =&gt; 5)</td>
    </tr>
    <tr class="row-even">
        <td>group</td>
        <td>Позволяет собирать данные на несколько записей и групп результатов по одному или нескольким столбцам</td>
        <td>&#8220;group&#8221; =&gt; &#8220;name, status&#8221;</td>
    </tr>
    <tr class="row-odd">
        <td>for_update</td>
        <td>С этой опцией, <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> читает последние достпуные данные, устанавливает исключительные блокировки
            на каждую прочтенную запись
        </td>
        <td>&#8220;for_update&#8221; =&gt; true</td>
    </tr>
    <tr class="row-even">
        <td>shared_lock</td>
        <td>С этой опцией, <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> читает последние достпуные данные, устанавливает общие блокировки на каждую
            прочтенную запись
        </td>
        <td>&#8220;shared_lock&#8221; =&gt; true</td>
    </tr>
    <tr class="row-odd">
        <td>cache</td>
        <td>Кэширует результаты, уменьшая нагрузку на реляционну систему.</td>
        <td>&#8220;cache&#8221; =&gt; array(&#8220;lifetime&#8221; =&gt; 3600, &#8220;key&#8221; =&gt; &#8220;my-find-key&#8221;)</td>
    </tr>
    <tr class="row-even">
        <td>hydration</td>
        <td>Sets the hydration strategy to represent each returned record in the result</td>
        <td>&#8220;hydration&#8221; =&gt; Resultset::HYDRATE_OBJECTS</td>
    </tr>
    </tbody>
</table>
<p>Существует еще один вариант записи запросов поиска, в объектно-ориентированном стиле:</p>

<div class="highlight-php">
    <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">query</span><span class="p">()</span>
    <span class="o">-&gt;</span><span class="na">where</span><span class="p">(</span><span class="s2">&quot;type = :type:&quot;</span><span class="p">)</span>
    <span class="o">-&gt;</span><span class="na">andWhere</span><span class="p">(</span><span class="s2">&quot;year &lt; 2000&quot;</span><span class="p">)</span>
    <span class="o">-&gt;</span><span class="na">bind</span><span class="p">(</span><span class="k">array</span><span class="p">(</span><span class="s2">&quot;type&quot;</span> <span
                    class="o">=&gt;</span> <span class="s2">&quot;mechanical&quot;</span><span class="p">))</span>
    <span class="o">-&gt;</span><span class="na">order</span><span class="p">(</span><span class="s2">&quot;name&quot;</span><span class="p">)</span>
    <span class="o">-&gt;</span><span class="na">execute</span><span class="p">();</span>
</pre>
    </div>
</div>
<p>Статический метод query() возвращает <a class="reference internal" href="../api/Phalcon_Mvc_Model_Criteria.html"><em>Phalcon\Mvc\Model\Criteria</em></a> объект, который нормально работает с
    автокомплитом среды разработки.</p>

<p>Все запросы внутри обрабатываются как <a class="reference internal" href="phql.html"><em>PHQL</em></a> запросы. PHQL это высокоуровневый, объектно-ориентированный, SQL подобный язык.
    Этот язык предоставит вам больше возможностей для выполнения запросов, таких как объединение с другими моделями, определение группировок, добавление агрегации и т.д.</p>

<div class="section" id="id6">
    <h3>Возвращение результатов моделью<a class="headerlink" href="#id6" title="Ссылка на этот заголовок">¶</a></h3>

    <p>В то время как findFirst() возвращает непосредственно экземпляр вызванного класса (когда это возвращаемые данные), метод find() возвращает
        <a class="reference internal" href="../api/Phalcon_Mvc_Model_Resultset_Simple.html"><em>Phalcon\Mvc\Model\Resultset\Simple</em></a>. Этот объект включает в себя весь функционал такой как,
        обходы, поиск определенных записей, подсчет и прочее.</p>

    <p>Эти объекты являются более мощными, чем стандартные массивы. Одна из важнейших особенностей <a class="reference internal" href="../api/Phalcon_Mvc_Model_Resultset.html"><em>Phalcon\Mvc\Model\Resultset</em></a>
        является то, что в любой момент времени, в памяти, есть только одна запись. Это очень помогает в управлении памятью особенно при работе с большими объемами данных.</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// Get all robots</span>
<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">();</span>

<span class="c1">// Traversing with a foreach</span>
<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span><span class="p">,</span> <span class="s2">&quot;</span><span
                        class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
<span class="p">}</span>

<span class="c1">// Traversing with a while</span>
<span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">rewind</span><span class="p">();</span>
<span class="k">while</span> <span class="p">(</span><span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">valid</span><span class="p">())</span> <span class="p">{</span>
    <span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">current</span><span class="p">();</span>
    <span class="k">echo</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span><span class="p">,</span> <span class="s2">&quot;</span><span
                        class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
    <span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">next</span><span class="p">();</span>
<span class="p">}</span>

<span class="c1">// Count the resultset</span>
<span class="k">echo</span> <span class="nb">count</span><span class="p">(</span><span class="nv">$robots</span><span class="p">);</span>

<span class="c1">// Alternative way to count the resultset</span>
<span class="k">echo</span> <span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">count</span><span class="p">();</span>

<span class="c1">// Move the internal cursor to the third robot</span>
<span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">seek</span><span class="p">(</span><span class="mi">2</span><span class="p">);</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">current</span><span class="p">()</span>

<span class="c1">// Access a robot by its position in the resultset</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robots</span><span class="p">[</span><span class="mi">5</span><span class="p">];</span>

<span class="c1">// Check if there is a record in certain position</span>
<span class="k">if</span> <span class="p">(</span><span class="nb">isset</span><span class="p">(</span><span class="nv">$robots</span><span class="p">[</span><span class="mi">3</span><span class="p">])</span> <span
                        class="p">{</span>
   <span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robots</span><span class="p">[</span><span class="mi">3</span><span class="p">];</span>
<span class="p">}</span>

<span class="c1">// Get the first record in the resultset</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">getFirst</span><span class="p">();</span>

<span class="c1">// Get the last record</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">getLast</span><span class="p">();</span>
</pre>
        </div>
    </div>
    <p>Набор результатов в Phalcon эмулирует перемещение курсора, вы можете получить любую строку указав её позицию или найти внутренний указатель для определенной позиции.
        Обратите внимание, что некоторые системы баз данных не поддерживают курсоры с прокруткой, это заставляет базу данных повторно выполнить запрос
        для того, чтобы перемотать курсор в начало и получить запись в нужную позицию.
        Аналогично, если набор результатов вызывается несколько раз, запрос должен быть выполнен такое же количество раз.</p>

    <p>Хранение больших результатов запроса в памяти может потребовать много ресурсов, из-за этого наборы результатов получаются
        из базы данных блоками по 32 строк снижая потребность в повторном выполнении запроса в ряде случаев экономя память.</p>

    <p>Обратите внимание, что наборы результатов могут быть сериализованы и хранится в кэше бэкэнда. <a class="reference internal" href="cache.html"><em>Phalcon\Cache</em></a> может помочь с этой
        задачей.
        Тем не менее, сериализация данных вызывает <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> для получения всех данных из базы данных в массив,
        таким образом, потребление памяти увеличивается.</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// Query all records from model parts</span>
<span class="nv">$parts</span> <span class="o">=</span> <span class="nx">Parts</span><span class="o">::</span><span class="na">find</span><span class="p">();</span>

<span class="c1">// Store the resultset into a file</span>
<span class="nb">file_put_contents</span><span class="p">(</span><span class="s2">&quot;cache.txt&quot;</span><span class="p">,</span> <span class="nb">serialize</span><span class="p">(</span><span
                        class="nv">$parts</span><span class="p">));</span>

<span class="c1">// Get parts from file</span>
<span class="nv">$parts</span> <span class="o">=</span> <span class="nb">unserialize</span><span class="p">(</span><span class="nb">file_get_contents</span><span class="p">(</span><span class="s2">&quot;cache.txt&quot;</span><span
                        class="p">));</span>

<span class="c1">// Traverse the parts</span>
<span class="k">foreach</span> <span class="p">(</span><span class="nv">$parts</span> <span class="k">as</span> <span class="nv">$part</span><span class="p">)</span> <span class="p">{</span>
   <span class="k">echo</span> <span class="nv">$part</span><span class="o">-&gt;</span><span class="na">id</span><span class="p">;</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="id7">
    <h3>Привязка параметров<a class="headerlink" href="#id7" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Привязка параметров также поддерживается в <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a>. Использование привязки параметров рекомендуется,
        чтобы исключить возможность SQL инъекции. Привязка параметров поддерживает строки и числа.</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// Query robots binding parameters with string placeholders</span>
<span class="nv">$conditions</span> <span class="o">=</span> <span class="s2">&quot;name = :name: AND type = :type:&quot;</span><span class="p">;</span>

<span class="c1">//Parameters whose keys are the same as placeholders</span>
<span class="nv">$parameters</span> <span class="o">=</span> <span class="k">array</span><span class="p">(</span>
    <span class="s2">&quot;name&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;Robotina&quot;</span><span class="p">,</span>
    <span class="s2">&quot;type&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;maid&quot;</span>
<span class="p">);</span>

<span class="c1">//Perform the query</span>
<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span>
    <span class="nv">$conditions</span><span class="p">,</span>
    <span class="s2">&quot;bind&quot;</span> <span class="o">=&gt;</span> <span class="nv">$parameters</span>
<span class="p">));</span>

<span class="c1">// Query robots binding parameters with integer placeholders</span>
<span class="nv">$conditions</span> <span class="o">=</span> <span class="s2">&quot;name = ?1 AND type = ?2&quot;</span><span class="p">;</span>
<span class="nv">$parameters</span> <span class="o">=</span> <span class="k">array</span><span class="p">(</span><span class="mi">1</span> <span class="o">=&gt;</span> <span class="s2">&quot;Robotina&quot;</span><span
                        class="p">,</span> <span class="mi">2</span> <span class="o">=&gt;</span> <span class="s2">&quot;maid&quot;</span><span class="p">);</span>
<span class="nv">$robots</span>     <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span
                        class="k">array</span><span class="p">(</span>
    <span class="nv">$conditions</span><span class="p">,</span>
    <span class="s2">&quot;bind&quot;</span> <span class="o">=&gt;</span> <span class="nv">$parameters</span>
<span class="p">));</span>

<span class="c1">// Query robots binding parameters with both string and integer placeholders</span>
<span class="nv">$conditions</span> <span class="o">=</span> <span class="s2">&quot;name = :name: AND type = ?1&quot;</span><span class="p">;</span>

<span class="c1">//Parameters whose keys are the same as placeholders</span>
<span class="nv">$parameters</span> <span class="o">=</span> <span class="k">array</span><span class="p">(</span>
    <span class="s2">&quot;name&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;Robotina&quot;</span><span class="p">,</span>
    <span class="mi">1</span> <span class="o">=&gt;</span> <span class="s2">&quot;maid&quot;</span>
<span class="p">);</span>

<span class="c1">//Perform the query</span>
<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span>
    <span class="nv">$conditions</span><span class="p">,</span>
    <span class="s2">&quot;bind&quot;</span> <span class="o">=&gt;</span> <span class="nv">$parameters</span>
<span class="p">));</span>
</pre>
        </div>
    </div>
    <p>При использовании цифровых указателей, необходимо определить их как целые числа, то есть 1 или 2. В этом случае &#8220;1&#8221; или &#8220;2&#8221; считаются строками,
        поэтому указатель не может быть успешно заменен. Строки автоматически изолируются используя <a class="reference external"
                                                                                                       href="http://www.php.net/manual/en/pdo.prepared-statements.php">PDO</a>.
        Эта функция принимает во внимание кодировку соединения с базой данных, поэтому её рекомендуется определять в параметрах соединения или в конфигурации базы данных,
        неправильная кодировка будет приводить к некорректным хранении и извлечении данных.
        Кроме того, вы можете установить параметр &#8220;bindTypes&#8221;, что позволит определить, каким образом параметры должны быть связаны в соответствии с его типом данных:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">\Phalcon\Db\Column</span><span class="p">;</span>

<span class="c1">//Bind parameters</span>
<span class="nv">$parameters</span> <span class="o">=</span> <span class="k">array</span><span class="p">(</span>
    <span class="s2">&quot;name&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;Robotina&quot;</span><span class="p">,</span>
    <span class="s2">&quot;year&quot;</span> <span class="o">=&gt;</span> <span class="mi">2008</span>
<span class="p">);</span>

<span class="c1">//Casting Types</span>
<span class="nv">$types</span> <span class="o">=</span> <span class="k">array</span><span class="p">(</span>
    <span class="s2">&quot;name&quot;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">BIND_PARAM_STR</span><span class="p">,</span>
    <span class="s2">&quot;year&quot;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">BIND_PARAM_INT</span>
<span class="p">);</span>

<span class="c1">// Query robots binding parameters with string placeholders</span>
<span class="nv">$conditions</span> <span class="o">=</span> <span class="s2">&quot;name = :name: AND year = :year:&quot;</span><span class="p">;</span>
<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span>
    <span class="nv">$conditions</span><span class="p">,</span>
    <span class="s2">&quot;bind&quot;</span> <span class="o">=&gt;</span> <span class="nv">$parameters</span><span class="p">,</span>
    <span class="s2">&quot;bindTypes&quot;</span> <span class="o">=&gt;</span> <span class="nv">$types</span>
<span class="p">));</span>
</pre>
        </div>
    </div>
    <p>Поскольку по умолчанию связывание типа это \Phalcon\Db\Column::BIND_TYPE_STR, нет необходимости указывать &#8220;bindTypes&#8221; параметр, если все столбцы этого типа.</p>

    <p>Привязка параметров доступна для всех запросов метода, таких как find() и findFirst(), а так же для методов count(), sum(), average() etc.</p>
</div>
</div>
<div class="section" id="id8">
<h2>Отношения между моделями<a class="headerlink" href="#id8" title="Ссылка на этот заголовок">¶</a></h2>

<p>Существует четыре типа отношений: один-к-одному, один-ко-многим, многие-к-одному и многие-ко-многим.
    Отношения могут быть однонаправленным или двунаправленным, и каждое может быть простым (один модель к одной) или более сложные (комбинация моделей).
    Модель менеджер управляет ограничением внешних ключей для этих отношений, их определение помогает ссылочной целостности,
    а также обеспечивает легкий и быстрый доступ к соответствующей записи в модели.
    Благодаря реализации отношений, легко получить доступ к данным в связных моделях для любой выбранной записи(-ей).</p>

<div class="section" id="id9">
    <h3>Однонаправленные отношения<a class="headerlink" href="#id9" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Однонаправленные отношения это те отношения, которые генерируются в отношении друг к друга, но не наоборот.</p>
</div>
<div class="section" id="id10">
    <h3>Двунаправленные отношений<a class="headerlink" href="#id10" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Двунаправленные отношения создают отношения в обоих моделях, и каждая модель определяет обратную связь от другой.</p>
</div>
<div class="section" id="id11">
    <h3>Определение отношений<a class="headerlink" href="#id11" title="Ссылка на этот заголовок">¶</a></h3>

    <p>В Phalcon, отношения должны быть определены в методе initialize() модели.
        Методы belongsTo(), hasOne() or hasMany() определяют отношения между одним или несколькими полями из текущей модели в поля другой модели.
        Каждый из этих методов требует 3 параметра: local fields, referenced model, referenced fields.</p>
    <table border="1" class="docutils">
        <colgroup>
            <col width="30%"/>
            <col width="70%"/>
        </colgroup>
        <thead valign="bottom">
        <tr class="row-odd">
            <th class="head" colspan="2">Метод | Описание</th>
        </tr>
        </thead>
        <tbody valign="top">
        <tr class="row-even">
            <td>hasMany</td>
            <td>Определяет 1-n отношения</td>
        </tr>
        <tr class="row-odd">
            <td>hasOne</td>
            <td>Определяет 1-1 отношения</td>
        </tr>
        <tr class="row-even">
            <td>belongsTo</td>
            <td>Определяет n-1 отношения</td>
        </tr>
        </tbody>
    </table>
    <p>Следующая схема показывает 3 таблицы, чьи отношения будут служить нам в качестве примера, касающиеся отношений:</p>

    <div class="highlight-sql">
        <div class="highlight"><pre><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="o">`</span><span class="n">robots</span><span class="o">`</span> <span class="p">(</span>
    <span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span> <span class="n">unsigned</span> <span
                        class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span>
    <span class="o">`</span><span class="n">name</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">70</span><span class="p">)</span> <span
                        class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span>
    <span class="o">`</span><span class="k">type</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">32</span><span class="p">)</span> <span
                        class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span>
    <span class="o">`</span><span class="k">year</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span
                        class="k">NULL</span><span class="p">,</span>
    <span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span>
<span class="p">);</span>

<span class="k">CREATE</span> <span class="k">TABLE</span> <span class="o">`</span><span class="n">robots_parts</span><span class="o">`</span> <span class="p">(</span>
    <span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span> <span class="n">unsigned</span> <span
                        class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span>
    <span class="o">`</span><span class="n">robots_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span> <span
                        class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span>
    <span class="o">`</span><span class="n">parts_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span> <span
                        class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span>
    <span class="o">`</span><span class="n">created_at</span><span class="o">`</span> <span class="nb">DATE</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span>
    <span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">),</span>
    <span class="k">KEY</span> <span class="o">`</span><span class="n">robots_id</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">robots_id</span><span
                        class="o">`</span><span class="p">),</span>
    <span class="k">KEY</span> <span class="o">`</span><span class="n">parts_id</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">parts_id</span><span
                        class="o">`</span><span class="p">)</span>
<span class="p">);</span>

<span class="k">CREATE</span> <span class="k">TABLE</span> <span class="o">`</span><span class="n">parts</span><span class="o">`</span> <span class="p">(</span>
    <span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span> <span class="n">unsigned</span> <span
                        class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span>
    <span class="o">`</span><span class="n">name</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">70</span><span class="p">)</span> <span
                        class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span>
    <span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span>
<span class="p">);</span>
</pre>
        </div>
    </div>
    <ul class="simple">
        <li>Модель &#8220;Robots&#8221; имеет несколько &#8220;RobotsParts&#8221;.</li>
        <li>Модель &#8220;Parts&#8221; имеет несколько &#8220;RobotsParts&#8221;.</li>
        <li>Модель &#8220;RobotsParts&#8221; пренадлежит обоим &#8220;Robots&#8221; и &#8220;Parts&#8221; моделям как многие-к-одному.</li>
    </ul>
    <p>Посмотрим EER схему, чтобы лучше понять отношения:</p>

    <div class="figure align-center">
        <img alt="../_images/eer-1.png" src="../_images/eer-1.png"/>
    </div>
    <p>Модели с их отношениями моут быть реализованы следующим образом:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>
    <span class="k">public</span> <span class="nv">$id</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$name</span><span class="p">;</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">hasMany</span><span class="p">(</span><span class="s2">&quot;id&quot;</span><span class="p">,</span> <span class="s2">&quot;RobotsParts&quot;</span><span
                        class="p">,</span> <span class="s2">&quot;robots_id&quot;</span><span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Parts</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="nv">$id</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$name</span><span class="p">;</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">hasMany</span><span class="p">(</span><span class="s2">&quot;id&quot;</span><span class="p">,</span> <span class="s2">&quot;RobotsParts&quot;</span><span
                        class="p">,</span> <span class="s2">&quot;parts_id&quot;</span><span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">RobotsParts</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="nv">$id</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$robots_id</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$parts_id</span><span class="p">;</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">belongsTo</span><span class="p">(</span><span class="s2">&quot;robots_id&quot;</span><span class="p">,</span> <span
                        class="s2">&quot;Robots&quot;</span><span class="p">,</span> <span class="s2">&quot;id&quot;</span><span class="p">);</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">belongsTo</span><span class="p">(</span><span class="s2">&quot;parts_id&quot;</span><span class="p">,</span> <span
                        class="s2">&quot;Parts&quot;</span><span class="p">,</span> <span class="s2">&quot;id&quot;</span><span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Первый параметр указывает локальные поля модели, используемые в отношениях; второй указывает имя модели и третье имя поля в указанной модели.
        Вы также можете использовать массивы для определения нескольких полей в отношениях.</p>
</div>
<div class="section" id="id12">
    <h3>Преимещества отношений<a class="headerlink" href="#id12" title="Ссылка на этот заголовок">¶</a></h3>

    <p>При явном определении отношений между моделями, легко найти относящиеся записи для конкретной записи.</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="mi">2</span><span
                        class="p">);</span>
<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">robotsParts</span> <span class="k">as</span> <span class="nv">$robotPart</span><span
                        class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">parts</span><span class="o">-&gt;</span><span class="na">name</span><span
                        class="p">,</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Phalcon использует магические методы __set/__get/__call для сохранения или извлечения связанных данных, используя отношения.</p>

    <p>По доступу к атрибуту с таким же именем, что и отношения, будем получать все связанные с ней записи.</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">();</span>
<span class="nv">$robotsParts</span> <span class="o">=</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">robotsParts</span><span class="p">;</span> <span class="c1">// all the related records in RobotsParts</span>
</pre>
        </div>
    </div>
    <p>Кроме того, вы можете использовать магию получателя:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">();</span>
<span class="nv">$robotsParts</span> <span class="o">=</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getRobotsParts</span><span class="p">();</span> <span
                        class="c1">// all the related records in RobotsParts</span>
<span class="nv">$robotsParts</span> <span class="o">=</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getRobotsParts</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span><span class="s1">&#39;limit&#39;</span> <span class="o">=&gt;</span> <span class="mi">5</span><span class="p">));</span> <span class="c1">// passing parameters</span>
</pre>
        </div>
    </div>
    <p>Если вызываемый метод &#8220;get&#8221; префикс <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> вернет findFirst()/find().
        В следующем примере сравниваются получение соответствующих результатов с использованием магических методов и без:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="mi">2</span><span
                        class="p">);</span>

<span class="c1">// Robots model has a 1-n (hasMany)</span>
<span class="c1">// relationship to RobotsParts then</span>
<span class="nv">$robotsParts</span> <span class="o">=</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">robotsParts</span><span class="p">;</span>

<span class="c1">// Only parts that match conditions</span>
<span class="nv">$robotsParts</span> <span class="o">=</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getRobotsParts</span><span class="p">(</span><span class="s2">&quot;created_at = &#39;2012-03-15&#39;&quot;</span><span
                        class="p">);</span>

<span class="c1">// Or using bound parameters</span>
<span class="nv">$robotsParts</span> <span class="o">=</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getRobotsParts</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span>
    <span class="s2">&quot;created_at = :date:&quot;</span><span class="p">,</span>
    <span class="s2">&quot;bind&quot;</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span><span class="s2">&quot;date&quot;</span> <span
                        class="o">=&gt;</span> <span class="s2">&quot;2012-03-15&quot;</span><span class="p">)</span>
<span class="p">));</span>

<span class="nv">$robotPart</span> <span class="o">=</span> <span class="nx">RobotsParts</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span
                        class="mi">1</span><span class="p">);</span>

<span class="c1">// RobotsParts model has a n-1 (belongsTo)</span>
<span class="c1">// relationship to RobotsParts then</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">robots</span><span class="p">;</span>
</pre>
        </div>
    </div>
    <p>Получение связанных записей вручную:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="mi">2</span><span
                        class="p">);</span>

<span class="c1">// Robots model has a 1-n (hasMany)</span>
<span class="c1">// relationship to RobotsParts, then</span>
<span class="nv">$robotsParts</span> <span class="o">=</span> <span class="nx">RobotsParts</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="s2">&quot;robots_id = &#39;&quot;</span> <span
                        class="o">.</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">id</span> <span class="o">.</span> <span class="s2">&quot;&#39;&quot;</span><span
                        class="p">);</span>

<span class="c1">// Only parts that match conditions</span>
<span class="nv">$robotsParts</span> <span class="o">=</span> <span class="nx">RobotsParts</span><span class="o">::</span><span class="na">find</span><span class="p">(</span>
    <span class="s2">&quot;robots_id = &#39;&quot;</span> <span class="o">.</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">id</span> <span class="o">.</span> <span
                        class="s2">&quot;&#39; AND created_at = &#39;2012-03-15&#39;&quot;</span>
<span class="p">);</span>

<span class="nv">$robotPart</span> <span class="o">=</span> <span class="nx">RobotsParts</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span
                        class="mi">1</span><span class="p">);</span>

<span class="c1">// RobotsParts model has a n-1 (belongsTo)</span>
<span class="c1">// relationship to RobotsParts then</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="s2">&quot;id = &#39;&quot;</span> <span
                        class="o">.</span> <span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">robots_id</span> <span class="o">.</span> <span
                        class="s2">&quot;&#39;&quot;</span><span class="p">);</span>
</pre>
        </div>
    </div>
    <p>Префикс &#8220;get&#8221; используется для find()/findFirst() связанных записей. В зависимости от типа отношений он будет использовать &#8216;find&#8217; or &#8216;findFirst&#8217;:</p>
    <table border="1" class="docutils">
        <colgroup>
            <col width="16%"/>
            <col width="66%"/>
            <col width="17%"/>
        </colgroup>
        <thead valign="bottom">
        <tr class="row-odd">
            <th class="head">Тип</th>
            <th class="head">Описание</th>
            <th class="head">Неявный метод</th>
        </tr>
        </thead>
        <tbody valign="top">
        <tr class="row-even">
            <td>Belongs-To</td>
            <td>Возвращает экземпляр модели взаимосвязанной записи</td>
            <td>findFirst</td>
        </tr>
        <tr class="row-odd">
            <td>Has-One</td>
            <td>Возвращает экземпляр модели взаимосвязанной записи</td>
            <td>findFirst</td>
        </tr>
        <tr class="row-even">
            <td>Has-Many</td>
            <td>Возвращает коллекцию экземпляров модели для основной модели</td>
            <td>find</td>
        </tr>
        </tbody>
    </table>
    <p>Вы можете также использовать префикс &#8220;count&#8221; для подсчета количества связанных записей:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="mi">2</span><span
                        class="p">);</span>
<span class="k">echo</span> <span class="s2">&quot;The robot has &quot;</span><span class="p">,</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span
                        class="na">countRobotsParts</span><span class="p">(),</span> <span class="s2">&quot; parts</span><span class="se">\n</span><span class="s2">&quot;</span><span
                        class="p">;</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="id13">
    <h3>Алиасы отношений<a class="headerlink" href="#id13" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Чтобы лучше объяснить, как алиасы работают, давайте рассмотрим следующий пример:</p>

    <p>В таблице &#8220;robots_similar&#8221; есть функция, для определения, что роботы похожи на других:</p>

    <div class="highlight-bash">
        <div class="highlight"><pre>mysql&gt; desc robots_similar;
+-------------------+------------------+------+-----+---------+----------------+
| Field             | Type             | Null | Key | Default | Extra          |
+-------------------+------------------+------+-----+---------+----------------+
| id                | int<span class="o">(</span>10<span class="o">)</span> unsigned | NO   | PRI | NULL    | auto_increment |
| robots_id         | int<span class="o">(</span>10<span class="o">)</span> unsigned | NO   | MUL | NULL    |                |
| similar_robots_id | int<span class="o">(</span>10<span class="o">)</span> unsigned | NO   |     | NULL    |                |
+-------------------+------------------+------+-----+---------+----------------+
3 rows in <span class="nb">set</span> <span class="o">(</span>0.00 sec<span class="o">)</span>
</pre>
        </div>
    </div>
    <p>Оба &#8220;robots_id&#8221; и &#8220;similar_robots_id&#8221; имеют отношение к модели Robots:</p>

    <div class="figure align-center">
        <img alt="../_images/eer-2.png" src="../_images/eer-2.png"/>
    </div>
    <p>Модель, которая отображает эту таблицу и ее отношения выглядит так:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">RobotsSimilar</span> <span class="k">extends</span> <span class="nx">Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">belongsTo</span><span class="p">(</span><span class="s1">&#39;robots_id&#39;</span><span class="p">,</span> <span
                        class="s1">&#39;Robots&#39;</span><span class="p">,</span> <span class="s1">&#39;id&#39;</span><span class="p">);</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">belongsTo</span><span class="p">(</span><span class="s1">&#39;similar_robots_id&#39;</span><span
                        class="p">,</span> <span class="s1">&#39;Robots&#39;</span><span class="p">,</span> <span class="s1">&#39;id&#39;</span><span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Так как отношения указывают на ту же модель (Robots), получить записи, относящиеся к взаимосвязи корректно нельзя:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robotsSimilar</span> <span class="o">=</span> <span class="nx">RobotsSimilar</span><span class="o">::</span><span class="na">findFirst</span><span class="p">();</span>

<span class="c1">//Returns the related record based on the column (robots_id)</span>
<span class="c1">//Also as is a belongsTo it&#39;s only returning one record</span>
<span class="c1">//but the name &#39;getRobots&#39; seems to imply that return more than one</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robotsSimilar</span><span class="o">-&gt;</span><span class="na">getRobots</span><span class="p">();</span>

<span class="c1">//but, how to get the related record based on the column (similar_robots_id)</span>
<span class="c1">//if both relationships have the same name?</span>
</pre>
        </div>
    </div>
    <p>Алиасы позволяют переименовать оба отношения для решения этих проблем:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">RobotsSimilar</span> <span class="k">extends</span> <span class="nx">Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">belongsTo</span><span class="p">(</span><span class="s1">&#39;robots_id&#39;</span><span class="p">,</span> <span
                        class="s1">&#39;Robots&#39;</span><span class="p">,</span> <span class="s1">&#39;id&#39;</span><span class="p">,</span> <span class="k">array</span><span class="p">(</span>
            <span class="s1">&#39;alias&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;Robot&#39;</span>
        <span class="p">));</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">belongsTo</span><span class="p">(</span><span class="s1">&#39;similar_robots_id&#39;</span><span
                        class="p">,</span> <span class="s1">&#39;Robots&#39;</span><span class="p">,</span> <span class="s1">&#39;id&#39;</span><span class="p">,</span> <span
                        class="k">array</span><span class="p">(</span>
            <span class="s1">&#39;alias&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;SimilarRobot&#39;</span>
        <span class="p">));</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>С алиасами мы можем легко получить соответствующие записи:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robotsSimilar</span> <span class="o">=</span> <span class="nx">RobotsSimilar</span><span class="o">::</span><span class="na">findFirst</span><span class="p">();</span>

<span class="c1">//Returns the related record based on the column (robots_id)</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robotsSimilar</span><span class="o">-&gt;</span><span class="na">getRobot</span><span class="p">();</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nv">$robotsSimilar</span><span class="o">-&gt;</span><span class="na">robot</span><span class="p">;</span>

<span class="c1">//Returns the related record based on the column (similar_robots_id)</span>
<span class="nv">$similarRobot</span> <span class="o">=</span> <span class="nv">$robotsSimilar</span><span class="o">-&gt;</span><span class="na">getSimilarRobot</span><span class="p">();</span>
<span class="nv">$similarRobot</span> <span class="o">=</span> <span class="nv">$robotsSimilar</span><span class="o">-&gt;</span><span class="na">similarRobot</span><span class="p">;</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="id14">
    <h3>Магические методы против явных<a class="headerlink" href="#id14" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Большинство сред IDE и редакторов с авто-заполнением не могут определить правильность типов при использовании магических методов, вместо того, для получения удобства вы можете задать эти методы
        явно с соответствующим docblocks, помогая IDE для получения лучшего авто-завершения:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="nv">$id</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$name</span><span class="p">;</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">hasMany</span><span class="p">(</span><span class="s2">&quot;id&quot;</span><span class="p">,</span> <span class="s2">&quot;RobotsParts&quot;</span><span
                        class="p">,</span> <span class="s2">&quot;robots_id&quot;</span><span class="p">);</span>
    <span class="p">}</span>

    <span class="sd">/**</span>
<span class="sd">     * Return the related &quot;robots parts&quot;</span>
<span class="sd">     *</span>
<span class="sd">     * @return \RobotsParts[]</span>
<span class="sd">     */</span>
    <span class="k">public</span> <span class="k">function</span> <span class="nf">getRobotsParts</span><span class="p">(</span><span class="nv">$parameters</span><span class="o">=</span><span
                        class="k">null</span><span class="p">)</span>
    <span class="p">{</span>
        <span class="k">return</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">getRelated</span><span class="p">(</span><span
                        class="s1">&#39;RobotsParts&#39;</span><span class="p">,</span> <span class="nv">$parameters</span><span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="id15">
    <h3>Виртуальные внешние ключи<a class="headerlink" href="#id15" title="Ссылка на этот заголовок">¶</a></h3>

    <p>По умолчанию, отношения не действуют как внешние ключи базы данных, то есть, если вы пытаетесь вставить/обновить значение, не имея действительного значения в эталонной модели, Phalcon не будет
        производить проверку сообщений. Вы можете изменить данное поведение, добавив четвертый параметр при определении отношения.</p>

    <p>Модель RobotsPart может быть изменена, чтобы продемонстрировать эту функцию:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">RobotsParts</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="nv">$id</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$robots_id</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$parts_id</span><span class="p">;</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">belongsTo</span><span class="p">(</span><span class="s2">&quot;robots_id&quot;</span><span class="p">,</span> <span
                        class="s2">&quot;Robots&quot;</span><span class="p">,</span> <span class="s2">&quot;id&quot;</span><span class="p">,</span> <span class="k">array</span><span class="p">(</span>
            <span class="s2">&quot;foreignKey&quot;</span> <span class="o">=&gt;</span> <span class="k">true</span>
        <span class="p">));</span>

        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">belongsTo</span><span class="p">(</span><span class="s2">&quot;parts_id&quot;</span><span class="p">,</span> <span
                        class="s2">&quot;Parts&quot;</span><span class="p">,</span> <span class="s2">&quot;id&quot;</span><span class="p">,</span> <span class="k">array</span><span class="p">(</span>
            <span class="s2">&quot;foreignKey&quot;</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s2">&quot;message&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;The part_id does not exist on the Parts model&quot;</span>
            <span class="p">)</span>
        <span class="p">));</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Если вы изменяете belongsTo() отношения в качестве внешнего ключа, он будет проверять, что значения вставляется/обновляется на тех полях где значение допустимое для эталонной модели.
        Аналогичным образом, если HasMany()/hasOne () изменяется он будет проверять, что записи не могут быть удалены, если эта запись используется для эталонной моделью.</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Parts</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">hasMany</span><span class="p">(</span><span class="s2">&quot;id&quot;</span><span class="p">,</span> <span class="s2">&quot;RobotsParts&quot;</span><span
                        class="p">,</span> <span class="s2">&quot;parts_id&quot;</span><span class="p">,</span> <span class="k">array</span><span class="p">(</span>
            <span class="s2">&quot;foreignKey&quot;</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s2">&quot;message&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;The part cannot be deleted because other robots are using it&quot;</span>
            <span class="p">)</span>
        <span class="p">));</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
</div>
<div class="section" id="id16">
    <h2>Использование Расчетов<a class="headerlink" href="#id16" title="Ссылка на этот заголовок">¶</a></h2>

    <p>Расчеты являются помощниками для часто используемых функций СУБД, такие как COUNT, SUM, MAX, MIN или AVG.
        <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> позволяет использовать эти функции непосредственно с доступными методами.</p>

    <p>Пример подсчета:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// How many employees are?</span>
<span class="nv">$rowcount</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">count</span><span class="p">();</span>

<span class="c1">// How many different areas are assigned to employees?</span>
<span class="nv">$rowcount</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">count</span><span class="p">(</span><span
                        class="k">array</span><span class="p">(</span><span class="s2">&quot;distinct&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;area&quot;</span><span class="p">));</span>

<span class="c1">// How many employees are in the Testing area?</span>
<span class="nv">$rowcount</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">count</span><span class="p">(</span><span class="s2">&quot;area = &#39;Testing&#39;&quot;</span><span
                        class="p">);</span>

<span class="c1">//Count employees grouping results by their area</span>
<span class="nv">$group</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">count</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span><span class="s2">&quot;group&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;area&quot;</span><span class="p">));</span>
<span class="k">foreach</span> <span class="p">(</span><span class="nv">$group</span> <span class="k">as</span> <span class="nv">$row</span><span class="p">)</span> <span class="p">{</span>
   <span class="k">echo</span> <span class="s2">&quot;There are &quot;</span><span class="p">,</span> <span class="nv">$row</span><span class="o">-&gt;</span><span class="na">rowcount</span><span
                        class="p">,</span> <span class="s2">&quot; in &quot;</span><span class="p">,</span> <span class="nv">$row</span><span class="o">-&gt;</span><span class="na">area</span><span
                        class="p">;</span>
<span class="p">}</span>

<span class="c1">// Count employees grouping by their area and ordering the result by count</span>
<span class="nv">$group</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">count</span><span class="p">(</span>
    <span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;group&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;area&quot;</span><span class="p">,</span>
        <span class="s2">&quot;order&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;rowcount&quot;</span>
    <span class="p">)</span>
<span class="p">);</span>
</pre>
        </div>
    </div>
    <p>Пример суммы:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// How much are the salaries of all employees?</span>
<span class="nv">$total</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">sum</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span><span class="s2">&quot;column&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;salary&quot;</span><span class="p">));</span>

<span class="c1">// How much are the salaries of all employees in the Sales area?</span>
<span class="nv">$total</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">sum</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span>
    <span class="s2">&quot;column&quot;</span>     <span class="o">=&gt;</span> <span class="s2">&quot;salary&quot;</span><span class="p">,</span>
    <span class="s2">&quot;conditions&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;area = &#39;Sales&#39;&quot;</span>
<span class="p">));</span>

<span class="c1">// Generate a grouping of the salaries of each area</span>
<span class="nv">$group</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">sum</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span>
    <span class="s2">&quot;column&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;salary&quot;</span><span class="p">,</span>
    <span class="s2">&quot;group&quot;</span>  <span class="o">=&gt;</span> <span class="s2">&quot;area&quot;</span>
<span class="p">));</span>
<span class="k">foreach</span> <span class="p">(</span><span class="nv">$group</span> <span class="k">as</span> <span class="nv">$row</span><span class="p">)</span> <span class="p">{</span>
   <span class="k">echo</span> <span class="s2">&quot;The sum of salaries of the &quot;</span><span class="p">,</span> <span class="nv">$row</span><span class="o">-&gt;</span><span
                        class="na">area</span><span class="p">,</span> <span class="s2">&quot; is &quot;</span><span class="p">,</span> <span class="nv">$row</span><span class="o">-&gt;</span><span
                        class="na">sumatory</span><span class="p">;</span>
<span class="p">}</span>

<span class="c1">// Generate a grouping of the salaries of each area ordering</span>
<span class="c1">// salaries from higher to lower</span>
<span class="nv">$group</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">sum</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span>
    <span class="s2">&quot;column&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;salary&quot;</span><span class="p">,</span>
    <span class="s2">&quot;group&quot;</span>  <span class="o">=&gt;</span> <span class="s2">&quot;area&quot;</span><span class="p">,</span>
    <span class="s2">&quot;order&quot;</span>  <span class="o">=&gt;</span> <span class="s2">&quot;sumatory DESC&quot;</span>
<span class="p">));</span>
</pre>
        </div>
    </div>
    <p>Пример поиска среднего:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// What is the average salary for all employees?</span>
<span class="nv">$average</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">average</span><span class="p">(</span><span
                        class="k">array</span><span class="p">(</span><span class="s2">&quot;column&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;salary&quot;</span><span class="p">));</span>

<span class="c1">// What is the average salary for the Sales&#39;s area employees?</span>
<span class="nv">$average</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">average</span><span class="p">(</span><span
                        class="k">array</span><span class="p">(</span>
    <span class="s2">&quot;column&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;salary&quot;</span><span class="p">,</span>
    <span class="s2">&quot;conditions&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;area = &#39;Sales&#39;&quot;</span>
<span class="p">));</span>
</pre>
        </div>
    </div>
    <p>Пример нахождения максимального/минимального:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// What is the oldest age of all employees?</span>
<span class="nv">$age</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">maximum</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span><span class="s2">&quot;column&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;age&quot;</span><span class="p">));</span>

<span class="c1">// What is the oldest of employees from the Sales area?</span>
<span class="nv">$age</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">maximum</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span>
    <span class="s2">&quot;column&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;age&quot;</span><span class="p">,</span>
    <span class="s2">&quot;conditions&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;area = &#39;Sales&#39;&quot;</span>
<span class="p">));</span>

<span class="c1">// What is the lowest salary of all employees?</span>
<span class="nv">$salary</span> <span class="o">=</span> <span class="nx">Employees</span><span class="o">::</span><span class="na">minimum</span><span class="p">(</span><span
                        class="k">array</span><span class="p">(</span><span class="s2">&quot;column&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;salary&quot;</span><span class="p">));</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="hydration-modes">
    <h2>Hydration Modes<a class="headerlink" href="#hydration-modes" title="Ссылка на этот заголовок">¶</a></h2>

    <p>As mentioned above, resultsets are collections of complete objects, this means that every returned result is an object
        representing a row in the database. These objects can be modified and saved again to persistence:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">//Manipulating a resultset of complete objects</span>
<span class="k">foreach</span> <span class="p">(</span><span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">()</span> <span class="k">as</span> <span
                        class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
    <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">year</span> <span class="o">=</span> <span class="mi">2000</span><span class="p">;</span>
    <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">();</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Sometimes records are obtained only to be presented to a user in read-only mode, in these cases it may be useful
        to change the way in which records are represented to facilitate their handling. The strategy used to represent objects
        returned in a resultset is called &#8216;hydration mode&#8217;:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\Resultset</span><span class="p">;</span>

<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">();</span>

<span class="c1">//Return every robot as an array</span>
<span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">setHydrateMode</span><span class="p">(</span><span class="nx">Resultset</span><span class="o">::</span><span class="na">HYDRATE_ARRAYS</span><span
                        class="p">);</span>

<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="nv">$robot</span><span class="p">[</span><span class="s1">&#39;year&#39;</span><span class="p">],</span> <span class="nx">PHP_EOL</span><span
                        class="p">;</span>
<span class="p">}</span>

<span class="c1">//Return every robot as an stdClass</span>
<span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">setHydrateMode</span><span class="p">(</span><span class="nx">Resultset</span><span class="o">::</span><span class="na">HYDRATE_OBJECTS</span><span
                        class="p">);</span>

<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">year</span><span class="p">,</span> <span class="nx">PHP_EOL</span><span class="p">;</span>
<span class="p">}</span>

<span class="c1">//Return every robot as a Robots instance</span>
<span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">setHydrateMode</span><span class="p">(</span><span class="nx">Resultset</span><span class="o">::</span><span class="na">HYDRATE_RECORDS</span><span
                        class="p">);</span>

<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">year</span><span class="p">,</span> <span class="nx">PHP_EOL</span><span class="p">;</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>The hydration mode can be passed as a parameter of &#8216;find&#8217;:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\Resultset</span><span class="p">;</span>

<span class="nv">$robots</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span>
    <span class="s1">&#39;hydration&#39;</span> <span class="o">=&gt;</span> <span class="nx">Resultset</span><span class="o">::</span><span class="na">HYDRATE_ARRAYS</span>
<span class="p">));</span>

<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="nv">$robot</span><span class="p">[</span><span class="s1">&#39;year&#39;</span><span class="p">],</span> <span class="nx">PHP_EOL</span><span
                        class="p">;</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="creating-updating-records">
<h2>Creating Updating/Records<a class="headerlink" href="#creating-updating-records" title="Ссылка на этот заголовок">¶</a></h2>

<p>The method Phalcon\Mvc\Model::save() allows you to create/update records according to whether they already exist in the table
    associated with a model. The save method is called internally by the create and update methods of <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a>.
    For this to work as expected it is necessary to have properly defined a primary key in the entity to determine whether a record
    should be updated or created.</p>

<p>Also the method executes associated validators, virtual foreign keys and events that are defined in the model:</p>

<div class="highlight-php">
    <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span>       <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">type</span> <span class="o">=</span> <span class="s2">&quot;mechanical&quot;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s2">&quot;Astro Boy&quot;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">year</span> <span class="o">=</span> <span class="mi">1952</span><span class="p">;</span>
<span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">()</span> <span class="o">==</span> <span
                    class="k">false</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="s2">&quot;Umh, We can&#39;t store robots right now: </span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
    <span class="k">foreach</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getMessages</span><span class="p">()</span> <span
                    class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">echo</span> <span class="nv">$message</span><span class="p">,</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span
                    class="p">;</span>
    <span class="p">}</span>
<span class="p">}</span> <span class="k">else</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="s2">&quot;Great, a new robot was saved successfully!&quot;</span><span class="p">;</span>
<span class="p">}</span>
</pre>
    </div>
</div>
<p>An array could be passed to &#8220;save&#8221; to avoid assign every column manually. Phalcon\Mvc\Model will check if there are setters implemented for
    the columns passed in the array giving priority to them instead of assign directly the values of the attributes:</p>

<div class="highlight-php">
    <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
    <span class="s2">&quot;type&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;mechanical&quot;</span><span class="p">,</span>
    <span class="s2">&quot;name&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;Astro Boy&quot;</span><span class="p">,</span>
    <span class="s2">&quot;year&quot;</span> <span class="o">=&gt;</span> <span class="mi">1952</span>
<span class="p">));</span>
</pre>
    </div>
</div>
<p>Values assigned directly or via the array of attributes are escaped/sanitized according to the related attribute data type. So you can pass
    an insecure array without worrying about possible SQL injections:</p>

<div class="highlight-php">
    <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">(</span><span class="nv">$_POST</span><span class="p">);</span>
</pre>
    </div>
</div>
<blockquote class="highlights">
    <div>Without precautions mass assignment could allow attackers to set any database column’s value. Only use this feature
        if you want that a user can insert/update every column in the model, even if those fields are not in the submitted
        form.
    </div>
</blockquote>
<p>You can set an additional parameter to save to set a whitelist of fields that only must taken into account when doing
    the mass assignment:</p>

<div class="highlight-php">
    <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">(</span><span class="nv">$_POST</span><span class="p">,</span> <span class="k">array</span><span
                    class="p">(</span><span class="s1">&#39;name&#39;</span><span class="p">,</span> <span class="s1">&#39;type&#39;</span><span class="p">));</span>
</pre>
    </div>
</div>
<div class="section" id="create-update-with-confidence">
    <h3>Create/Update with Confidence<a class="headerlink" href="#create-update-with-confidence" title="Ссылка на этот заголовок">¶</a></h3>

    <p>When an application has a lot of competition, we could be expecting create a record but it is actually updated. This
        could happen if we use Phalcon\Mvc\Model::save() to persist the records in the database. f we want to be absolutely
        sure that a record is created or updated, we can change the save() call with create() or update():</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span>       <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">type</span> <span class="o">=</span> <span class="s2">&quot;mechanical&quot;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s2">&quot;Astro Boy&quot;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">year</span> <span class="o">=</span> <span class="mi">1952</span><span class="p">;</span>

<span class="c1">//This record only must be created</span>
<span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">create</span><span class="p">()</span> <span class="o">==</span> <span
                        class="k">false</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="s2">&quot;Umh, We can&#39;t store robots right now: </span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
    <span class="k">foreach</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getMessages</span><span class="p">()</span> <span
                        class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">echo</span> <span class="nv">$message</span><span class="p">,</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span
                        class="p">;</span>
    <span class="p">}</span>
<span class="p">}</span> <span class="k">else</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="s2">&quot;Great, a new robot was created successfully!&quot;</span><span class="p">;</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>These methods &#8220;create&#8221; and &#8220;update&#8221; also accept an array of values as parameter.</p>
</div>
<div class="section" id="auto-generated-identity-columns">
    <h3>Auto-generated identity columns<a class="headerlink" href="#auto-generated-identity-columns" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Some models may have identity columns. These columns usually are the primary key of the mapped table. <a class="reference internal"
                                                                                                                href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a>
        can recognize the identity column omitting it in the generated SQL INSERT, so the database system can generate an auto-generated value for it.
        Always after creating a record, the identity field will be registered with the value generated in the database system for it:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">();</span>

<span class="k">echo</span> <span class="s2">&quot;The generated id is: &quot;</span><span class="p">,</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">id</span><span
                        class="p">;</span>
</pre>
        </div>
    </div>
    <p><a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> is able to recognize the identity column. Depending on the database system, those columns may
        be
        serial columns like in PostgreSQL or auto_increment columns in the case of MySQL.</p>

    <p>PostgreSQL uses sequences to generate auto-numeric values, by default, Phalcon tries to obtain the generated value from the sequence &#8220;table_field_seq&#8221;,
        for example: robots_id_seq, if that sequence has a different name, the method &#8220;getSequenceName&#8221; needs to be implemented:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">getSequenceName</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">return</span> <span class="s2">&quot;robots_sequence_name&quot;</span><span class="p">;</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="storing-related-records">
    <h3>Storing related records<a class="headerlink" href="#storing-related-records" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Magic properties can be used to store a records and its related properties:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// Create a robot</span>
<span class="nv">$artist</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Artists</span><span class="p">();</span>
<span class="nv">$artist</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s1">&#39;Shinichi Osawa&#39;</span><span class="p">;</span>
<span class="nv">$artist</span><span class="o">-&gt;</span><span class="na">country</span> <span class="o">=</span> <span class="s1">&#39;Japan&#39;</span><span class="p">;</span>

<span class="c1">// Create an album</span>
<span class="nv">$album</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Albums</span><span class="p">();</span>
<span class="nv">$album</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s1">&#39;The One&#39;</span><span class="p">;</span>
<span class="nv">$album</span><span class="o">-&gt;</span><span class="na">artist</span> <span class="o">=</span> <span class="nv">$artist</span><span class="p">;</span> <span class="c1">//Assign the artist</span>
<span class="nv">$album</span><span class="o">-&gt;</span><span class="na">year</span> <span class="o">=</span> <span class="mi">2008</span><span class="p">;</span>

<span class="c1">//Save both records</span>
<span class="nv">$album</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">();</span>
</pre>
        </div>
    </div>
    <p>Saving a record and its related records in a has-many relation:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// Get an existing artist</span>
<span class="nv">$artist</span> <span class="o">=</span> <span class="nx">Artists</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="s1">&#39;name = &quot;Shinichi Osawa&quot;&#39;</span><span
                        class="p">);</span>

<span class="c1">// Create an album</span>
<span class="nv">$album</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Albums</span><span class="p">();</span>
<span class="nv">$album</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s1">&#39;The One&#39;</span><span class="p">;</span>
<span class="nv">$album</span><span class="o">-&gt;</span><span class="na">artist</span> <span class="o">=</span> <span class="nv">$artist</span><span class="p">;</span>

<span class="nv">$songs</span> <span class="o">=</span> <span class="k">array</span><span class="p">();</span>

<span class="c1">// Create a first song</span>
<span class="nv">$songs</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Songs</span><span
                        class="p">();</span>
<span class="nv">$songs</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span
                        class="s1">&#39;Star Guitar&#39;</span><span class="p">;</span>
<span class="nv">$songs</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">-&gt;</span><span class="na">duration</span> <span class="o">=</span> <span
                        class="s1">&#39;5:54&#39;</span><span class="p">;</span>

<span class="c1">// Create a second song</span>
<span class="nv">$songs</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Songs</span><span
                        class="p">();</span>
<span class="nv">$songs</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span
                        class="s1">&#39;Last Days&#39;</span><span class="p">;</span>
<span class="nv">$songs</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span><span class="o">-&gt;</span><span class="na">duration</span> <span class="o">=</span> <span
                        class="s1">&#39;4:29&#39;</span><span class="p">;</span>

<span class="c1">// Assign the songs array</span>
<span class="nv">$album</span><span class="o">-&gt;</span><span class="na">songs</span> <span class="o">=</span> <span class="nv">$songs</span><span class="p">;</span>

<span class="c1">// Save the album + its songs</span>
<span class="nv">$album</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">();</span>
</pre>
        </div>
    </div>
    <p>Saving the album and the artist at the same time uses a transaction so if anything goes wrong with
        saving the related records, the parent will not be saved either. Messages are passed back to the user
        for information regarding any errors</p>
</div>
<div class="section" id="validation-messages">
    <h3>Validation Messages<a class="headerlink" href="#validation-messages" title="Ссылка на этот заголовок">¶</a></h3>

    <p><a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> has a messaging subsystem that provides a flexible way to output or store the
        validation messages generated during the insert/update processes.</p>

    <p>Each message consists of an instance of the class <a class="reference internal" href="../api/Phalcon_Mvc_Model_Message.html"><em>Phalcon\Mvc\Model\Message</em></a>. The set of
        messages generated can be retrieved with the method getMessages(). Each message provides extended information like the field name that
        generated the message or the message type:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">()</span> <span class="o">==</span> <span
                        class="k">false</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">foreach</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getMessages</span><span class="p">()</span> <span
                        class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">echo</span> <span class="s2">&quot;Message: &quot;</span><span class="p">,</span> <span class="nv">$message</span><span class="o">-&gt;</span><span class="na">getMessage</span><span
                        class="p">();</span>
        <span class="k">echo</span> <span class="s2">&quot;Field: &quot;</span><span class="p">,</span> <span class="nv">$message</span><span class="o">-&gt;</span><span
                        class="na">getField</span><span class="p">();</span>
        <span class="k">echo</span> <span class="s2">&quot;Type: &quot;</span><span class="p">,</span> <span class="nv">$message</span><span class="o">-&gt;</span><span class="na">getType</span><span
                        class="p">();</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p><a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> can generate the following types of validation messages:</p>
    <table border="1" class="docutils">
        <colgroup>
            <col width="14%"/>
            <col width="86%"/>
        </colgroup>
        <thead valign="bottom">
        <tr class="row-odd">
            <th class="head">Type</th>
            <th class="head">Description</th>
        </tr>
        </thead>
        <tbody valign="top">
        <tr class="row-even">
            <td>PresenceOf</td>
            <td>Generated when a field with a non-null attribute on the database is trying to insert/update a null value</td>
        </tr>
        <tr class="row-odd">
            <td>ConstraintViolation</td>
            <td>Generated when a field part of a virtual foreign key is trying to insert/update a value that doesn&#8217;t exist in the referenced model</td>
        </tr>
        <tr class="row-even">
            <td>InvalidValue</td>
            <td>Generated when a validator failed because of an invalid value</td>
        </tr>
        <tr class="row-odd">
            <td>InvalidCreateAttempt</td>
            <td>Produced when a record is attempted to be created but it already exists</td>
        </tr>
        <tr class="row-even">
            <td>InvalidUpdateAttempt</td>
            <td>Produced when a record is attempted to be updated but it doesn&#8217;t exist</td>
        </tr>
        </tbody>
    </table>
    <p>The method getMessages() can be overriden in a model to replace/translate the default messages generated automatically by the ORM:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">Phalcon\Mvc\Model</span>
<span class="p">{</span>
    <span class="k">public</span> <span class="k">function</span> <span class="nf">getMessages</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$messages</span> <span class="o">=</span> <span class="k">array</span><span class="p">();</span>
        <span class="k">foreach</span> <span class="p">(</span><span class="k">parent</span><span class="o">::</span><span class="na">getMessages</span><span class="p">()</span> <span
                        class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
            <span class="k">switch</span> <span class="p">(</span><span class="nv">$message</span><span class="o">-&gt;</span><span class="na">getType</span><span class="p">())</span> <span class="p">{</span>
                <span class="k">case</span> <span class="s1">&#39;InvalidCreateAttempt&#39;</span><span class="o">:</span>
                    <span class="nv">$messages</span><span class="p">[]</span> <span class="o">=</span> <span class="s1">&#39;The record cannot be created because it already exists&#39;</span><span
                        class="p">;</span>
                    <span class="k">break</span><span class="p">;</span>
                <span class="k">case</span> <span class="s1">&#39;InvalidUpdateAttempt&#39;</span><span class="o">:</span>
                    <span class="nv">$messages</span><span class="p">[]</span> <span class="o">=</span> <span class="s1">&#39;The record cannot be updated because it already exists&#39;</span><span
                        class="p">;</span>
                    <span class="k">break</span><span class="p">;</span>
                <span class="k">case</span> <span class="s1">&#39;PresenceOf&#39;</span><span class="o">:</span>
                    <span class="nv">$messages</span><span class="p">[]</span> <span class="o">=</span> <span class="s1">&#39;The field &#39;</span> <span class="o">.</span> <span
                        class="nv">$message</span><span class="o">-&gt;</span><span class="na">getField</span><span class="p">()</span> <span class="o">.</span> <span class="s1">&#39; is mandatory&#39;</span><span
                        class="p">;</span>
                    <span class="k">break</span><span class="p">;</span>
            <span class="p">}</span>
        <span class="p">}</span>
        <span class="k">return</span> <span class="nv">$messages</span><span class="p">;</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="events-and-events-manager">
    <h3>Events and Events Manager<a class="headerlink" href="#events-and-events-manager" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Models allow you to implement events that will be thrown when performing an insert/update/delete. They help define business rules for a
        certain model. The following are the events supported by <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> and their order of execution:</p>
    <table border="1" class="docutils">
        <colgroup>
            <col width="10%"/>
            <col width="13%"/>
            <col width="12%"/>
            <col width="66%"/>
        </colgroup>
        <thead valign="bottom">
        <tr class="row-odd">
            <th class="head">Operation</th>
            <th class="head">Name</th>
            <th class="head">Can stop operation?</th>
            <th class="head">Explanation</th>
        </tr>
        </thead>
        <tbody valign="top">
        <tr class="row-even">
            <td>Inserting/Updating</td>
            <td>beforeValidation</td>
            <td>YES</td>
            <td>Is executed before the fields are validated for not nulls/empty strings or foreign keys</td>
        </tr>
        <tr class="row-odd">
            <td>Inserting</td>
            <td>beforeValidationOnCreate</td>
            <td>YES</td>
            <td>Is executed before the fields are validated for not nulls/empty strings or foreign keys when an insertion operation is being made</td>
        </tr>
        <tr class="row-even">
            <td>Updating</td>
            <td>beforeValidationOnUpdate</td>
            <td>YES</td>
            <td>Is executed before the fields are validated for not nulls/empty strings or foreign keys when an updating operation is being made</td>
        </tr>
        <tr class="row-odd">
            <td>Inserting/Updating</td>
            <td>onValidationFails</td>
            <td>YES (already stopped)</td>
            <td>Is executed after an integrity validator fails</td>
        </tr>
        <tr class="row-even">
            <td>Inserting</td>
            <td>afterValidationOnCreate</td>
            <td>YES</td>
            <td>Is executed after the fields are validated for not nulls/empty strings or foreign keys when an insertion operation is being made</td>
        </tr>
        <tr class="row-odd">
            <td>Updating</td>
            <td>afterValidationOnUpdate</td>
            <td>YES</td>
            <td>Is executed after the fields are validated for not nulls/empty strings or foreign keys when an updating operation is being made</td>
        </tr>
        <tr class="row-even">
            <td>Inserting/Updating</td>
            <td>afterValidation</td>
            <td>YES</td>
            <td>Is executed after the fields are validated for not nulls/empty strings or foreign keys</td>
        </tr>
        <tr class="row-odd">
            <td>Inserting/Updating</td>
            <td>beforeSave</td>
            <td>YES</td>
            <td>Runs before the required operation over the database system</td>
        </tr>
        <tr class="row-even">
            <td>Updating</td>
            <td>beforeUpdate</td>
            <td>YES</td>
            <td>Runs before the required operation over the database system only when an updating operation is being made</td>
        </tr>
        <tr class="row-odd">
            <td>Inserting</td>
            <td>beforeCreate</td>
            <td>YES</td>
            <td>Runs before the required operation over the database system only when an inserting operation is being made</td>
        </tr>
        <tr class="row-even">
            <td>Updating</td>
            <td>afterUpdate</td>
            <td>NO</td>
            <td>Runs after the required operation over the database system only when an updating operation is being made</td>
        </tr>
        <tr class="row-odd">
            <td>Inserting</td>
            <td>afterCreate</td>
            <td>NO</td>
            <td>Runs after the required operation over the database system only when an inserting operation is being made</td>
        </tr>
        <tr class="row-even">
            <td>Inserting/Updating</td>
            <td>afterSave</td>
            <td>NO</td>
            <td>Runs after the required operation over the database system</td>
        </tr>
        </tbody>
    </table>
</div>
<div class="section" id="implementing-events-in-the-model-s-class">
    <h3>Implementing Events in the Model&#8217;s class<a class="headerlink" href="#implementing-events-in-the-model-s-class" title="Ссылка на этот заголовок">¶</a></h3>

    <p>The easier way to make a model react to events is implement a method with the same name of the event in the model&#8217;s class:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">beforeValidationOnCreate</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">echo</span> <span class="s2">&quot;This is executed before creating a Robot!&quot;</span><span class="p">;</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Events can be useful to assign values before performing an operation, for example:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Products</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">beforeCreate</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="c1">//Set the creation date</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">created_at</span> <span class="o">=</span> <span class="nb">date</span><span class="p">(</span><span class="s1">&#39;Y-m-d H:i:s&#39;</span><span
                        class="p">);</span>
    <span class="p">}</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">beforeUpdate</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="c1">//Set the modification date</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">modified_in</span> <span class="o">=</span> <span class="nb">date</span><span class="p">(</span><span class="s1">&#39;Y-m-d H:i:s&#39;</span><span
                        class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="using-a-custom-events-manager">
    <h3>Using a custom Events Manager<a class="headerlink" href="#using-a-custom-events-manager" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Additionally, this component is integrated with <a class="reference internal" href="../api/Phalcon_Events_Manager.html"><em>Phalcon\Events\Manager</em></a>,
        this means we can create listeners that run when an event is triggered.</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>

        <span class="nv">$eventsManager</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">\Phalcon\Events\Manager</span><span class="p">();</span>

        <span class="c1">//Attach an anonymous function as a listener for &quot;model&quot; events</span>
        <span class="nv">$eventsManager</span><span class="o">-&gt;</span><span class="na">attach</span><span class="p">(</span><span class="s1">&#39;model&#39;</span><span class="p">,</span> <span
                        class="k">function</span><span class="p">(</span><span class="nv">$event</span><span class="p">,</span> <span class="nv">$robot</span><span class="p">)</span> <span
                        class="p">{</span>
            <span class="k">if</span> <span class="p">(</span><span class="nv">$event</span><span class="o">-&gt;</span><span class="na">getType</span><span class="p">()</span> <span
                        class="o">==</span> <span class="s1">&#39;beforeSave&#39;</span><span class="p">)</span> <span class="p">{</span>
                <span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">==</span> <span class="s1">&#39;Scooby Doo&#39;</span><span
                        class="p">)</span> <span class="p">{</span>
                    <span class="k">echo</span> <span class="s2">&quot;Scooby Doo isn&#39;t a robot!&quot;</span><span class="p">;</span>
                    <span class="k">return</span> <span class="k">false</span><span class="p">;</span>
                <span class="p">}</span>
            <span class="p">}</span>
            <span class="k">return</span> <span class="k">true</span><span class="p">;</span>
        <span class="p">});</span>
        <span class="c1">// Прикрепление менеджера событий</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">setEventsManager</span><span class="p">(</span><span class="nv">$eventsManager</span><span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s1">&#39;Scooby Doo&#39;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">year</span> <span class="o">=</span> <span class="mi">1969</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">();</span>
</pre>
        </div>
    </div>
    <p>In the example given above the EventsManager only acts as a bridge between an object and a listener (the anonymous function).
        If we want all objects created in our application use the same EventsManager, then we need to assign it to the Models Manager:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">//Registering the modelsManager service</span>
<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">setShared</span><span class="p">(</span><span class="s1">&#39;modelsManager&#39;</span><span class="p">,</span> <span class="k">function</span><span
                        class="p">()</span> <span class="p">{</span>

    <span class="nv">$eventsManager</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">\Phalcon\Events\Manager</span><span class="p">();</span>

    <span class="c1">//Attach an anonymous function as a listener for &quot;model&quot; events</span>
    <span class="nv">$eventsManager</span><span class="o">-&gt;</span><span class="na">attach</span><span class="p">(</span><span class="s1">&#39;model&#39;</span><span class="p">,</span> <span
                        class="k">function</span><span class="p">(</span><span class="nv">$event</span><span class="p">,</span> <span class="nv">$model</span><span class="p">){</span>

        <span class="c1">//Catch events produced by the Robots model</span>
        <span class="k">if</span> <span class="p">(</span><span class="nb">get_class</span><span class="p">(</span><span class="nv">$model</span><span class="p">)</span> <span
                        class="o">==</span> <span class="s1">&#39;Robots&#39;</span><span class="p">)</span> <span class="p">{</span>

            <span class="k">if</span> <span class="p">(</span><span class="nv">$event</span><span class="o">-&gt;</span><span class="na">getType</span><span class="p">()</span> <span
                        class="o">==</span> <span class="s1">&#39;beforeSave&#39;</span><span class="p">)</span> <span class="p">{</span>
                <span class="k">if</span> <span class="p">(</span><span class="nv">$modle</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">==</span> <span class="s1">&#39;Scooby Doo&#39;</span><span
                        class="p">)</span> <span class="p">{</span>
                    <span class="k">echo</span> <span class="s2">&quot;Scooby Doo isn&#39;t a robot!&quot;</span><span class="p">;</span>
                    <span class="k">return</span> <span class="k">false</span><span class="p">;</span>
                <span class="p">}</span>
            <span class="p">}</span>

        <span class="p">}</span>
        <span class="k">return</span> <span class="k">true</span><span class="p">;</span>
    <span class="p">});</span>

    <span class="c1">//Setting a default EventsManager</span>
    <span class="nv">$modelsManager</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">ModelsManager</span><span class="p">();</span>
    <span class="nv">$modelsManager</span><span class="o">-&gt;</span><span class="na">setEventsManager</span><span class="p">(</span><span class="nv">$eventsManager</span><span class="p">);</span>
    <span class="k">return</span> <span class="nv">$modelsManager</span><span class="p">;</span>
<span class="p">});</span>
</pre>
        </div>
    </div>
    <p>If a listener returns false that will stop the operation that is executing currently.</p>
</div>
<div class="section" id="implementing-a-business-rule">
    <h3>Implementing a Business Rule<a class="headerlink" href="#implementing-a-business-rule" title="Ссылка на этот заголовок">¶</a></h3>

    <p>When an insert, update or delete is executed, the model verifies if there are any methods with the names of
        the events listed in the table above.</p>

    <p>We recommend that validation methods are declared protected to prevent that business logic implementation
        from being exposed publicly.</p>

    <p>The following example implements an event that validates the year cannot be smaller than 0 on update or insert:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">beforeSave</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$this</span><span class="o">-&gt;</span><span class="na">year</span> <span class="o">&lt;</span> <span
                        class="mi">0</span><span class="p">)</span> <span class="p">{</span>
            <span class="k">echo</span> <span class="s2">&quot;Year cannot be smaller than zero!&quot;</span><span class="p">;</span>
            <span class="k">return</span> <span class="k">false</span><span class="p">;</span>
        <span class="p">}</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Some events return false as an indication to stop the current operation. If an event doesn&#8217;t return anything, <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a>
        will assume a true value.</p>
</div>
<div class="section" id="validating-data-integrity">
    <h3>Validating Data Integrity<a class="headerlink" href="#validating-data-integrity" title="Ссылка на этот заголовок">¶</a></h3>

    <p><a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> provides several events to validate data and implement business rules. The special &#8220;validation&#8221;
        event allows us to call built-in validators over the record. Phalcon exposes a few built-in validators that can be used at this stage of validation.</p>

    <p>The following example shows how to use it:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\Validator\InclusionIn</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\Validator\Uniqueness</span><span class="p">;</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">validation</span><span class="p">()</span>
    <span class="p">{</span>

        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">validate</span><span class="p">(</span><span class="k">new</span> <span class="nx">InclusionIn</span><span
                        class="p">(</span>
            <span class="k">array</span><span class="p">(</span>
                <span class="s2">&quot;field&quot;</span>  <span class="o">=&gt;</span> <span class="s2">&quot;type&quot;</span><span class="p">,</span>
                <span class="s2">&quot;domain&quot;</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span><span class="s2">&quot;Mechanical&quot;</span><span
                        class="p">,</span> <span class="s2">&quot;Virtual&quot;</span><span class="p">)</span>
            <span class="p">)</span>
        <span class="p">));</span>

        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">validate</span><span class="p">(</span><span class="k">new</span> <span class="nx">Uniqueness</span><span
                        class="p">(</span>
            <span class="k">array</span><span class="p">(</span>
                <span class="s2">&quot;field&quot;</span>   <span class="o">=&gt;</span> <span class="s2">&quot;name&quot;</span><span class="p">,</span>
                <span class="s2">&quot;message&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;The robot name must be unique&quot;</span>
            <span class="p">)</span>
        <span class="p">));</span>

        <span class="k">return</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">validationHasFailed</span><span class="p">()</span> <span class="o">!=</span> <span
                        class="k">true</span><span class="p">;</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>The above example performs a validation using the built-in validator &#8220;InclusionIn&#8221;. It checks the value of the field &#8220;type&#8221; in a domain list. If
        the value is not included in the method then the validator will fail and return false. The following built-in validators are available:</p>
    <table border="1" class="docutils">
        <colgroup>
            <col width="6%"/>
            <col width="67%"/>
            <col width="28%"/>
        </colgroup>
        <thead valign="bottom">
        <tr class="row-odd">
            <th class="head">Name</th>
            <th class="head">Explanation</th>
            <th class="head">Example</th>
        </tr>
        </thead>
        <tbody valign="top">
        <tr class="row-even">
            <td>PresenceOf</td>
            <td>Validates that a field&#8217;s value isn&#8217;t null or empty string. This validator is automatically added based on the attributes marked as not null on the mapped table</td>
            <td><a class="reference internal" href="../api/Phalcon_Mvc_Model_Validator_PresenceOf.html"><em>Example</em></a></td>
        </tr>
        <tr class="row-odd">
            <td>Email</td>
            <td>Validates that field contains a valid email format</td>
            <td><a class="reference internal" href="../api/Phalcon_Mvc_Model_Validator_Email.html"><em>Example</em></a></td>
        </tr>
        <tr class="row-even">
            <td>ExclusionIn</td>
            <td>Validates that a value is not within a list of possible values</td>
            <td><a class="reference internal" href="../api/Phalcon_Mvc_Model_Validator_Exclusionin.html"><em>Example</em></a></td>
        </tr>
        <tr class="row-odd">
            <td>InclusionIn</td>
            <td>Validates that a value is within a list of possible values</td>
            <td><a class="reference internal" href="../api/Phalcon_Mvc_Model_Validator_Inclusionin.html"><em>Example</em></a></td>
        </tr>
        <tr class="row-even">
            <td>Numericality</td>
            <td>Validates that a field has a numeric format</td>
            <td><a class="reference internal" href="../api/Phalcon_Mvc_Model_Validator_Numericality.html"><em>Example</em></a></td>
        </tr>
        <tr class="row-odd">
            <td>Regex</td>
            <td>Validates that the value of a field matches a regular expression</td>
            <td><a class="reference internal" href="../api/Phalcon_Mvc_Model_Validator_Regex.html"><em>Example</em></a></td>
        </tr>
        <tr class="row-even">
            <td>Uniqueness</td>
            <td>Validates that a field or a combination of a set of fields are not present more than once in the existing records of the related table</td>
            <td><a class="reference internal" href="../api/Phalcon_Mvc_Model_Validator_Uniqueness.html"><em>Example</em></a></td>
        </tr>
        <tr class="row-odd">
            <td>StringLength</td>
            <td>Validates the length of a string</td>
            <td><a class="reference internal" href="../api/Phalcon_Mvc_Model_Validator_StringLength.html"><em>Example</em></a></td>
        </tr>
        <tr class="row-even">
            <td>Url</td>
            <td>Validates a URL format</td>
            <td><a class="reference internal" href="../api/Phalcon_Mvc_Model_Validator_Url.html"><em>Example</em></a></td>
        </tr>
        </tbody>
    </table>
    <p>In addition to the built-in validatiors, you can create your own validators:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\Validator</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\ValidatorInterface</span><span class="p">;</span>

<span class="k">class</span> <span class="nc">MaxMinValidator</span> <span class="k">extends</span> <span class="nx">Validator</span> <span class="k">implements</span> <span class="nx">ValidatorInterface</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">validate</span><span class="p">(</span><span class="nv">$model</span><span class="p">)</span>
    <span class="p">{</span>
        <span class="nv">$field</span> <span class="o">=</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">getOption</span><span class="p">(</span><span class="s1">&#39;field&#39;</span><span
                        class="p">);</span>

        <span class="nv">$min</span> <span class="o">=</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">getOption</span><span class="p">(</span><span class="s1">&#39;min&#39;</span><span
                        class="p">);</span>
        <span class="nv">$max</span> <span class="o">=</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">getOption</span><span class="p">(</span><span class="s1">&#39;max&#39;</span><span
                        class="p">);</span>

        <span class="nv">$value</span> <span class="o">=</span> <span class="nv">$model</span><span class="o">-&gt;</span><span class="nv">$field</span><span class="p">;</span>

        <span class="k">if</span> <span class="p">(</span><span class="nv">$min</span> <span class="o">&lt;=</span> <span class="nv">$value</span> <span class="o">&amp;&amp;</span> <span class="nv">$value</span> <span
                        class="o">&lt;=</span> <span class="nv">$max</span><span class="p">)</span> <span class="p">{</span>
            <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">appendMessage</span><span class="p">(</span><span class="s2">&quot;The field doesn&#39;t have the right range of values&quot;</span><span
                        class="p">,</span> <span class="nv">$field</span><span class="p">,</span> <span class="s2">&quot;MaxMinValidator&quot;</span><span class="p">);</span>
            <span class="k">return</span> <span class="k">false</span><span class="p">;</span>
        <span class="p">}</span>
        <span class="k">return</span> <span class="k">true</span><span class="p">;</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Adding the validator to a model:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Customers</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">validation</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">validate</span><span class="p">(</span><span class="k">new</span> <span class="nx">MaxMinValidator</span><span
                        class="p">(</span>
            <span class="k">array</span><span class="p">(</span>
                <span class="s2">&quot;field&quot;</span>  <span class="o">=&gt;</span> <span class="s2">&quot;price&quot;</span><span class="p">,</span>
                <span class="s2">&quot;min&quot;</span> <span class="o">=&gt;</span> <span class="mi">10</span><span class="p">,</span>
                <span class="s2">&quot;max&quot;</span> <span class="o">=&gt;</span> <span class="mi">100</span>
            <span class="p">)</span>
        <span class="p">));</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$this</span><span class="o">-&gt;</span><span class="na">validationHasFailed</span><span class="p">()</span> <span class="o">==</span> <span
                        class="k">true</span><span class="p">)</span> <span class="p">{</span>
            <span class="k">return</span> <span class="k">false</span><span class="p">;</span>
        <span class="p">}</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>The idea of creating validators is make them reusable between several models. A validator can also be as simple as:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">validation</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$this</span><span class="o">-&gt;</span><span class="na">type</span> <span class="o">==</span> <span class="s2">&quot;Old&quot;</span><span
                        class="p">)</span> <span class="p">{</span>
            <span class="nv">$message</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Phalcon\Mvc\Model\Message</span><span class="p">(</span>
                <span class="s2">&quot;Sorry, old robots are not allowed anymore&quot;</span><span class="p">,</span>
                <span class="s2">&quot;type&quot;</span><span class="p">,</span>
                <span class="s2">&quot;MyType&quot;</span>
            <span class="p">);</span>
            <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">appendMessage</span><span class="p">(</span><span class="nv">$message</span><span class="p">);</span>
            <span class="k">return</span> <span class="k">false</span><span class="p">;</span>
        <span class="p">}</span>
        <span class="k">return</span> <span class="k">true</span><span class="p">;</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="avoiding-sql-injections">
    <h3>Avoiding SQL injections<a class="headerlink" href="#avoiding-sql-injections" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Every value assigned to a model attribute is escaped depending of its data type. A developer doesn&#8217;t need to escape manually
        each value before storing it on the database. Phalcon uses internally the <a class="reference external" href="http://php.net/manual/en/pdostatement.bindparam.php">bound parameters</a>
        capability provided by PDO to automatically escape every value to be stored in the database.</p>

    <div class="highlight-bash">
        <div class="highlight"><pre>mysql&gt; desc products;
+------------------+------------------+------+-----+---------+----------------+
| Field            | Type             | Null | Key | Default | Extra          |
+------------------+------------------+------+-----+---------+----------------+
| id               | int<span class="o">(</span>10<span class="o">)</span> unsigned | NO   | PRI | NULL    | auto_increment |
| product_types_id | int<span class="o">(</span>10<span class="o">)</span> unsigned | NO   | MUL | NULL    |                |
| name             | varchar<span class="o">(</span>70<span class="o">)</span>      | NO   |     | NULL    |                |
| price            | decimal<span class="o">(</span>16,2<span class="o">)</span>    | NO   |     | NULL    |                |
| active           | char<span class="o">(</span>1<span class="o">)</span>          | YES  |     | NULL    |                |
+------------------+------------------+------+-----+---------+----------------+
5 rows in <span class="nb">set</span> <span class="o">(</span>0.00 sec<span class="o">)</span>
</pre>
        </div>
    </div>
    <p>If we use just PDO to store a record in a secure way, we need to write the following code:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$productTypesId</span> <span class="o">=</span> <span class="mi">1</span><span class="p">;</span>
<span class="nv">$name</span> <span class="o">=</span> <span class="s1">&#39;Artichoke&#39;</span><span class="p">;</span>
<span class="nv">$price</span> <span class="o">=</span> <span class="mf">10.5</span><span class="p">;</span>
<span class="nv">$active</span> <span class="o">=</span> <span class="s1">&#39;Y&#39;</span><span class="p">;</span>

<span class="nv">$sql</span> <span class="o">=</span> <span class="s1">&#39;INSERT INTO products VALUES (null, :productTypesId, :name, :price, :active)&#39;</span><span class="p">;</span>
<span class="nv">$sth</span> <span class="o">=</span> <span class="nv">$dbh</span><span class="o">-&gt;</span><span class="na">prepare</span><span class="p">(</span><span class="nv">$sql</span><span
                        class="p">);</span>

<span class="nv">$sth</span><span class="o">-&gt;</span><span class="na">bindParam</span><span class="p">(</span><span class="s1">&#39;:productTypesId&#39;</span><span class="p">,</span> <span
                        class="nv">$productTypesId</span><span class="p">,</span> <span class="nx">PDO</span><span class="o">::</span><span class="na">PARAM_INT</span><span class="p">);</span>
<span class="nv">$sth</span><span class="o">-&gt;</span><span class="na">bindParam</span><span class="p">(</span><span class="s1">&#39;:name&#39;</span><span class="p">,</span> <span
                        class="nv">$name</span><span class="p">,</span> <span class="nx">PDO</span><span class="o">::</span><span class="na">PARAM_STR</span><span class="p">,</span> <span class="mi">70</span><span
                        class="p">);</span>
<span class="nv">$sth</span><span class="o">-&gt;</span><span class="na">bindParam</span><span class="p">(</span><span class="s1">&#39;:price&#39;</span><span class="p">,</span> <span class="nb">doubleval</span><span
                        class="p">(</span><span class="nv">$price</span><span class="p">));</span>
<span class="nv">$sth</span><span class="o">-&gt;</span><span class="na">bindParam</span><span class="p">(</span><span class="s1">&#39;:active&#39;</span><span class="p">,</span> <span class="nv">$active</span><span
                        class="p">,</span> <span class="nx">PDO</span><span class="o">::</span><span class="na">PARAM_STR</span><span class="p">,</span> <span class="mi">1</span><span
                        class="p">);</span>

<span class="nv">$sth</span><span class="o">-&gt;</span><span class="na">execute</span><span class="p">();</span>
</pre>
        </div>
    </div>
    <p>The good news is that Phalcon do this for you automatically:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$product</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Products</span><span class="p">();</span>
<span class="nv">$product</span><span class="o">-&gt;</span><span class="na">product_types_id</span> <span class="o">=</span> <span class="mi">1</span><span class="p">;</span>
<span class="nv">$product</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s1">&#39;Artichoke&#39;</span><span class="p">;</span>
<span class="nv">$product</span><span class="o">-&gt;</span><span class="na">price</span> <span class="o">=</span> <span class="mf">10.5</span><span class="p">;</span>
<span class="nv">$product</span><span class="o">-&gt;</span><span class="na">active</span> <span class="o">=</span> <span class="s1">&#39;Y&#39;</span><span class="p">;</span>
<span class="nv">$product</span><span class="o">-&gt;</span><span class="na">create</span><span class="p">();</span>
</pre>
        </div>
    </div>
</div>
</div>
<div class="section" id="skipping-columns">
    <h2>Skipping Columns<a class="headerlink" href="#skipping-columns" title="Ссылка на этот заголовок">¶</a></h2>

    <p>To tell Phalcon\Mvc\Model that always omits some fields in the creation and/or update of records in order
        to delegate the database system the assignation of the values by a trigger or a default:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="c1">//Skips fields/columns on both INSERT/UPDATE operations</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">skipAttributes</span><span class="p">(</span><span class="k">array</span><span class="p">(</span><span class="s1">&#39;year&#39;</span><span
                        class="p">,</span> <span class="s1">&#39;price&#39;</span><span class="p">));</span>

        <span class="c1">//Skips only when inserting</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">skipAttributesOnCreate</span><span class="p">(</span><span class="k">array</span><span class="p">(</span><span
                        class="s1">&#39;created_at&#39;</span><span class="p">));</span>

        <span class="c1">//Skips only when updating</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">skipAttributesOnUpdate</span><span class="p">(</span><span class="k">array</span><span class="p">(</span><span
                        class="s1">&#39;modified_in&#39;</span><span class="p">));</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>This will ignore globally these fields on each INSERT/UPDATE operation on the whole application.
        Forcing a default value can be done in the following way:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s1">&#39;Bender&#39;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">year</span> <span class="o">=</span> <span class="mi">1999</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">created_at</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">\Phalcon\Db\RawValue</span><span
                        class="p">(</span><span class="s1">&#39;default&#39;</span><span class="p">);</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">create</span><span class="p">();</span>
</pre>
        </div>
    </div>
    <p>A callback also can be used to create a conditional assigment of automatic default values:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>
    <span class="k">public</span> <span class="k">function</span> <span class="nf">beforeCreate</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$this</span><span class="o">-&gt;</span><span class="na">price</span> <span class="o">&gt;</span> <span
                        class="mi">10000</span><span class="p">)</span> <span class="p">{</span>
            <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">type</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">\Phalcon\Db\RawValue</span><span
                        class="p">(</span><span class="s1">&#39;default&#39;</span><span class="p">);</span>
        <span class="p">}</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <blockquote class="highlights">
        <div>Never use a \Phalcon\Db\RawValue to assign external data (such as user input)
            or variable data. The value of these fields is ignored when binding parameters to the query.
            So it could be used to attack the application injecting SQL.
        </div>
    </blockquote>
    <div class="section" id="dynamic-update">
        <h3>Dynamic Update<a class="headerlink" href="#dynamic-update" title="Ссылка на этот заголовок">¶</a></h3>

        <p>SQL UPDATE statements are by default created with every column defined in the model (full all-field SQL update).
            You can change specific models to make dynamic updates, in this case, just the fields that had changed
            are used to create the final SQL statement.</p>

        <p>In some cases this could improve the performance by reducing the traffic between the application and the database server,
            this specially helps when the table has blob/text fields:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">Phalcon\Mvc\Model</span>
<span class="p">{</span>
    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">useDynamicUpdate</span><span class="p">(</span><span class="k">true</span><span class="p">);</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
            </div>
        </div>
    </div>
</div>
<div class="section" id="deleting-records">
    <h2>Deleting Records<a class="headerlink" href="#deleting-records" title="Ссылка на этот заголовок">¶</a></h2>

    <p>The method Phalcon\Mvc\Model::delete() allows to delete a record. You can use it as follows:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="mi">11</span><span
                        class="p">);</span>
<span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span> <span class="o">!=</span> <span class="k">false</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">delete</span><span class="p">()</span> <span class="o">==</span> <span
                        class="k">false</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">echo</span> <span class="s2">&quot;Sorry, we can&#39;t delete the robot right now: </span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
        <span class="k">foreach</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getMessages</span><span class="p">()</span> <span
                        class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
            <span class="k">echo</span> <span class="nv">$message</span><span class="p">,</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span
                        class="p">;</span>
        <span class="p">}</span>
    <span class="p">}</span> <span class="k">else</span> <span class="p">{</span>
        <span class="k">echo</span> <span class="s2">&quot;The robot was deleted successfully!&quot;</span><span class="p">;</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>You can also delete many records by traversing a resultset with a foreach:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">foreach</span> <span class="p">(</span><span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="s2">&quot;type=&#39;mechanical&#39;&quot;</span><span
                        class="p">)</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">delete</span><span class="p">()</span> <span class="o">==</span> <span
                        class="k">false</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">echo</span> <span class="s2">&quot;Sorry, we can&#39;t delete the robot right now: </span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
        <span class="k">foreach</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getMessages</span><span class="p">()</span> <span
                        class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
            <span class="k">echo</span> <span class="nv">$message</span><span class="p">,</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span
                        class="p">;</span>
        <span class="p">}</span>
    <span class="p">}</span> <span class="k">else</span> <span class="p">{</span>
        <span class="k">echo</span> <span class="s2">&quot;The robot was deleted successfully!&quot;</span><span class="p">;</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>The following events are available to define custom business rules that can be executed when a delete operation is
        performed:</p>
    <table border="1" class="docutils">
        <colgroup>
            <col width="13%"/>
            <col width="16%"/>
            <col width="24%"/>
            <col width="48%"/>
        </colgroup>
        <thead valign="bottom">
        <tr class="row-odd">
            <th class="head">Operation</th>
            <th class="head">Name</th>
            <th class="head">Can stop operation?</th>
            <th class="head">Explanation</th>
        </tr>
        </thead>
        <tbody valign="top">
        <tr class="row-even">
            <td>Deleting</td>
            <td>beforeDelete</td>
            <td>YES</td>
            <td>Runs before the delete operation is made</td>
        </tr>
        <tr class="row-odd">
            <td>Deleting</td>
            <td>afterDelete</td>
            <td>NO</td>
            <td>Runs after the delete operation was made</td>
        </tr>
        </tbody>
    </table>
    <p>With the above events can also define business rules in the models:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">beforeDelete</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$this</span><span class="o">-&gt;</span><span class="na">status</span> <span class="o">==</span> <span
                        class="s1">&#39;A&#39;</span><span class="p">)</span> <span class="p">{</span>
            <span class="k">echo</span> <span class="s2">&quot;The robot is active, it can&#39;t be deleted&quot;</span><span class="p">;</span>
            <span class="k">return</span> <span class="k">false</span><span class="p">;</span>
        <span class="p">}</span>
        <span class="k">return</span> <span class="k">true</span><span class="p">;</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="validation-failed-events">
    <h2>Validation Failed Events<a class="headerlink" href="#validation-failed-events" title="Ссылка на этот заголовок">¶</a></h2>

    <p>Another type of events are available when the data validation process finds any inconsistency:</p>
    <table border="1" class="docutils">
        <colgroup>
            <col width="23%"/>
            <col width="18%"/>
            <col width="60%"/>
        </colgroup>
        <thead valign="bottom">
        <tr class="row-odd">
            <th class="head">Operation</th>
            <th class="head">Name</th>
            <th class="head">Explanation</th>
        </tr>
        </thead>
        <tbody valign="top">
        <tr class="row-even">
            <td>Insert or Update</td>
            <td>notSave</td>
            <td>Triggered when the INSERT or UPDATE operation fails for any reason</td>
        </tr>
        <tr class="row-odd">
            <td>Insert, Delete or Update</td>
            <td>onValidationFails</td>
            <td>Triggered when any data manipulation operation fails</td>
        </tr>
        </tbody>
    </table>
</div>
<div class="section" id="behaviors">
<h2>Behaviors<a class="headerlink" href="#behaviors" title="Ссылка на этот заголовок">¶</a></h2>

<p>Behaviors are shared conducts that several models may adopt in order to re-use code, the ORM provides an API to implement
    behaviors in your models. Also, you can use the events and callbacks as seen before as an alternative to implement Behaviors with more freedom.</p>

<p>A behavior must be added in the model initializer, a model can have zero or more behaviors:</p>

<div class="highlight-php">
    <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\Behavior\Timestampable</span><span class="p">;</span>

<span class="k">class</span> <span class="nc">Users</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>
    <span class="k">public</span> <span class="nv">$id</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$name</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$created_at</span><span class="p">;</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">addBehavior</span><span class="p">(</span><span class="k">new</span> <span class="nx">Timestampable</span><span
                    class="p">(</span>
            <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;beforeCreate&#39;</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                    <span class="s1">&#39;field&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;created_at&#39;</span><span class="p">,</span>
                    <span class="s1">&#39;format&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;Y-m-d&#39;</span>
                <span class="p">)</span>
            <span class="p">)</span>
        <span class="p">));</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
    </div>
</div>
<p>The following built-in behaviors are provided by the framework:</p>
<table border="1" class="docutils">
    <colgroup>
        <col width="11%"/>
        <col width="89%"/>
    </colgroup>
    <thead valign="bottom">
    <tr class="row-odd">
        <th class="head">Name</th>
        <th class="head">Description</th>
    </tr>
    </thead>
    <tbody valign="top">
    <tr class="row-even">
        <td>Timestampable</td>
        <td>Allows to automatically update a model&#8217;s attribute saving the datetime when a record is created or updated</td>
    </tr>
    <tr class="row-odd">
        <td>SoftDelete</td>
        <td>Instead of permanently delete a record it marks the record as deleted changing the value of a flag column</td>
    </tr>
    </tbody>
</table>
<div class="section" id="timestampable">
    <h3>Timestampable<a class="headerlink" href="#timestampable" title="Ссылка на этот заголовок">¶</a></h3>

    <p>This behavior receives an array of options, the first level key must be an event name indicating when the column must be assigned:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
<span class="p">{</span>
    <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">addBehavior</span><span class="p">(</span><span class="k">new</span> <span class="nx">Timestampable</span><span class="p">(</span>
        <span class="k">array</span><span class="p">(</span>
            <span class="s1">&#39;beforeCreate&#39;</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;field&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;created_at&#39;</span><span class="p">,</span>
                <span class="s1">&#39;format&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;Y-m-d&#39;</span>
            <span class="p">)</span>
        <span class="p">)</span>
    <span class="p">));</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Each event can have its own options, &#8216;field&#8217; is the name of the column that must be updated, if &#8216;format&#8217; is a string it will be used
        as format of the PHP&#8217;s function <a class="reference external" href="http://php.net/manual/en/function.date.php">date</a>, format can also be an anonymous function providing you the free
        to generate any kind timestamp:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
<span class="p">{</span>
    <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">addBehavior</span><span class="p">(</span><span class="k">new</span> <span class="nx">Timestampable</span><span class="p">(</span>
        <span class="k">array</span><span class="p">(</span>
            <span class="s1">&#39;beforeCreate&#39;</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;field&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;created_at&#39;</span><span class="p">,</span>
                <span class="s1">&#39;format&#39;</span> <span class="o">=&gt;</span> <span class="k">function</span><span class="p">()</span> <span class="p">{</span>
                    <span class="nv">$datetime</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Datetime</span><span class="p">(</span><span class="k">new</span> <span
                        class="nx">DateTimeZone</span><span class="p">(</span><span class="s1">&#39;Europe/Stockholm&#39;</span><span class="p">));</span>
                    <span class="k">return</span> <span class="nv">$datetime</span><span class="o">-&gt;</span><span class="na">format</span><span class="p">(</span><span class="s1">&#39;Y-m-d H:i:sP&#39;</span><span
                        class="p">);</span>
                <span class="p">}</span>
            <span class="p">)</span>
        <span class="p">)</span>
    <span class="p">));</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>If the option &#8216;format&#8217; is omitted a timestamp using the PHP&#8217;s function <a class="reference external" href="http://php.net/manual/en/function.time.php">time</a>, will be used.
    </p>
</div>
<div class="section" id="softdelete">
    <h3>SoftDelete<a class="headerlink" href="#softdelete" title="Ссылка на этот заголовок">¶</a></h3>

    <p>This behavior can be used in the following way:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\Behavior\SoftDelete</span><span class="p">;</span>

<span class="k">class</span> <span class="nc">Users</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">const</span> <span class="no">DELETED</span> <span class="o">=</span> <span class="s1">&#39;D&#39;</span><span class="p">;</span>

    <span class="k">const</span> <span class="no">NOT_DELETED</span> <span class="o">=</span> <span class="s1">&#39;N&#39;</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$id</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$name</span><span class="p">;</span>

    <span class="k">public</span> <span class="nv">$status</span><span class="p">;</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">addBehavior</span><span class="p">(</span><span class="k">new</span> <span class="nx">SoftDelete</span><span
                        class="p">(</span>
            <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;field&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;status&#39;</span><span class="p">,</span>
                <span class="s1">&#39;value&#39;</span> <span class="o">=&gt;</span> <span class="nx">Users</span><span class="o">::</span><span class="na">DELETED</span>
            <span class="p">)</span>
        <span class="p">));</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>This behavior accepts two options: &#8216;field&#8217; and &#8216;value&#8217;, &#8216;field&#8217; determines what field must be updated and &#8216;value&#8217; the value to be deleted.
        Let&#8217;s pretend the table &#8216;users&#8217; has the following data:</p>

    <div class="highlight-bash">
        <div class="highlight"><pre>mysql&gt; <span class="k">select</span> * from users;
+----+---------+--------+
| id | name    | status |
+----+---------+--------+
|  1 | Lana    | N      |
|  2 | Brandon | N      |
+----+---------+--------+
2 rows in <span class="nb">set</span> <span class="o">(</span>0.00 sec<span class="o">)</span>
</pre>
        </div>
    </div>
    <p>If we delete any of the two records the status will be updated instead of delete the record:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nx">Users</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="mi">2</span><span class="p">)</span><span class="o">-&gt;</span><span
                        class="na">delete</span><span class="p">();</span>
</pre>
        </div>
    </div>
    <p>The operation will result in the following data in the table:</p>

    <div class="highlight-bash">
        <div class="highlight"><pre>mysql&gt; <span class="k">select</span> * from users;
+----+---------+--------+
| id | name    | status |
+----+---------+--------+
|  1 | Lana    | N      |
|  2 | Brandon | D      |
+----+---------+--------+
2 rows in <span class="nb">set</span> <span class="o">(</span>0.01 sec<span class="o">)</span>
</pre>
        </div>
    </div>
    <p>Note that you need to specify the deleted condition in your queries to effectively ignore them as deleted records, this behavior doesn&#8217;t support that.</p>
</div>
<div class="section" id="creating-your-own-behaviors">
    <h3>Creating your own behaviors<a class="headerlink" href="#creating-your-own-behaviors" title="Ссылка на этот заголовок">¶</a></h3>

    <p>The ORM provides an API to create your own behaviors. A behavior must be a class implementing the <a class="reference internal" href="../api/Phalcon_Mvc_Model_BehaviorInterface.html"><em>Phalcon\Mvc\Model\BehaviorInterface</em></a>
        Also, Phalon\Mvc\Model\Behavior provides most of the methods needed to ease the implementation of behaviors.</p>

    <p>The following behavior is an example, it implements the Blamable behavior which helps identify the user
        that is performed operations over a model:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\ModelInterface</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\BehaviorInterface</span><span class="p">;</span>

<span class="k">class</span> <span class="nc">Blameable</span> <span class="k">extends</span> <span class="nx">Behavior</span> <span class="k">implements</span> <span
                        class="nx">BehaviorInterface</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">notify</span><span class="p">(</span><span class="nv">$eventType</span><span class="p">,</span> <span class="nv">$model</span><span
                        class="p">)</span>
    <span class="p">{</span>
        <span class="k">switch</span> <span class="p">(</span><span class="nv">$eventType</span><span class="p">)</span> <span class="p">{</span>

            <span class="k">case</span> <span class="s1">&#39;afterCreate&#39;</span><span class="o">:</span>
            <span class="k">case</span> <span class="s1">&#39;afterDelete&#39;</span><span class="o">:</span>
            <span class="k">case</span> <span class="s1">&#39;afterUpdate&#39;</span><span class="o">:</span>


                <span class="nv">$userName</span> <span class="o">=</span> <span class="c1">// ... get the current user from session</span>

                <span class="c1">//Store in a log the username - event type and primary key</span>
                <span class="nb">file_put_contents</span><span class="p">(</span><span class="s1">&#39;logs/blamable-log.txt&#39;</span><span class="p">,</span> <span class="nv">$userName</span><span
                        class="o">.</span><span class="s1">&#39; &#39;</span><span class="o">.</span><span class="nv">$eventType</span><span class="o">.</span><span class="s1">&#39; &#39;</span><span
                        class="o">.</span><span class="nv">$model</span><span class="o">-&gt;</span><span class="na">id</span><span class="p">);</span>

                <span class="k">break</span><span class="p">;</span>

            <span class="k">default</span><span class="o">:</span>
                <span class="cm">/* ignore the rest of events */</span>
        <span class="p">}</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>The former is a very simple behavior, but it illustrates how to create a behavior, now let&#8217;s add this behavior to a model:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Profiles</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">addBehavior</span><span class="p">(</span><span class="k">new</span> <span class="nx">Blamable</span><span class="p">());</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>A behavior is also capable of intercept missing methods on your models:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\Behavior</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\BehaviorInterface</span><span class="p">;</span>

<span class="k">class</span> <span class="nc">Sluggable</span> <span class="k">extends</span> <span class="nx">Behavior</span> <span class="k">implements</span> <span
                        class="nx">BehaviorInterface</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">missingMethod</span><span class="p">(</span><span class="nv">$model</span><span class="p">,</span> <span class="nv">$method</span><span
                        class="p">,</span> <span class="nv">$arguments</span><span class="o">=</span><span class="k">array</span><span class="p">())</span>
    <span class="p">{</span>
        <span class="c1">// if the method is &#39;getSlug&#39; convert the title</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$method</span> <span class="o">==</span> <span class="s1">&#39;getSlug&#39;</span><span class="p">)</span> <span
                        class="p">{</span>
            <span class="k">return</span> <span class="nx">Phalcon\Tag</span><span class="o">::</span><span class="na">friendlyTitle</span><span class="p">(</span><span class="nv">$model</span><span
                        class="o">-&gt;</span><span class="na">title</span><span class="p">);</span>
        <span class="p">}</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Call that method on a model that implements Sluggable returns a SEO friendly title:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$title</span> <span class="o">=</span> <span class="nv">$post</span><span class="o">-&gt;</span><span class="na">getSlug</span><span class="p">();</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="using-traits-as-behaviors">
    <h3>Using Traits as behaviors<a class="headerlink" href="#using-traits-as-behaviors" title="Ссылка на этот заголовок">¶</a></h3>

    <p>Starting from PHP 5.4 you can use <a class="reference external" href="http://php.net/manual/en/language.oop5.traits.php">Traits</a> to re-use code in your classes, this is another way to
        implement
        custom behaviors. The following trait implements a simple version of the Timestampable behavior:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">trait</span> <span class="nx">MyTimestampable</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">beforeCreate</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">created_at</span> <span class="o">=</span> <span class="nb">date</span><span class="p">(</span><span class="s1">&#39;r&#39;</span><span
                        class="p">);</span>
    <span class="p">}</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">beforeUpdate</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">updated_at</span> <span class="o">=</span> <span class="nb">date</span><span class="p">(</span><span class="s1">&#39;r&#39;</span><span
                        class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Then you can use it in your model as follows:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Products</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>
    <span class="k">use</span> <span class="nx">MyTimestampable</span><span class="p">;</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
</div>
</div>
<div class="section" id="transactions">
    <h2>Transactions<a class="headerlink" href="#transactions" title="Ссылка на этот заголовок">¶</a></h2>

    <p>When a process performs multiple database operations, it is often that each step is completed successfully so that data integrity can
        be maintained. Transactions offer the ability to ensure that all database operations have been executed successfully before the data
        are committed to the database.</p>

    <p>Transactions in Phalcon allow you to commit all operations if they have been executed successfully or rollback
        all operations if something went wrong.</p>

    <div class="section" id="manual-transactions">
        <h3>Manual Transactions<a class="headerlink" href="#manual-transactions" title="Ссылка на этот заголовок">¶</a></h3>

        <p>If an application only uses one connection and the transactions aren&#8217;t very complex, a transaction can be
            created by just moving the current connection to transaction mode, doing a rollback or commit if the operation
            is successfully or not:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">RobotsController</span> <span class="k">extends</span> <span class="nx">Phalcon\Mvc\Controller</span>
<span class="p">{</span>
    <span class="k">public</span> <span class="k">function</span> <span class="nf">saveAction</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">db</span><span class="o">-&gt;</span><span class="na">begin</span><span class="p">();</span>

        <span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>

        <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s2">&quot;WALL·E&quot;</span><span class="p">;</span>
        <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">created_at</span> <span class="o">=</span> <span class="nb">date</span><span class="p">(</span><span class="s2">&quot;Y-m-d&quot;</span><span
                            class="p">);</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">()</span> <span
                            class="o">==</span> <span class="k">false</span><span class="p">)</span> <span class="p">{</span>
            <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">db</span><span class="o">-&gt;</span><span class="na">rollback</span><span class="p">();</span>
            <span class="k">return</span><span class="p">;</span>
        <span class="p">}</span>

        <span class="nv">$robotPart</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">RobotParts</span><span class="p">();</span>
        <span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">robots_id</span> <span class="o">=</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span
                            class="na">id</span><span class="p">;</span>
        <span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">type</span> <span class="o">=</span> <span class="s2">&quot;head&quot;</span><span class="p">;</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">()</span> <span class="o">==</span> <span
                            class="k">false</span><span class="p">)</span> <span class="p">{</span>
            <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">db</span><span class="o">-&gt;</span><span class="na">rollback</span><span class="p">();</span>
            <span class="k">return</span><span class="p">;</span>
        <span class="p">}</span>

        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">db</span><span class="o">-&gt;</span><span class="na">commit</span><span class="p">();</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
            </div>
        </div>
    </div>
    <div class="section" id="implicit-transactions">
        <h3>Implicit Transactions<a class="headerlink" href="#implicit-transactions" title="Ссылка на этот заголовок">¶</a></h3>

        <p>Existing relationships can be used to store records and their related instances, this kind of operation
            implicitly creates a transaction to ensure that data are correctly stored:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robotPart</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">RobotParts</span><span class="p">();</span>
<span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">type</span> <span class="o">=</span> <span class="s2">&quot;head&quot;</span><span class="p">;</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s2">&quot;WALL·E&quot;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">created_at</span> <span class="o">=</span> <span class="nb">date</span><span class="p">(</span><span class="s2">&quot;Y-m-d&quot;</span><span
                            class="p">);</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">robotPart</span> <span class="o">=</span> <span class="nv">$robotPart</span><span class="p">;</span>

<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">();</span> <span class="c1">//Creates an implicit transaction to store both records</span>
</pre>
            </div>
        </div>
    </div>
    <div class="section" id="isolated-transactions">
        <h3>Isolated Transactions<a class="headerlink" href="#isolated-transactions" title="Ссылка на этот заголовок">¶</a></h3>

        <p>Isolated transactions are executed in a new connection ensuring that all the generated SQL,
            virtual foreign key checking and business rules are isolated from the main connection.
            This kind of transaction requires a transaction manager that globally manages each
            transaction created ensuring that it&#8217;s correctly rollbacked/commited before ending the request:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\Transaction\Manager</span> <span class="k">as</span> <span class="nx">TxManager</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\Transaction\Failed</span> <span class="k">as</span> <span class="nx">TxFailed</span><span class="p">;</span>

<span class="k">try</span> <span class="p">{</span>

    <span class="c1">//Create a transaction manager</span>
    <span class="nv">$manager</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">TxManager</span><span class="p">();</span>

    <span class="c1">// Request a transaction</span>
    <span class="nv">$transaction</span> <span class="o">=</span> <span class="nv">$manager</span><span class="o">-&gt;</span><span class="na">get</span><span class="p">();</span>

    <span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
    <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">setTransaction</span><span class="p">(</span><span class="nv">$transaction</span><span class="p">);</span>
    <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s2">&quot;WALL·E&quot;</span><span class="p">;</span>
    <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">created_at</span> <span class="o">=</span> <span class="nb">date</span><span class="p">(</span><span class="s2">&quot;Y-m-d&quot;</span><span
                            class="p">);</span>
    <span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">()</span> <span class="o">==</span> <span
                            class="k">false</span><span class="p">)</span> <span class="p">{</span>
        <span class="nv">$transaction</span><span class="o">-&gt;</span><span class="na">rollback</span><span class="p">(</span><span class="s2">&quot;Cannot save robot&quot;</span><span
                            class="p">);</span>
    <span class="p">}</span>

    <span class="nv">$robotPart</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">RobotParts</span><span class="p">();</span>
    <span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">setTransaction</span><span class="p">(</span><span class="nv">$transaction</span><span class="p">);</span>
    <span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">robots_id</span> <span class="o">=</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">id</span><span
                            class="p">;</span>
    <span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">type</span> <span class="o">=</span> <span class="s2">&quot;head&quot;</span><span class="p">;</span>
    <span class="k">if</span> <span class="p">(</span><span class="nv">$robotPart</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">()</span> <span
                            class="o">==</span> <span class="k">false</span><span class="p">)</span> <span class="p">{</span>
        <span class="nv">$transaction</span><span class="o">-&gt;</span><span class="na">rollback</span><span class="p">(</span><span class="s2">&quot;Cannot save robot part&quot;</span><span
                            class="p">);</span>
    <span class="p">}</span>

    <span class="c1">//Everything goes fine, let&#39;s commit the transaction</span>
    <span class="nv">$transaction</span><span class="o">-&gt;</span><span class="na">commit</span><span class="p">();</span>

<span class="p">}</span> <span class="k">catch</span><span class="p">(</span><span class="nx">TxFailed</span> <span class="nv">$e</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="s2">&quot;Failed, reason: &quot;</span><span class="p">,</span> <span class="nv">$e</span><span class="o">-&gt;</span><span
                            class="na">getMessage</span><span class="p">();</span>
<span class="p">}</span>
</pre>
            </div>
        </div>
        <p>Transactions can be used to delete many records in a consistent way:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\Transaction\Manager</span> <span class="k">as</span> <span class="nx">TxManager</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\Transaction\Failed</span> <span class="k">as</span> <span class="nx">TxFailed</span><span class="p">;</span>

<span class="k">try</span> <span class="p">{</span>

    <span class="c1">//Create a transaction manager</span>
    <span class="nv">$manager</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">TxManager</span><span class="p">();</span>

    <span class="c1">//Request a transaction</span>
    <span class="nv">$transaction</span> <span class="o">=</span> <span class="nv">$manager</span><span class="o">-&gt;</span><span class="na">get</span><span class="p">();</span>

    <span class="c1">//Get the robots will be deleted</span>
    <span class="k">foreach</span> <span class="p">(</span><span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="s2">&quot;type = &#39;mechanical&#39;&quot;</span><span
                            class="p">)</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
        <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">setTransaction</span><span class="p">(</span><span class="nv">$transaction</span><span class="p">);</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">delete</span><span class="p">()</span> <span
                            class="o">==</span> <span class="k">false</span><span class="p">)</span> <span class="p">{</span>
            <span class="c1">//Something goes wrong, we should to rollback the transaction</span>
            <span class="k">foreach</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getMessages</span><span class="p">()</span> <span
                            class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
                <span class="nv">$transaction</span><span class="o">-&gt;</span><span class="na">rollback</span><span class="p">(</span><span class="nv">$message</span><span
                            class="o">-&gt;</span><span class="na">getMessage</span><span class="p">());</span>
            <span class="p">}</span>
        <span class="p">}</span>
    <span class="p">}</span>

    <span class="c1">//Everything goes fine, let&#39;s commit the transaction</span>
    <span class="nv">$transaction</span><span class="o">-&gt;</span><span class="na">commit</span><span class="p">();</span>

    <span class="k">echo</span> <span class="s2">&quot;Robots were deleted successfully!&quot;</span><span class="p">;</span>

<span class="p">}</span> <span class="k">catch</span><span class="p">(</span><span class="nx">TxFailed</span> <span class="nv">$e</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="s2">&quot;Failed, reason: &quot;</span><span class="p">,</span> <span class="nv">$e</span><span class="o">-&gt;</span><span
                            class="na">getMessage</span><span class="p">();</span>
<span class="p">}</span>
</pre>
            </div>
        </div>
        <p>Transactions are reused no matter where the transaction object is retrieved. A new transaction is generated only when a commit() or rollback()
            is performed. You can use the service container to create an overall transaction manager for the entire application:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">setShared</span><span class="p">(</span><span class="s1">&#39;transactions&#39;</span><span class="p">,</span> <span class="k">function</span><span
                            class="p">(){</span>
    <span class="k">return</span> <span class="k">new</span> <span class="nx">\Phalcon\Mvc\Model\Transaction\Manager</span><span class="p">();</span>
<span class="p">});</span>
</pre>
            </div>
        </div>
        <p>Then access it from a controller or view:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">ProductsController</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Controller</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">saveAction</span><span class="p">()</span>
    <span class="p">{</span>

        <span class="c1">//Obtain the TransactionsManager from the services container</span>
        <span class="nv">$manager</span> <span class="o">=</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">di</span><span class="o">-&gt;</span><span class="na">getTransactions</span><span
                            class="p">();</span>

        <span class="c1">//Or</span>
        <span class="nv">$manager</span> <span class="o">=</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">transactions</span><span class="p">;</span>

        <span class="c1">//Request a transaction</span>
        <span class="nv">$transaction</span> <span class="o">=</span> <span class="nv">$manager</span><span class="o">-&gt;</span><span class="na">get</span><span class="p">();</span>

        <span class="c1">//...</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
            </div>
        </div>
        <p>While a transaction is active, the transaction manager will always return the same transaction across the application.</p>
    </div>
</div>
<div class="section" id="independent-column-mapping">
    <h2>Independent Column Mapping<a class="headerlink" href="#independent-column-mapping" title="Ссылка на этот заголовок">¶</a></h2>

    <p>The ORM supports an independent column map, which allows the developer to use different column names in the model to the ones in
        the table. Phalcon will recognize the new column names and will rename them accordingly to match the respective columns in the database.
        This is a great feature when one needs to rename fields in the database without having to worry about all the queries
        in the code. A change in the column map in the model will take care of the rest. For example:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">columnMap</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="c1">//Keys are the real names in the table and</span>
        <span class="c1">//the values their names in the application</span>
        <span class="k">return</span> <span class="k">array</span><span class="p">(</span>
            <span class="s1">&#39;id&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;code&#39;</span><span class="p">,</span>
            <span class="s1">&#39;the_name&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;theName&#39;</span><span class="p">,</span>
            <span class="s1">&#39;the_type&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;theType&#39;</span><span class="p">,</span>
            <span class="s1">&#39;the_year&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;theYear&#39;</span>
        <span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>Then you can use the new names naturally in your code:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">//Find a robot by its name</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="s2">&quot;theName = &#39;Voltron&#39;&quot;</span><span
                        class="p">);</span>
<span class="k">echo</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">theName</span><span class="p">,</span> <span class="s2">&quot;</span><span
                        class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>

<span class="c1">//Get robots ordered by type</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="k">array</span><span
                        class="p">(</span><span class="s1">&#39;order&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;theType DESC&#39;</span><span class="p">));</span>
<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span> <span class="k">as</span> <span class="nv">$robot</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="s1">&#39;Code: &#39;</span><span class="p">,</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">code</span><span
                        class="p">,</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
<span class="p">}</span>

<span class="c1">//Create a robot</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">code</span> <span class="o">=</span> <span class="s1">&#39;10101&#39;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">theName</span> <span class="o">=</span> <span class="s1">&#39;Bender&#39;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">theType</span> <span class="o">=</span> <span class="s1">&#39;Industrial&#39;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">theYear</span> <span class="o">=</span> <span class="mi">2999</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">();</span>
</pre>
        </div>
    </div>
    <p>Take into consideration the following the next when renaming your columns:</p>
    <ul class="simple">
        <li>References to attributes in relationships/validators must use the new names</li>
        <li>Refer the real column names will result in an exception by the ORM</li>
    </ul>
    <p>The independent column map allow you to:</p>
    <ul class="simple">
        <li>Write applications using your own conventions</li>
        <li>Eliminate vendor prefixes/suffixes in your code</li>
        <li>Change column names without change your application code</li>
    </ul>
</div>
<div class="section" id="operations-over-resultsets">
    <h2>Operations over Resultsets<a class="headerlink" href="#operations-over-resultsets" title="Ссылка на этот заголовок">¶</a></h2>

    <p>If a resultset is composed of complete objects, the resultset is in the ability to perform operations on the records obtained in a simple manner:</p>

    <div class="section" id="updating-related-records">
        <h3>Updating related records<a class="headerlink" href="#updating-related-records" title="Ссылка на этот заголовок">¶</a></h3>

        <p>Instead of doing this:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">getParts</span><span class="p">()</span> <span
                            class="k">as</span> <span class="nv">$part</span><span class="p">)</span> <span class="p">{</span>
    <span class="nv">$part</span><span class="o">-&gt;</span><span class="na">stock</span> <span class="o">=</span> <span class="mi">100</span><span class="p">;</span>
    <span class="nv">$part</span><span class="o">-&gt;</span><span class="na">updated_at</span> <span class="o">=</span> <span class="nb">time</span><span class="p">();</span>
    <span class="k">if</span> <span class="p">(</span><span class="nv">$part</span><span class="o">-&gt;</span><span class="na">update</span><span class="p">()</span> <span class="o">==</span> <span
                            class="k">false</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">foreach</span> <span class="p">(</span><span class="nv">$part</span><span class="o">-&gt;</span><span class="na">getMessages</span><span class="p">()</span> <span
                            class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
            <span class="k">echo</span> <span class="nv">$message</span><span class="p">;</span>
        <span class="p">}</span>
        <span class="k">break</span><span class="p">;</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
            </div>
        </div>
        <p>you can do this:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">getParts</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">update</span><span
                            class="p">(</span><span class="k">array</span><span class="p">(</span>
    <span class="s1">&#39;stock&#39;</span> <span class="o">=&gt;</span> <span class="mi">100</span><span class="p">,</span>
    <span class="s1">&#39;updated_at&#39;</span> <span class="o">=&gt;</span> <span class="nb">time</span><span class="p">()</span>
<span class="p">));</span>
</pre>
            </div>
        </div>
        <p>&#8216;update&#8217; also accepts an anonymous function to filter what records must be updated:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$data</span> <span class="o">=</span> <span class="k">array</span><span class="p">(</span>
    <span class="s1">&#39;stock&#39;</span> <span class="o">=&gt;</span> <span class="mi">100</span><span class="p">,</span>
    <span class="s1">&#39;updated_at&#39;</span> <span class="o">=&gt;</span> <span class="nb">time</span><span class="p">()</span>
<span class="p">);</span>

<span class="c1">//Update all the parts except these whose type is basic</span>
<span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">getParts</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">update</span><span
                            class="p">(</span><span class="nv">$data</span><span class="p">,</span> <span class="k">function</span><span class="p">(</span><span class="nv">$part</span><span class="p">)</span> <span
                            class="p">{</span>
    <span class="k">if</span> <span class="p">(</span><span class="nv">$part</span><span class="o">-&gt;</span><span class="na">type</span> <span class="o">==</span> <span class="nx">Part</span><span
                            class="o">::</span><span class="na">TYPE_BASIC</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">return</span> <span class="k">false</span><span class="p">;</span>
    <span class="p">}</span>
    <span class="k">return</span> <span class="k">true</span><span class="p">;</span>
<span class="p">}</span>
</pre>
            </div>
        </div>
    </div>
    <div class="section" id="deleting-related-records">
        <h3>Deleting related records<a class="headerlink" href="#deleting-related-records" title="Ссылка на этот заголовок">¶</a></h3>

        <p>Instead of doing this:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">foreach</span> <span class="p">(</span><span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">getParts</span><span class="p">()</span> <span
                            class="k">as</span> <span class="nv">$part</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">if</span> <span class="p">(</span><span class="nv">$part</span><span class="o">-&gt;</span><span class="na">delete</span><span class="p">()</span> <span class="o">==</span> <span
                            class="k">false</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">foreach</span> <span class="p">(</span><span class="nv">$part</span><span class="o">-&gt;</span><span class="na">getMessages</span><span class="p">()</span> <span
                            class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
            <span class="k">echo</span> <span class="nv">$message</span><span class="p">;</span>
        <span class="p">}</span>
        <span class="k">break</span><span class="p">;</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
            </div>
        </div>
        <p>you can do this:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">getParts</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">delete</span><span class="p">();</span>
</pre>
            </div>
        </div>
        <p>&#8216;delete&#8217; also accepts an anonymous function to filter what records must be deleted:</p>

        <div class="highlight-php">
            <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">//Delete only whose stock is greater or equal than zero</span>
<span class="nv">$robots</span><span class="o">-&gt;</span><span class="na">getParts</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">delete</span><span
                            class="p">(</span><span class="k">function</span><span class="p">(</span><span class="nv">$part</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">if</span> <span class="p">(</span><span class="nv">$part</span><span class="o">-&gt;</span><span class="na">stock</span> <span class="o">&lt;</span> <span class="mi">0</span><span
                            class="p">)</span> <span class="p">{</span>
        <span class="k">return</span> <span class="k">false</span><span class="p">;</span>
    <span class="p">}</span>
    <span class="k">return</span> <span class="k">true</span><span class="p">;</span>
<span class="p">});</span>
</pre>
            </div>
        </div>
    </div>
</div>
<div class="section" id="record-snapshots">
    <h2>Record Snapshots<a class="headerlink" href="#record-snapshots" title="Ссылка на этот заголовок">¶</a></h2>

    <p>Specific models could be set to maintain a record snapshot when they’re queried. You can use this feature to implement auditing or just to know what
        fields are changed according to the data queried from the persistence:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">Phalcon\Mvc\Model</span>
<span class="p">{</span>
    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">keepSnapshots</span><span class="p">(</span><span class="k">true</span><span class="p">);</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre>
        </div>
    </div>
    <p>When activating this feature the application consumes a bit more of memory to keep track of the original values obtained from the persistence.
        In models that have this feature activated you can check what fields changed:</p>

    <div class="highlight-php">
        <div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">//Get a record from the database</span>
<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">();</span>

<span class="c1">//Change a column</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s1">&#39;Other name&#39;</span><span class="p">;</span>

<span class="nb">var_dump</span><span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getChangedFields</span><span class="p">());</span> <span class="c1">// [&#39;name&#39;]</span>
<span class="nb">var_dump</span><span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">hasChanged</span><span class="p">(</span><span class="s1">&#39;name&#39;</span><span
                        class="p">));</span> <span class="c1">// true</span>
<span class="nb">var_dump</span><span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">hasChanged</span><span class="p">(</span><span class="s1">&#39;type&#39;</span><span
                        class="p">));</span> <span class="c1">// false</span>
</pre>
        </div>
    </div>
</div>
<div class="section" id="models-meta-data">
<h2>Models Meta-Data<a class="headerlink" href="#models-meta-data" title="Ссылка на этот заголовок">¶</a></h2>

<p>To speed up development <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> helps you to query fields and constraints from tables
    related to models. To achieve this, <a class="reference internal" href="../api/Phalcon_Mvc_Model_MetaData.html"><em>Phalcon\Mvc\Model\MetaData</em></a> is available to manage
    and cache table meta-data.</p>
<p>Sometimes it is necessary to get those attributes when working with models. You can get a meta-data instance as follows:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>

<span class="c1">// Get Phalcon\Mvc\Model\Metadata instance</span>
<span class="nv">$metaData</span> <span class="o">=</span> <span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">getModelsMetaData</span><span class="p">();</span>

<span class="c1">// Get robots fields names</span>
<span class="nv">$attributes</span> <span class="o">=</span> <span class="nv">$metaData</span><span class="o">-&gt;</span><span class="na">getAttributes</span><span class="p">(</span><span class="nv">$robot</span><span class="p">);</span>
<span class="nb">print_r</span><span class="p">(</span><span class="nv">$attributes</span><span class="p">);</span>

<span class="c1">// Get robots fields data types</span>
<span class="nv">$dataTypes</span> <span class="o">=</span> <span class="nv">$metaData</span><span class="o">-&gt;</span><span class="na">getDataTypes</span><span class="p">(</span><span class="nv">$robot</span><span class="p">);</span>
<span class="nb">print_r</span><span class="p">(</span><span class="nv">$dataTypes</span><span class="p">);</span>
</pre></div>
</div>
<div class="section" id="caching-meta-data">
<h3>Caching Meta-Data<a class="headerlink" href="#caching-meta-data" title="Ссылка на этот заголовок">¶</a></h3>
<p>Once the application is in a production stage, it is not necessary to query the meta-data of the table from the database system each
time you use the table. This could be done caching the meta-data using any of the following adapters:</p>
<table border="1" class="docutils">
<colgroup>
<col width="2%" />
<col width="77%" />
<col width="21%" />
</colgroup>
<thead valign="bottom">
<tr class="row-odd"><th class="head">Adapter</th>
<th class="head">Description</th>
<th class="head">API</th>
</tr>
</thead>
<tbody valign="top">
<tr class="row-even"><td>Memory</td>
<td>This adapter is the default. The meta-data is cached only during the request. When the request is completed, the meta-data are released as part of the normal memory of the request. This adapter is perfect when the application is in development so as to refresh the meta-data in each request containing the new and/or modified fields.</td>
<td><a class="reference internal" href="../api/Phalcon_Mvc_Model_MetaData_Memory.html"><em>Phalcon\Mvc\Model\MetaData\Memory</em></a></td>
</tr>
<tr class="row-odd"><td>Session</td>
<td>This adapter stores meta-data in the $_SESSION superglobal. This adapter is recommended only when the application is actually using a small number of models. The meta-data are refreshed every time a new session starts. This also requires the use of session_start() to start the session before using any models.</td>
<td><a class="reference internal" href="../api/Phalcon_Mvc_Model_MetaData_Session.html"><em>Phalcon\Mvc\Model\MetaData\Session</em></a></td>
</tr>
<tr class="row-even"><td>Apc</td>
<td>The Apc adapter uses the <a class="reference external" href="http://www.php.net/manual/en/book.apc.php">Alternative PHP Cache (APC)</a> to store the table meta-data. You can specify the lifetime of the meta-data with options. This is the most recommended way to store meta-data when the application is in production stage.</td>
<td><a class="reference internal" href="../api/Phalcon_Mvc_Model_MetaData_Apc.html"><em>Phalcon\Mvc\Model\MetaData\Apc</em></a></td>
</tr>
<tr class="row-odd"><td>Files</td>
<td>This adapter uses plain files to store meta-data. By using this adapter the disk-reading is increased but the database access is reduced</td>
<td><a class="reference internal" href="../api/Phalcon_Mvc_Model_MetaData_Files.html"><em>Phalcon\Mvc\Model\MetaData\Files</em></a></td>
</tr>
</tbody>
</table>
<p>As other ORM&#8217;s dependencies, the metadata manager is requested from the services container:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$di</span><span class="p">[</span><span class="s1">&#39;modelsMetadata&#39;</span><span class="p">]</span> <span class="o">=</span> <span class="k">function</span><span class="p">()</span> <span class="p">{</span>

    <span class="c1">// Create a meta-data manager with APC</span>
    <span class="nv">$metaData</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">\Phalcon\Mvc\Model\MetaData\Apc</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;lifetime&quot;</span> <span class="o">=&gt;</span> <span class="mi">86400</span><span class="p">,</span>
        <span class="s2">&quot;prefix&quot;</span>   <span class="o">=&gt;</span> <span class="s2">&quot;my-prefix&quot;</span>
    <span class="p">));</span>

    <span class="k">return</span> <span class="nv">$metaData</span><span class="p">;</span>
<span class="p">};</span>
</pre></div>
</div>
</div>
<div class="section" id="meta-data-strategies">
<h3>Meta-Data Strategies<a class="headerlink" href="#meta-data-strategies" title="Ссылка на этот заголовок">¶</a></h3>
<p>As mentioned above the default strategy to obtain the model&#8217;s meta-data is database introspection. In this strategy, the information
schema is used to know the fields in a table, its primary key, nullable fields, data types, etc.</p>
<p>You can change the default meta-data introspection in the following way:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$di</span><span class="p">[</span><span class="s1">&#39;modelsMetadata&#39;</span><span class="p">]</span> <span class="o">=</span> <span class="k">function</span><span class="p">()</span> <span class="p">{</span>

    <span class="c1">// Instantiate a meta-data adapter</span>
    <span class="nv">$metaData</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">\Phalcon\Mvc\Model\MetaData\Apc</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;lifetime&quot;</span> <span class="o">=&gt;</span> <span class="mi">86400</span><span class="p">,</span>
        <span class="s2">&quot;prefix&quot;</span>   <span class="o">=&gt;</span> <span class="s2">&quot;my-prefix&quot;</span>
    <span class="p">));</span>

    <span class="c1">//Set a custom meta-data introspection strategy</span>
    <span class="nv">$metaData</span><span class="o">-&gt;</span><span class="na">setStrategy</span><span class="p">(</span><span class="k">new</span> <span class="nx">MyInstrospectionStrategy</span><span class="p">());</span>

    <span class="k">return</span> <span class="nv">$metaData</span><span class="p">;</span>
<span class="p">};</span>
</pre></div>
</div>
</div>
<div class="section" id="database-introspection-strategy">
<h3>Database Introspection Strategy<a class="headerlink" href="#database-introspection-strategy" title="Ссылка на этот заголовок">¶</a></h3>
<p>This strategy doesn&#8217;t require any customization and is implicitly used by all the meta-data adapters.</p>
</div>
<div class="section" id="annotations-strategy">
<h3>Annotations Strategy<a class="headerlink" href="#annotations-strategy" title="Ссылка на этот заголовок">¶</a></h3>
<p>This strategy makes use of <a class="reference internal" href="annotations.html"><em>annotations</em></a> to describe the columns in a model:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="sd">/**</span>
<span class="sd">     * @Primary</span>
<span class="sd">     * @Identity</span>
<span class="sd">     * @Column(type=&quot;integer&quot;, nullable=false)</span>
<span class="sd">     */</span>
    <span class="k">public</span> <span class="nv">$id</span><span class="p">;</span>

    <span class="sd">/**</span>
<span class="sd">     * @Column(type=&quot;string&quot;, length=70, nullable=false)</span>
<span class="sd">     */</span>
    <span class="k">public</span> <span class="nv">$name</span><span class="p">;</span>

    <span class="sd">/**</span>
<span class="sd">     * @Column(type=&quot;string&quot;, length=32, nullable=false)</span>
<span class="sd">     */</span>
    <span class="k">public</span> <span class="nv">$type</span><span class="p">;</span>

    <span class="sd">/**</span>
<span class="sd">     * @Column(type=&quot;integer&quot;, nullable=false)</span>
<span class="sd">     */</span>
    <span class="k">public</span> <span class="nv">$year</span><span class="p">;</span>

<span class="p">}</span>
</pre></div>
</div>
<p>Annotations must be placed in properties that are mapped to columns in the mapped source. Properties without the &#64;Column annotation
are handled as simple class attributes.</p>
<p>The following annotations are supported:</p>
<table border="1" class="docutils">
<colgroup>
<col width="15%" />
<col width="85%" />
</colgroup>
<thead valign="bottom">
<tr class="row-odd"><th class="head">Name</th>
<th class="head">Description</th>
</tr>
</thead>
<tbody valign="top">
<tr class="row-even"><td>Primary</td>
<td>Mark the field as part of the table&#8217;s primary key</td>
</tr>
<tr class="row-odd"><td>Identity</td>
<td>The field is an auto_increment/serial column</td>
</tr>
<tr class="row-even"><td>Column</td>
<td>This marks an attribute as a mapped column</td>
</tr>
</tbody>
</table>
<p>The annotation &#64;Column supports the following parameters:</p>
<table border="1" class="docutils">
<colgroup>
<col width="15%" />
<col width="85%" />
</colgroup>
<thead valign="bottom">
<tr class="row-odd"><th class="head">Name</th>
<th class="head">Description</th>
</tr>
</thead>
<tbody valign="top">
<tr class="row-even"><td>type</td>
<td>The column&#8217;s type (string, integer, decimal, boolean)</td>
</tr>
<tr class="row-odd"><td>length</td>
<td>The column&#8217;s length if any</td>
</tr>
<tr class="row-even"><td>nullable</td>
<td>Set whether the column accepts null values or not</td>
</tr>
</tbody>
</table>
<p>The annotations strategy could be set up this way:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model\MetaData\Apc</span> <span class="k">as</span> <span class="nx">ApcMetaData</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\MetaData\Strategy\Annotations</span> <span class="k">as</span> <span class="nx">StrategyAnnotations</span><span class="p">;</span>

<span class="nv">$di</span><span class="p">[</span><span class="s1">&#39;modelsMetadata&#39;</span><span class="p">]</span> <span class="o">=</span> <span class="k">function</span><span class="p">()</span> <span class="p">{</span>

    <span class="c1">// Instantiate a meta-data adapter</span>
    <span class="nv">$metaData</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">ApcMetaData</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;lifetime&quot;</span> <span class="o">=&gt;</span> <span class="mi">86400</span><span class="p">,</span>
        <span class="s2">&quot;prefix&quot;</span>   <span class="o">=&gt;</span> <span class="s2">&quot;my-prefix&quot;</span>
    <span class="p">));</span>

    <span class="c1">//Set a custom meta-data database introspection</span>
    <span class="nv">$metaData</span><span class="o">-&gt;</span><span class="na">setStrategy</span><span class="p">(</span><span class="k">new</span> <span class="nx">StrategyAnnotations</span><span class="p">());</span>

    <span class="k">return</span> <span class="nv">$metaData</span><span class="p">;</span>
<span class="p">};</span>
</pre></div>
</div>
</div>
<div class="section" id="manual-meta-data">
<h3>Manual Meta-Data<a class="headerlink" href="#manual-meta-data" title="Ссылка на этот заголовок">¶</a></h3>
<p>Phalcon can obtain the metadata for each model automatically without the developer must set them manually
using any of the introspection strategies presented above.</p>
<p>The developer also has the option of define the metadata manually. This strategy overrides
any strategy set in the  meta-data manager. New columns added/modified/removed to/from the mapped
table must be added/modified/removed also for everything to work properly.</p>
<p>The following example shows how to define the meta-data manually:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Mvc\Model</span><span class="p">,</span>
    <span class="nx">Phalcon\Db\Column</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\MetaData</span><span class="p">;</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">metaData</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">return</span> <span class="k">array</span><span class="p">(</span>

            <span class="c1">//Every column in the mapped table</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_ATTRIBUTES</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;id&#39;</span><span class="p">,</span> <span class="s1">&#39;name&#39;</span><span class="p">,</span> <span class="s1">&#39;type&#39;</span><span class="p">,</span> <span class="s1">&#39;year&#39;</span>
            <span class="p">),</span>

            <span class="c1">//Every column part of the primary key</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_PRIMARY_KEY</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;id&#39;</span>
            <span class="p">),</span>

            <span class="c1">//Every column that isn&#39;t part of the primary key</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_NON_PRIMARY_KEY</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;name&#39;</span><span class="p">,</span> <span class="s1">&#39;type&#39;</span><span class="p">,</span> <span class="s1">&#39;year&#39;</span>
            <span class="p">),</span>

            <span class="c1">//Every column that doesn&#39;t allows null values</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_NOT_NULL</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;id&#39;</span><span class="p">,</span> <span class="s1">&#39;name&#39;</span><span class="p">,</span> <span class="s1">&#39;type&#39;</span><span class="p">,</span> <span class="s1">&#39;year&#39;</span>
            <span class="p">),</span>

            <span class="c1">//Every column and their data types</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_DATA_TYPES</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;id&#39;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">TYPE_INTEGER</span><span class="p">,</span>
                <span class="s1">&#39;name&#39;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">TYPE_VARCHAR</span><span class="p">,</span>
                <span class="s1">&#39;type&#39;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">TYPE_VARCHAR</span><span class="p">,</span>
                <span class="s1">&#39;year&#39;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">TYPE_INTEGER</span>
            <span class="p">),</span>

            <span class="c1">//The columns that have numeric data types</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_DATA_TYPES_NUMERIC</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;id&#39;</span> <span class="o">=&gt;</span> <span class="k">true</span><span class="p">,</span>
                <span class="s1">&#39;year&#39;</span> <span class="o">=&gt;</span> <span class="k">true</span><span class="p">,</span>
            <span class="p">),</span>

            <span class="c1">//The identity column, use boolean false if the model doesn&#39;t have</span>
            <span class="c1">//an identity column</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_IDENTITY_COLUMN</span> <span class="o">=&gt;</span> <span class="s1">&#39;id&#39;</span><span class="p">,</span>

            <span class="c1">//How every column must be bound/casted</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_DATA_TYPES_BIND</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;id&#39;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">BIND_PARAM_INT</span><span class="p">,</span>
                <span class="s1">&#39;name&#39;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">BIND_PARAM_STR</span><span class="p">,</span>
                <span class="s1">&#39;type&#39;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">BIND_PARAM_STR</span><span class="p">,</span>
                <span class="s1">&#39;year&#39;</span> <span class="o">=&gt;</span> <span class="nx">Column</span><span class="o">::</span><span class="na">BIND_PARAM_INT</span><span class="p">,</span>
            <span class="p">),</span>

            <span class="c1">//Fields that must be ignored from INSERT SQL statements</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_AUTOMATIC_DEFAULT_INSERT</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;year&#39;</span> <span class="o">=&gt;</span> <span class="k">true</span>
            <span class="p">),</span>

            <span class="c1">//Fields that must be ignored from UPDATE SQL statements</span>
            <span class="nx">MetaData</span><span class="o">::</span><span class="na">MODELS_AUTOMATIC_DEFAULT_UPDATE</span> <span class="o">=&gt;</span> <span class="k">array</span><span class="p">(</span>
                <span class="s1">&#39;year&#39;</span> <span class="o">=&gt;</span> <span class="k">true</span>
            <span class="p">)</span>

        <span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre></div>
</div>
</div>
</div>
<div class="section" id="pointing-to-a-different-schema">
<h2>Pointing to a different schema<a class="headerlink" href="#pointing-to-a-different-schema" title="Ссылка на этот заголовок">¶</a></h2>
<p>If a model is mapped to a table that is in a different schemas/databases than the default. You can use the getSchema method to define that:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">getSchema</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="k">return</span> <span class="s2">&quot;toys&quot;</span><span class="p">;</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre></div>
</div>
</div>
<div class="section" id="setting-multiple-databases">
<h2>Setting multiple databases<a class="headerlink" href="#setting-multiple-databases" title="Ссылка на этот заголовок">¶</a></h2>
<p>In Phalcon, all models can belong to the same database connection or have an individual one. Actually, when
<a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> needs to connect to the database it requests the &#8220;db&#8221; service
in the application&#8217;s services container. You can overwrite this service setting it in the initialize method:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">//This service returns a MySQL database</span>
<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">set</span><span class="p">(</span><span class="s1">&#39;dbMysql&#39;</span><span class="p">,</span> <span class="k">function</span><span class="p">()</span> <span class="p">{</span>
     <span class="k">return</span> <span class="k">new</span> <span class="nx">\Phalcon\Db\Adapter\Pdo\Mysql</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;host&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;localhost&quot;</span><span class="p">,</span>
        <span class="s2">&quot;username&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;root&quot;</span><span class="p">,</span>
        <span class="s2">&quot;password&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;secret&quot;</span><span class="p">,</span>
        <span class="s2">&quot;dbname&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;invo&quot;</span>
    <span class="p">));</span>
<span class="p">});</span>

<span class="c1">//This service returns a PostgreSQL database</span>
<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">set</span><span class="p">(</span><span class="s1">&#39;dbPostgres&#39;</span><span class="p">,</span> <span class="k">function</span><span class="p">()</span> <span class="p">{</span>
     <span class="k">return</span> <span class="k">new</span> <span class="nx">\Phalcon\Db\Adapter\Pdo\PostgreSQL</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;host&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;localhost&quot;</span><span class="p">,</span>
        <span class="s2">&quot;username&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;postgres&quot;</span><span class="p">,</span>
        <span class="s2">&quot;password&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;&quot;</span><span class="p">,</span>
        <span class="s2">&quot;dbname&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;invo&quot;</span>
    <span class="p">));</span>
<span class="p">});</span>
</pre></div>
</div>
<p>Then, in the Initialize method, we define the connection service for the model:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">setConnectionService</span><span class="p">(</span><span class="s1">&#39;dbPostgres&#39;</span><span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre></div>
</div>
<p>But Phalcon offers you more flexibility, you can define the connection that must be used to &#8216;read&#8217; and for &#8216;write&#8217;. This is specially useful
to balance the load to your databases implementing a master-slave architecture:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">initialize</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">setReadConnectionService</span><span class="p">(</span><span class="s1">&#39;dbSlave&#39;</span><span class="p">);</span>
        <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">setWriteConnectionService</span><span class="p">(</span><span class="s1">&#39;dbMaster&#39;</span><span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre></div>
</div>
<p>The ORM also provides Horizontal Sharding facilities, by allowing you to implement a &#8216;shard&#8217; selection
according to the current query conditions:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">Phalcon\Mvc\Model</span>
<span class="p">{</span>
    <span class="sd">/**</span>
<span class="sd">     * Dynamically selects a shard</span>
<span class="sd">     *</span>
<span class="sd">     * @param array $intermediate</span>
<span class="sd">     * @param array $bindParams</span>
<span class="sd">     * @param array $bindTypes</span>
<span class="sd">     */</span>
    <span class="k">public</span> <span class="k">function</span> <span class="nf">selectReadConnection</span><span class="p">(</span><span class="nv">$intermediate</span><span class="p">,</span> <span class="nv">$bindParams</span><span class="p">,</span> <span class="nv">$bindTypes</span><span class="p">)</span>
    <span class="p">{</span>
        <span class="c1">//Check if there is a &#39;where&#39; clause in the select</span>
        <span class="k">if</span> <span class="p">(</span><span class="nb">isset</span><span class="p">(</span><span class="nv">$intermediate</span><span class="p">[</span><span class="s1">&#39;where&#39;</span><span class="p">]))</span> <span class="p">{</span>

            <span class="nv">$conditions</span> <span class="o">=</span> <span class="nv">$intermediate</span><span class="p">[</span><span class="s1">&#39;where&#39;</span><span class="p">];</span>

            <span class="c1">//Choose the possible shard according to the conditions</span>
            <span class="k">if</span> <span class="p">(</span><span class="nv">$conditions</span><span class="p">[</span><span class="s1">&#39;left&#39;</span><span class="p">][</span><span class="s1">&#39;name&#39;</span><span class="p">]</span> <span class="o">==</span> <span class="s1">&#39;id&#39;</span><span class="p">)</span> <span class="p">{</span>
                <span class="nv">$id</span> <span class="o">=</span> <span class="nv">$conditions</span><span class="p">[</span><span class="s1">&#39;right&#39;</span><span class="p">][</span><span class="s1">&#39;value&#39;</span><span class="p">];</span>
                <span class="k">if</span> <span class="p">(</span><span class="nv">$id</span> <span class="o">&gt;</span> <span class="mi">0</span> <span class="o">&amp;&amp;</span> <span class="nv">$id</span> <span class="o">&lt;</span> <span class="mi">10000</span><span class="p">)</span> <span class="p">{</span>
                    <span class="k">return</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">getDI</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">get</span><span class="p">(</span><span class="s1">&#39;dbShard1&#39;</span><span class="p">);</span>
                <span class="p">}</span>
                <span class="k">if</span> <span class="p">(</span><span class="nv">$id</span> <span class="o">&gt;</span> <span class="mi">10000</span><span class="p">)</span> <span class="p">{</span>
                    <span class="k">return</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">getDI</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">get</span><span class="p">(</span><span class="s1">&#39;dbShard2&#39;</span><span class="p">);</span>
                <span class="p">}</span>
            <span class="p">}</span>
        <span class="p">}</span>

        <span class="c1">//Use a default shard</span>
        <span class="k">return</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">getDI</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">get</span><span class="p">(</span><span class="s1">&#39;dbShard0&#39;</span><span class="p">);</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre></div>
</div>
<p>The method &#8216;selectReadConnection&#8217; is called to choose the right connection, this method intercepts any new
query executed:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">findFirst</span><span class="p">(</span><span class="s1">&#39;id = 101&#39;</span><span class="p">);</span>
</pre></div>
</div>
</div>
<div class="section" id="logging-low-level-sql-statements">
<h2>Logging Low-Level SQL Statements<a class="headerlink" href="#logging-low-level-sql-statements" title="Ссылка на этот заголовок">¶</a></h2>
<p>When using high-level abstraction components such as <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a> to access a database, it is
difficult to understand which statements are finally sent to the database system. <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a>
is supported internally by <a class="reference internal" href="../api/Phalcon_Db.html"><em>Phalcon\Db</em></a>. <a class="reference internal" href="../api/Phalcon_Logger.html"><em>Phalcon\Logger</em></a> interacts
with <a class="reference internal" href="../api/Phalcon_Db.html"><em>Phalcon\Db</em></a>, providing logging capabilities on the database abstraction layer, thus allowing us to log SQL
statements as they happen.</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\Logger</span><span class="p">,</span>
    <span class="nx">Phalcon\Db\Adapter\Pdo\Mysql</span> <span class="k">as</span> <span class="nx">Connection</span><span class="p">,</span>
    <span class="nx">Phalcon\Events\Manager</span><span class="p">,</span>
    <span class="nx">Phalcon\Logger\Adapter\File</span><span class="p">;</span>

<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">set</span><span class="p">(</span><span class="s1">&#39;db&#39;</span><span class="p">,</span> <span class="k">function</span><span class="p">()</span> <span class="p">{</span>

    <span class="nv">$eventsManager</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">EventsManager</span><span class="p">();</span>

    <span class="nv">$logger</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Logger</span><span class="p">(</span><span class="s2">&quot;app/logs/debug.log&quot;</span><span class="p">);</span>

    <span class="c1">//Listen all the database events</span>
    <span class="nv">$eventsManager</span><span class="o">-&gt;</span><span class="na">attach</span><span class="p">(</span><span class="s1">&#39;db&#39;</span><span class="p">,</span> <span class="k">function</span><span class="p">(</span><span class="nv">$event</span><span class="p">,</span> <span class="nv">$connection</span><span class="p">)</span> <span class="k">use</span> <span class="p">(</span><span class="nv">$logger</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$event</span><span class="o">-&gt;</span><span class="na">getType</span><span class="p">()</span> <span class="o">==</span> <span class="s1">&#39;beforeQuery&#39;</span><span class="p">)</span> <span class="p">{</span>
            <span class="nv">$logger</span><span class="o">-&gt;</span><span class="na">log</span><span class="p">(</span><span class="nv">$connection</span><span class="o">-&gt;</span><span class="na">getSQLStatement</span><span class="p">(),</span> <span class="nx">Logger</span><span class="o">::</span><span class="na">INFO</span><span class="p">);</span>
        <span class="p">}</span>
    <span class="p">});</span>

    <span class="nv">$connection</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Connection</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;host&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;localhost&quot;</span><span class="p">,</span>
        <span class="s2">&quot;username&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;root&quot;</span><span class="p">,</span>
        <span class="s2">&quot;password&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;secret&quot;</span><span class="p">,</span>
        <span class="s2">&quot;dbname&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;invo&quot;</span>
    <span class="p">));</span>

    <span class="c1">//Assign the eventsManager to the db adapter instance</span>
    <span class="nv">$connection</span><span class="o">-&gt;</span><span class="na">setEventsManager</span><span class="p">(</span><span class="nv">$eventsManager</span><span class="p">);</span>

    <span class="k">return</span> <span class="nv">$connection</span><span class="p">;</span>
<span class="p">});</span>
</pre></div>
</div>
<p>As models access the default database connection, all SQL statements that are sent to the database system will be logged in the file:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$robot</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">Robots</span><span class="p">();</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">name</span> <span class="o">=</span> <span class="s2">&quot;Robby the Robot&quot;</span><span class="p">;</span>
<span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">created_at</span> <span class="o">=</span> <span class="s2">&quot;1956-07-21&quot;</span>
<span class="k">if</span> <span class="p">(</span><span class="nv">$robot</span><span class="o">-&gt;</span><span class="na">save</span><span class="p">()</span> <span class="o">==</span> <span class="k">false</span><span class="p">)</span> <span class="p">{</span>
    <span class="k">echo</span> <span class="s2">&quot;Cannot save robot&quot;</span><span class="p">;</span>
<span class="p">}</span>
</pre></div>
</div>
<p>As above, the file <em>app/logs/db.log</em> will contain something like this:</p>
<div class="highlight-irc"><div class="highlight"><pre>[Mon, 30 Apr 12 13:47:18 -0500][DEBUG][Resource Id #77] INSERT INTO robots
(name, created_at) VALUES (&#39;Robby the Robot&#39;, &#39;1956-07-21&#39;)
</pre></div>
</div>
</div>
<div class="section" id="profiling-sql-statements">
<h2>Profiling SQL Statements<a class="headerlink" href="#profiling-sql-statements" title="Ссылка на этот заголовок">¶</a></h2>
<p>Thanks to <a class="reference internal" href="../api/Phalcon_Db.html"><em>Phalcon\Db</em></a>, the underlying component of <a class="reference internal" href="../api/Phalcon_Mvc_Model.html"><em>Phalcon\Mvc\Model</em></a>,
it&#8217;s possible to profile the SQL statements generated by the ORM in order to analyze the performance of database operations. With
this you can diagnose performance problems and to discover bottlenecks.</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">set</span><span class="p">(</span><span class="s1">&#39;profiler&#39;</span><span class="p">,</span> <span class="k">function</span><span class="p">(){</span>
    <span class="k">return</span> <span class="k">new</span> <span class="nx">\Phalcon\Db\Profiler</span><span class="p">();</span>
<span class="p">},</span> <span class="k">true</span><span class="p">);</span>

<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">set</span><span class="p">(</span><span class="s1">&#39;db&#39;</span><span class="p">,</span> <span class="k">function</span><span class="p">()</span> <span class="k">use</span> <span class="p">(</span><span class="nv">$di</span><span class="p">)</span> <span class="p">{</span>

    <span class="nv">$eventsManager</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">\Phalcon\Events\Manager</span><span class="p">();</span>

    <span class="c1">//Get a shared instance of the DbProfiler</span>
    <span class="nv">$profiler</span> <span class="o">=</span> <span class="nv">$di</span><span class="o">-&gt;</span><span class="na">getProfiler</span><span class="p">();</span>

    <span class="c1">//Listen all the database events</span>
    <span class="nv">$eventsManager</span><span class="o">-&gt;</span><span class="na">attach</span><span class="p">(</span><span class="s1">&#39;db&#39;</span><span class="p">,</span> <span class="k">function</span><span class="p">(</span><span class="nv">$event</span><span class="p">,</span> <span class="nv">$connection</span><span class="p">)</span> <span class="k">use</span> <span class="p">(</span><span class="nv">$profiler</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$event</span><span class="o">-&gt;</span><span class="na">getType</span><span class="p">()</span> <span class="o">==</span> <span class="s1">&#39;beforeQuery&#39;</span><span class="p">)</span> <span class="p">{</span>
            <span class="nv">$profiler</span><span class="o">-&gt;</span><span class="na">startProfile</span><span class="p">(</span><span class="nv">$connection</span><span class="o">-&gt;</span><span class="na">getSQLStatement</span><span class="p">());</span>
        <span class="p">}</span>
        <span class="k">if</span> <span class="p">(</span><span class="nv">$event</span><span class="o">-&gt;</span><span class="na">getType</span><span class="p">()</span> <span class="o">==</span> <span class="s1">&#39;afterQuery&#39;</span><span class="p">)</span> <span class="p">{</span>
            <span class="nv">$profiler</span><span class="o">-&gt;</span><span class="na">stopProfile</span><span class="p">();</span>
        <span class="p">}</span>
    <span class="p">});</span>

    <span class="nv">$connection</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">\Phalcon\Db\Adapter\Pdo\Mysql</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
        <span class="s2">&quot;host&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;localhost&quot;</span><span class="p">,</span>
        <span class="s2">&quot;username&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;root&quot;</span><span class="p">,</span>
        <span class="s2">&quot;password&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;secret&quot;</span><span class="p">,</span>
        <span class="s2">&quot;dbname&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;invo&quot;</span>
    <span class="p">));</span>

    <span class="c1">//Assign the eventsManager to the db adapter instance</span>
    <span class="nv">$connection</span><span class="o">-&gt;</span><span class="na">setEventsManager</span><span class="p">(</span><span class="nv">$eventsManager</span><span class="p">);</span>

    <span class="k">return</span> <span class="nv">$connection</span><span class="p">;</span>
<span class="p">});</span>
</pre></div>
</div>
<p>Profiling some queries:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="c1">// Send some SQL statements to the database</span>
<span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">();</span>
<span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="k">array</span><span class="p">(</span><span class="s2">&quot;order&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;name&quot;</span><span class="p">);</span>
<span class="nx">Robots</span><span class="o">::</span><span class="na">find</span><span class="p">(</span><span class="k">array</span><span class="p">(</span><span class="s2">&quot;limit&quot;</span> <span class="o">=&gt;</span> <span class="mi">30</span><span class="p">);</span>

<span class="c1">//Get the generated profiles from the profiler</span>
<span class="nv">$profiles</span> <span class="o">=</span> <span class="nv">$di</span><span class="o">-&gt;</span><span class="na">get</span><span class="p">(</span><span class="s1">&#39;profiler&#39;</span><span class="p">)</span><span class="o">-&gt;</span><span class="na">getProfiles</span><span class="p">();</span>

<span class="k">foreach</span> <span class="p">(</span><span class="nv">$profiles</span> <span class="k">as</span> <span class="nv">$profile</span><span class="p">)</span> <span class="p">{</span>
   <span class="k">echo</span> <span class="s2">&quot;SQL Statement: &quot;</span><span class="p">,</span> <span class="nv">$profile</span><span class="o">-&gt;</span><span class="na">getSQLStatement</span><span class="p">(),</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
   <span class="k">echo</span> <span class="s2">&quot;Start Time: &quot;</span><span class="p">,</span> <span class="nv">$profile</span><span class="o">-&gt;</span><span class="na">getInitialTime</span><span class="p">(),</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
   <span class="k">echo</span> <span class="s2">&quot;Final Time: &quot;</span><span class="p">,</span> <span class="nv">$profile</span><span class="o">-&gt;</span><span class="na">getFinalTime</span><span class="p">(),</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
   <span class="k">echo</span> <span class="s2">&quot;Total Elapsed Time: &quot;</span><span class="p">,</span> <span class="nv">$profile</span><span class="o">-&gt;</span><span class="na">getTotalElapsedSeconds</span><span class="p">(),</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">;</span>
<span class="p">}</span>
</pre></div>
</div>
<p>Each generated profile contains the duration in miliseconds that each instruction takes to complete as well as the generated SQL statement.</p>
</div>
<div class="section" id="injecting-services-into-models">
<h2>Injecting services into Models<a class="headerlink" href="#injecting-services-into-models" title="Ссылка на этот заголовок">¶</a></h2>
<p>You may be required to access the application services within a model, the following example explains how to do that:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">\Phalcon\Mvc\Model</span>
<span class="p">{</span>

    <span class="k">public</span> <span class="k">function</span> <span class="nf">notSave</span><span class="p">()</span>
    <span class="p">{</span>
        <span class="c1">//Obtain the flash service from the DI container</span>
        <span class="nv">$flash</span> <span class="o">=</span> <span class="nv">$this</span><span class="o">-&gt;</span><span class="na">getDI</span><span class="p">()</span><span class="o">-&gt;</span><span class="na">getFlash</span><span class="p">();</span>

        <span class="c1">//Show validation messages</span>
        <span class="k">foreach</span> <span class="p">(</span><span class="nv">$this</span><span class="o">-&gt;</span><span class="na">getMesages</span><span class="p">()</span> <span class="k">as</span> <span class="nv">$message</span><span class="p">)</span> <span class="p">{</span>
            <span class="nv">$flash</span><span class="o">-&gt;</span><span class="na">error</span><span class="p">((</span><span class="nx">string</span><span class="p">)</span> <span class="nv">$message</span><span class="p">);</span>
        <span class="p">}</span>
    <span class="p">}</span>

<span class="p">}</span>
</pre></div>
</div>
<p>The &#8220;notSave&#8221; event is triggered every time that a &#8220;create&#8221; or &#8220;update&#8221; action fails. So we&#8217;re flashing the validation messages
obtaining the &#8220;flash&#8221; service from the DI container. By doing this, we don&#8217;t have to print messages after each save.</p>
</div>
<div class="section" id="disabling-enabling-features">
<h2>Disabling/Enabling Features<a class="headerlink" href="#disabling-enabling-features" title="Ссылка на этот заголовок">¶</a></h2>
<p>In the ORM we have implemented a mechanism that allow you to enable/disable specific features or options globally on the fly.
According to how you use the ORM you can disable that you aren&#8217;t using. These options can also be temporarily disabled if required:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="nx">\Phalcon\Mvc\Model</span><span class="o">::</span><span class="na">setup</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
    <span class="s1">&#39;events&#39;</span> <span class="o">=&gt;</span> <span class="k">false</span><span class="p">,</span>
    <span class="s1">&#39;columnRenaming&#39;</span> <span class="o">=&gt;</span> <span class="k">false</span>
<span class="p">));</span>
</pre></div>
</div>
<p>The available options are:</p>
<table border="1" class="docutils">
<colgroup>
<col width="20%" />
<col width="80%" />
</colgroup>
<thead valign="bottom">
<tr class="row-odd"><th class="head">Option</th>
<th class="head">Description</th>
</tr>
</thead>
<tbody valign="top">
<tr class="row-even"><td>events</td>
<td>Enables/Disables callbacks, hooks and event notifications from all the models</td>
</tr>
<tr class="row-odd"><td>columnRenaming</td>
<td>Enables/Disables the column renaming</td>
</tr>
<tr class="row-even"><td>notNullValidations</td>
<td>The ORM automatically validate the not null columns present in the mapped table</td>
</tr>
<tr class="row-odd"><td>virtualForeignKeys</td>
<td>Enables/Disables the virtual foreign keys</td>
</tr>
</tbody>
</table>
</div>
<div class="section" id="stand-alone-component">
<h2>Stand-Alone component<a class="headerlink" href="#stand-alone-component" title="Ссылка на этот заголовок">¶</a></h2>
<p>Using <a class="reference internal" href=""><em>Phalcon\Mvc\Model</em></a> in a stand-alone mode can be demonstrated below:</p>
<div class="highlight-php"><div class="highlight"><pre><span class="cp">&lt;?php</span>

<span class="k">use</span> <span class="nx">Phalcon\DI</span><span class="p">,</span>
    <span class="nx">Phalcon\Db\Adapter\Pdo\Sqlite</span> <span class="k">as</span> <span class="nx">Connection</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\Manager</span> <span class="k">as</span> <span class="nx">ModelsManager</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model\Metadata\Memory</span> <span class="k">as</span> <span class="nx">MetaData</span><span class="p">,</span>
    <span class="nx">Phalcon\Mvc\Model</span><span class="p">;</span>

<span class="nv">$di</span> <span class="o">=</span> <span class="k">new</span> <span class="nx">DI</span><span class="p">();</span>

<span class="c1">//Setup a connection</span>
<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">set</span><span class="p">(</span><span class="s1">&#39;db&#39;</span><span class="p">,</span> <span class="k">new</span> <span class="nx">Connection</span><span class="p">(</span><span class="k">array</span><span class="p">(</span>
    <span class="s2">&quot;dbname&quot;</span> <span class="o">=&gt;</span> <span class="s2">&quot;sample.db&quot;</span>
<span class="p">)));</span>

<span class="c1">//Set a models manager</span>
<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">set</span><span class="p">(</span><span class="s1">&#39;modelsManager&#39;</span><span class="p">,</span> <span class="k">new</span> <span class="nx">ModelsManager</span><span class="p">());</span>

<span class="c1">//Use the memory meta-data adapter or other</span>
<span class="nv">$di</span><span class="o">-&gt;</span><span class="na">set</span><span class="p">(</span><span class="s1">&#39;modelsMetadata&#39;</span><span class="p">,</span> <span class="k">new</span> <span class="nx">MetaData</span><span class="p">());</span>

<span class="c1">//Create a model</span>
<span class="k">class</span> <span class="nc">Robots</span> <span class="k">extends</span> <span class="nx">Model</span>
<span class="p">{</span>

<span class="p">}</span>

<span class="c1">//Use the model</span>
<span class="k">echo</span> <span class="nx">Robots</span><span class="o">::</span><span class="na">count</span><span class="p">();</span>
</pre></div>
</div>
</div>
</div>


</div>

</div>
</div>

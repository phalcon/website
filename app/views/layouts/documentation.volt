<div class="header-line">
    <div class="size-wrap">
        <div class="header-line-title title-white">Documentation</div>
    </div>
</div>

<div class="size-wrap">

    <div class="note">Phalcon's documentation is maintained in <a href="#">Github repositories</a>. You are more than welcome to send us pull requests if you found an error or if</div>

    <div class="content-wrap clear-fix">

        <div class="sidebar">

            <div class="searchbox-wrap">
                <input type="text" name="q" id="searchbox" class="searchbox" placeholder="Search"/>
                <input type="submit" class="search-button"/>
            </div>

            <div class="table-of-contents">
                {{ partial("documentation/toc") }}
            </div>

        </div>

        <div class="content">

            <div class="h4 section-title">Getting Started</div>

            <?php echo $this->getContent(); ?>

        </div>
    </div>

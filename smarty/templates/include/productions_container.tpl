<div class="container">
    <div class="row row-eq-height">
        {foreach from=$productions item=production}
            <div class="col-xs-12 col-sm-6 col-lg-4">
                {include file='include/production.tpl' production=$production}
            </div>
        {/foreach}
    </div>
</div>
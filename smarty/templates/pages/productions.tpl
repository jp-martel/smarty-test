{include file='../include/meta.tpl'}
{include file='../include/header.tpl'}
{nocache}
{if !isset($production) }
    <h3>Production not found</h3>
{else}
    <section id="productions-page">
        <div class="container">
            <div class="row row-eq-height">
                <div class="col-xs-12">
                    {include file='include/production.tpl' production=$production showExtraInfo=true}
                </div>
            </div>
        </div>
    </section>
    <section id="related-productions">
        <h3 class="text-center">Related Productions</h3>
        {include file='include/productions_container.tpl' productions=$relatedProductions}
    </section>
{/if}
{/nocache}
{include file='../include/footer.tpl'}
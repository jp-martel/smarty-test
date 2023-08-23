<div class="panel production-panel">
    <img src="{$baseurl}{$production.img_src}" alt="{$production.name} image" class="production-image">
    <div class="panel-body">
        <h4>{$production.name}</h4>
        <p>{$production.shortDescription}</p>
        {if isset($showExtraInfo) && $showExtraInfo }
            <p><strong>Company: </strong>{$production.company}</p>
            <p><strong>Venue: </strong>{$production.venue}</p>
            <p><strong>Dates: </strong></br>
                {foreach from=$production.dates item=date}
                    {$date}</br>
                {/foreach}
            </p>
        {/if}
        <div class="panel-buttons">
            {foreach from=$production.buttons item=button}
                <a type="button" class="{$button.type} btn-primary" href="{$button.href}">{$button.label}</a>
            {/foreach}
        </div>
    </div>
</div>
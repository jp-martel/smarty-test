{include file='include/meta.tpl'}
{include file='include/header.tpl'}
{assign var="default_banner" value="0"}
<section id="home-banner">
  <!--  Carousel -->
  <div id="home-carousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      {foreach from=$banners.banners key=k item=banner}
        <li data-target="#home-carousel" data-slide-to="{$k}" {if $k == $default_banner}class="active" {/if}></li>
      {/foreach}
    </ol>
    <div class="carousel-inner">
      {foreach from=$banners.banners key=k item=banner}
        <div class="item {if $k == $default_banner}active{/if}">
          <a href="{$banner.link.href}" target="{$banner.link.target}">
            <img src="{$banner.banner_src}" alt="{$banner.alt}">
            <div class="carousel-caption centered">
              <span class="caption">{$banner.alt}</span>
            </div>
          </a>
        </div>
      {/foreach}
    </div><!-- .carousel-inner -->
    <a class="left carousel-control" href="#home-carousel" data-slide="prev"><span
        class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#home-carousel" data-slide="next"><span
        class="glyphicon glyphicon-chevron-right"></span></a>
  </div><!-- .carousel -->
  <!-- end carousel -->
</section>
<section id="home-productions">
  <h3 class="text-center"> WOW Festival Tickets </h3>
  {include file='include/productions_container.tpl' productions=$productions.productions}
</section>
{include file='include/footer.tpl'}
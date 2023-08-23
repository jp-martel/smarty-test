{if !isset($baseurl) }
  {assign var="baseurl" value=""}
{/if}
{config_load file='app.conf'}
<!----------- Footer ------------>
<footer class="page-footer fixed-bottom">
  <div class="row">
    <div class="col-md-5 footer-brand">
      <h2>{#appTitle#}</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
        magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat.</p>
      <p>{#copyrightText#}</p>
    </div>
    <div class="col-xs-6 col-md-3 col-md-offset-1 footer-nav">
      <h4>Menu</h4>
      <ul class="list">
        <li><a href="/">Home</a></li>
        <li><a href="/about">About Us</a></li>
        <li><a href="/contact">Contacts</a></li>
      </ul>
    </div>
    <div class="col-xs-6 col-md-3 footer-social">
      <h4>Follow Us</h4>
      <ul>
        <li><a href="https://facebook.com/">Facebook</a></li>
        <li><a href="https://instagram.com/">Instagram</a></li>
        <li><a href="https://twitter.com/">Twitter</a></li>
      </ul>
    </div>
  </div>
</footer>

<script type="text/javascript" src="{$baseurl}js/jquery.js"></script>
<script type="text/javascript" src="{$baseurl}js/bootstrap.js"></script>
</div>
</body>

</html>
{include file='../include/meta.tpl'}
{include file='../include/header.tpl'}
<section id="about-us">
    <h1 class="text-center">About us</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <p style="padding: 5px 10px">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis ullam aut quo blanditiis
                    aliquid
                    voluptates corporis dolor facilis minima aliquam nisi in, libero qui eum deserunt perspiciatis
                    placeat reiciendis dicta. Animi beatae fugit unde quaerat atque architecto. Nisi consectetur ab
                    dicta laudantium, nemo aut, fuga iste voluptatibus voluptatum tempora velit sit dolorem.
                </p>
            </div>
        </div>
    </div>
</section>
<section id="our-team">
    <h1 class="text-center">Our Team</h1>
    <div class="container">
        <div class="row">
            {foreach from=$employees key=key item=employee}
                {include file='include/employee.tpl' employee=$employee}
            {/foreach}
        </div>
    </div>
</section>

{include file='../include/footer.tpl'}
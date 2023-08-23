{include file='../include/meta.tpl'}
{include file='../include/header.tpl'}
<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-8">
                <div class="panel contact-panel">
                    <div class="panel-header">
                        <h3 class="text-center"><i class="fa fa-envelope"></i> Contact us </h3>
                    </div>
                    <div class="panel-body">
                        <form>
                            <div class="form-group">
                                <label for="first-name">First name</label>
                                <input type="text" class="form-control" id="first-name" placeholder="Enter first name"
                                    required>
                            </div>
                            <div class="form-group">
                                <label for="last-name">Last name</label>
                                <input type="text" class="form-control" id="last-name" placeholder="Enter last name"
                                    required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone</label>
                                <input type="phone" class="form-control" id="phone" placeholder="Enter phone" required>
                            </div>
                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea class="form-control" id="message" rows="6" required></textarea>
                            </div>
                            <div class="mx-auto">
                                <button type="submit" class="btn btn-primary text-right">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-4">
                <div class="panel info-panel">
                    <div class="panel-header">
                        <h3 class="text-center"><i class="fa fa-map-marker"></i> Medano Tickets</h3>
                    </div>
                    <div class="panel-body">
                        <p><strong>Address:</strong></br>
                        <p>C. Evaristo Gómez González, nº99</p>
                        <p>38612 El Médano</p>
                        <p>España</p>
                        <p>
                            <strong>Email: </strong>
                            <a href="mailto:email@example.com">email@example.com</a>
                        </p>
                        <p><strong>Phone number: </strong><a href="tel:+34123456789">+34 123 456 789</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
{include file='../include/footer.tpl'}
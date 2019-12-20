<?php
/*
Template name:ClientCompte
*/


get_header();

if (!function_exists('get_field')) return;
?>


    <div class="content">
        <div id="primary" class="content-area">
            <main id="main" class="site-main compte">
                <h4>Mon compte</h4>
                <div class="wrap--button">
                    <button type="button" class="btn--compte btn--compte1">Mes informations</button>
                    <button type="button" class="btn--compte btn--compte2">Mes commandes</button>
                    <button type="button" class=" btn--compte btn--compte3">Mes favoris</button>
                </div>
            </main>
        </div>
    </div>

<?php
get_footer();

<footer>
    <div class="footer--wrapper">
        <div class="footer--left">
            <div class="menuFooter"><?php wp_nav_menu(array('theme_location' => 'footer_menu')); ?></div>
        </div>
        <div class="footer--center">
            <img src="<?php echo get_template_directory_uri(); ?>/images/Logo_blanc.png" class="logoKerakoWhite">
            <h3>Atelier Kérako</h3>
            <p>22 aulnois 02400 Essômes sur Marne</p>
            <p>06 28 76 55 67</p>
            <p>contact@atelier-kerako.com</p>
        </div>
        <div class="newsletterForm">
            <h5>S'abonner à la newsletter</h5>
            <input placeholder="Votre adresse mail">
        </div>
    </div>
    <hr class="bottom--social">
    <div class="menuMedia">
        <div class="mediaFlex">
            <p>Nous suivre</p>
            <ul class="footer-socialNetworks">
                <li><a href=""><img src="<?php echo get_template_directory_uri(); ?>/images/réseaublancFB.png"
                                    class="mediaLogo"></a></li>
                <li class="mediaLogoLn"><a href=""><img src="<?php echo get_template_directory_uri(); ?>/images/ln.png"
                                                        class="mediaLogo"></a></li>
                <li><a href=""><img src="<?php echo get_template_directory_uri(); ?>/images/réseaublancINSTA.png"
                                    class="mediaLogo"></a></li>
            </ul>
        </div>
    </div>
    <div class="footer--leg">
        <ul>
            <li><a href="">© 2019 test</a></li>
            <li class="pipe"><a href="">|</a></li>
            <li><a href="">Mentions légales </a></li>
            <li class="pipe"><a href="">|</a></li>
            <li><a href="">Politique de confidentialité </a></li>
            <li class="pipe"><a href="">|</a></li>
            <li><a href="">Conditions Générales de Vente</a></li>
        </ul>
    </div>
</footer>

</div>

<?php wp_footer(); ?>

<!-- Scripts -->
<script src="<?php echo esc_url(get_template_directory_rri()); ?>/js/script.js"></script>
<script src="<?php echo esc_url(get_template_directory_rri()); ?>/js/jquery-3.4.1.min.js"></script>

</body>
</html>

<footer>
    <div class="footer--wrapper">
        <div class="footer--left">
            <img src="<?php echo get_template_directory_uri(); ?>/images/Logo_blanc.png" class="logoKerakoWhite">
            <div class="menuFooter"><?php wp_nav_menu(array('theme_location' => 'footer_menu')); ?></div>
        </div>
        <div class="footer--center">
            <h3>Atelier Kérako</h3>
            <p>12 Avenue Léonard de Vinci, 92400 Courbevoie </p>
            <p>06.06.06.06.06</p>
            <p>Test.test@gmail.com</p>
        </div>
        <div class="footer--right">
            <p>Nous suivre</p>
            <ul class="footer-socialNetworks">
                <li><a href=""><img src="<?php echo get_template_directory_uri(); ?>/images/réseaublancFB.png"
                            class="logoKerakoWhite"></a></li>
                <li><a href=""><img src="<?php echo get_template_directory_uri(); ?>/images/réseaublancINSTA.png"
                            class="logoKerakoWhite"></a></li>
            </ul>
            <h5>S'abonner à la newsletter</h5>
            <input placeholder="Tom mail">
        </div>
    </div>
</footer>

</div>

<?php wp_footer(); ?>

<!-- Scripts -->
<script src="<?php echo esc_url(get_template_directory_rri()); ?>/js/script.js"></script>
<script src="<?php echo esc_url(get_template_directory_rri()); ?>/js/jquery-3.4.1.min.js"></script>

</body>
</html>

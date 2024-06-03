<?php
get_header();

while (have_posts()) {
    the_post(); 
    pageBanner();
    ?>


    <div class="container container--narrow page-section">
    
    <div class="one-third">
    <?php the_post_thumbnail('professorPortrait') ?>
    </div>
    <div class="two-third">

        <div class="generic-content"><?php the_content(); ?> 
    </div>
        
        
        
        <?php 
        $relatedPrograms = get_field('related_programs');
        
        if($relatedPrograms){
        echo "<hr class='section-break'>";
        echo "<h2 class='headline headline-medium'>Subjects taught</h2>";
        echo "<ul class='link-list min-list'>"; 
        foreach($relatedPrograms as $program){ ?>
            <li><a href="<?php echo get_the_permalink($program);?>"><?php echo get_the_title($program); ?></a></li>
        <?php }
        }
        ?>
        </ul>
    
    </div>
    </div>

<?php
}
get_footer();
?>
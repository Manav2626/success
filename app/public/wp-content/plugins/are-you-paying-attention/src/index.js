//wp wordpress uses as browser's global scope, inside that blocks. wp-blocks is set as "dependency" in index.php to load before our js file
wp.blocks.registerBlockType("ourplugin/are-you-paying-attention",{
    title: "Are you paying attention",
    icon: "smiley",
    category: "common",
    edit: function (){
        //what will see on post editor screen
        return <h3>Hello </h3>
        

    },
    save: function(){
        //what will see on actual user screen
        return wp.element.createElement("h1",null,"This is the fronend.")
    }
})



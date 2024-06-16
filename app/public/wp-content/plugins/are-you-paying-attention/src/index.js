//wp wordpress uses as browser's global scope, inside that blocks. wp-blocks is set as "dependency" in index.php to load before our js file
wp.blocks.registerBlockType("ourplugin/are-you-paying-attention",{
    title: "Are you paying attention",
    icon: "smiley",
    category: "common",
    attributes:{
        skyColor: {type: "string"},
        grassColor: {type: "string"}
    },
    edit: function (props){
        function updateSkyColor(event){
            props.setAttributes({skyColor: event.target.value})
        }
        function updateGrassColor(event){
            props.setAttributes({grassColor: event.target.value})
        }
        //what will see on post editor screen
        return (
            <div>
                <input type="text" placeholder="sky color" value={props.attributes.skyColor} onChange={updateSkyColor}/>
                <input type="text" placeholder="grass color" value={props.attributes.grassColor} onChange={updateGrassColor} />
            </div>
        )
        

    },
// Whenevr changes made in code can lead to error on editor, cause nothing is saved before changes, CAN USE DEPRICATED, but NOT the best menthod, it's manual. USE PHP and return NULL to save function 
    save: function(props){
        //what will see on actual user screen
        return null
    },
    
})

/*
To create a block by self, Have 2 things edit && save
edit-> for editor
save-> what customer will see 
Now to use function
    - mention attributes before edit
We want LIVE updates and NOT ON SAVE
    - add onChange
    - create function for it

*/


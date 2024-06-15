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
                <input type="text" placeholder="sky color" onChange={updateSkyColor}/>
                <input type="text" placeholder="grass color" onChange={updateGrassColor} />
            </div>
        )
        

    },
    save: function(props){
        //what will see on actual user screen
        return (
        
            <p>Today the sky is {props.attributes.skyColor} and the grass is {props.attributes.grassColor}</p> 
            
        )
    }
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


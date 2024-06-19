import "./index.scss"
import {TextControl, Flex, FlexBlock, FlexItem, Button, Icon, PanelBody, PanelRow} from "@wordpress/components"
import {InspectorControls, BlockControls, AlignmentToolbar, useBlockProps} from "@wordpress/block-editor"
import {ChromePicker} from "react-color"

//function to handle save/update post only when correct answer is selected
(function (){
    let locked = false
    wp.data.subscribe(function(){
        // const results = wp.data.select("code/block-editor").getBlocks() -> gives array of data for each block on wordpress current page and live
        const results = wp.data.select("core/block-editor").getBlocks().filter(function(block){
            return block.name == "ourplugin/are-you-paying-attention" && block.attributes.correctAnswer == undefined
        })
        if (results.length && locked == false ){
            locked = true
            wp.data.dispatch("core/editor").lockPostSaving("noanswer")
        }
        if (!results.length && locked ){
            locked = false
            wp.data.dispatch("core/editor").unlockPostSaving("noanswer")
        }
    })
})()

//wp wordpress uses as browser's global scope, inside that blocks. wp-blocks is set as "dependency" in index.php to load before our js file
wp.blocks.registerBlockType("ourplugin/are-you-paying-attention",{
    title: "Are you paying attention",
    icon: "smiley",
    category: "common",
    attributes:{
        question: {type: "string"},
        answers: {type: "array", default: [""]},
        correctAnswer: {type: "number", default: undefined},
        bgColor: {type: "string", default:"#EBEBEB"},
        theAlignment: {type: "string", default: "left"}
    },
    description: " Give your audience a chance to prove their comprehension.",
    example:{
        attributes:{
            question: "What is your name?",
            correctAnswer: 0,
            answers: ['Manav', 'John', 'Tony', 'Steve'],
            textAlignment: "center",
            bgColor: "#CFE8F1"
        }
    },
    edit: EditComponent,
// Whenevr changes made in code can lead to error on editor, cause nothing is saved before changes, CAN USE DEPRICATED, but NOT the best menthod, it's manual. USE PHP and return NULL to save function 
    save: function(props){
        //what will see on actual user screen
        return null
    },
    
})



function EditComponent (props){

    const blockProps = useBlockProps({
        className:"paying-attention-edit-block",
        style:{backgroundColor: props.attributes.bgColor}
    })


    //for Question field function created
    function updateQuestion(value){
        props.setAttributes({question: value})
    }
    function deleteAnswer(indexToDelete){
        //no changes directly on array, makes a copy and makes changes 
        const newAnswers = props.attributes.answers.filter(function(x, index){
            return index != indexToDelete //return true for all other than math 
        })
        props.setAttributes({answers: newAnswers})

        if (indexToDelete ==  props.attributes.correctAnswer){
            props.setAttributes({correctAnswer: undefined})
        }
    }
    function markAsCorrect(index){
        props.setAttributes({correctAnswer: index})
    }
    //what will see on post editor screen
    return (
        <div {...blockProps} >
            {/* Block Control helps to add feature inline, on top of Block  */}
            <BlockControls>
                <AlignmentToolbar value={props.attributes.theAlignment} onChange={x => props.setAttributes({theAlignment : x})} />    
            </BlockControls>
            {/* Inspector Controls helps to add feature in right sidebar */}
            <InspectorControls>
                <PanelBody title="Background Colour" initialOpen={true}>

                <PanelRow> <ChromePicker color={props.attributes.bgColor} onChangeComplete = {x => props.setAttributes({bgColor: x.hex})} disableAlpha={true}/></PanelRow>
                </PanelBody>
            </InspectorControls>
            <TextControl label="Question:" value={props.attributes.question} onChange={updateQuestion} style={{fontSize: "20px"}}/>  {/* Taking advantage of Wordpress Text Control instead of basic HTML Input field */}
            <p style={{fontSize:"13px", margin:"20px 0 8px 0"}}>Answers:</p>
            {props.attributes.answers.map(function (answer, index){
                return (
                    <Flex>
                        <FlexBlock><TextControl value={answer} onChange={newValue => {
                            const newAnswers = props.attributes.answers.concat([])
                            newAnswers[index] = newValue
                            props.setAttributes({answers: newAnswers})}}/> </FlexBlock>
                        <FlexItem><Button onClick={()=> markAsCorrect(index)}><Icon className="mark-as-correct" icon={props.attributes.correctAnswer == index? "star-filled": "star-empty"}/></Button></FlexItem>
                        <FlexItem><Button isLink className="attention-delete" onClick={()=> deleteAnswer(index)}>Delete</Button></FlexItem>
                    </Flex>
                )
            })}
            <Button isPrimary onClick={()=> {props.setAttributes({answers: props.attributes.answers.concat([""])})}}>Add another answer</Button> {/* Concat will return new copy of the array  */}
        </div>
    )
    

}


/*
To create a block by self, Have 2 things edit && save
edit-> for editor
save-> what customer will see 
Now to use function
    - mention attributes before edit
We want LIVE updates and NOT ON SAVE
    - add onChange
    - create function for it
For creating rows, icons and buttons, we could use HTML, but will use Wordpress to do it for us by Importing them


For Block Color Selector on Editor
    1. Imported InspectorControls , PanelBody and PanelRow (helps to add things on right panel)
    2.  npm install react-color -> Imported ChromePicker -> for color Picker 
    3. Create new attr bgcolor, use it in ChromePicker in Panelrow using props
    4. use onChange in ChromePicker and use Es6 function to pass HAX to bgColour attribute and set that to div inner style
    5. copy inline css to Frontend (and pasted without attributes)

Text Alignment Feature
    1. Import  BlockControls, AlignmentToolbar
    2. Set attribute 
    3. Create BlockControl and use AlignmentToolbar -> it's value will be used for Frontend

SOme Minor Changes
    Block insert preview setup 
        1. example after attributes
        2. Set exaple data
    Adding description in right sidebar
        1. add description above  exaple
    Added block.json, since using api v3, block no longer selectable, because in newer versions, WP is not wraping by default
        1. imported useBlockProps
        2. added blockProps as const 
        3. added {...blockProps} in div
            So whatever inside it, each one will be applied
        4. cut className and style from inline div and passed through blockProps
*/
 



After Creating basic files like 
1. index.php
2. style.css
3. templates/index.html 

Steps to create block template
    1. create a new block folder
    2. blockname.js
    Start with Boilerplate 
        1. use register block type 
        2. title, edit -> function, save -> function
        3. create functions below for both
        4. In Save, return basic text && in edit, copy paste div tag and change to jsx
        5. Borrowed folders 
            build, css, images, inc, src, templates 
            and files 
            functions.php, -> all previously created functions will also be same 
            package.json -> will help to install all require packages we previously installed
                        -> build is not required 
        6. Update package.json
            - build is not required
            - start transpile src/index.php, 
                but 
                also wants same for blocks
                -> add both paths mannually
            - npm run start
        7. Use build created 
            - above command will create banner.js in build directory
            - To make it in use Create function in functions.php
            - also add add_theme_support & add_editor_style in 'features'
        8. import InnerBlock to add blocks inside block
            - In place of content add InnerBlock in edit 
            - Same for Save function but InnerBlock.Content
            - to limit types of blocks used inside block/inner block add allowedBlocks={[]}
        9. Create class for block and make it dynamic 

    Perfect,  Now second block genericHeading
        1. Create same name file used while calling class
        2. test by returning Hello in Edit & Save
        3. add path to package.json 
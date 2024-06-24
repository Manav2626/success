import {registerBlockType} from "@wordpress/blocks"


registerBlockType("ourblocktheme/genericheading", {
  title: "Generic Heading",
  edit: EditComponent,
  save: SaveComponent,
});

function EditComponent() {
    return <div>Hello</div>
}
function SaveComponent() {
    return <div>Hello from Heading</div>
}
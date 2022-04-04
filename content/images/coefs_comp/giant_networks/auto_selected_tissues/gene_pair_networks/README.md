To generate these network images (svg files), open HumanBase for a gene pair,
get the svg element of the network, save into a file.


- For example, open this URL: https://hb.flatironinstitute.org/gene/9770+9595
- Arrange the two main genes in the corners, or as you wish
- Then click on the "Auto re-size" button
- Open the Developers tool in Chrome
- Locate the SVG element with the network, Copy -> Copy element, and save into a network.svg, temporary file
- Open the file with Inkscape
  - Create a rectangle and clip it to remove the white space in margins
  - Resize page to drawing
  - Save
- Now, copy an existing file, such as "GIANT-IFNG_vs_SDS-...svg", with the new name using your genes
- Open the new file with Inkscape, and replace the current network image by importing the network.svg file
  - Adjust it to fit the space by keeping aspect ratio
  - save


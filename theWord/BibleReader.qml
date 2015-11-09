import QtQuick 2.0
import Ubuntu.Components 1.1
import TheWord 1.0


/*

  Purpose:      Holds the Bible content.
  Use:          Displays the Bible.
  Composed of:  Flickable to scroll through the Bible and two NavBars for navigating chapters.

  The BibleReader will need to communicate the current verse and chapter to other components
    (so that the tab is showing the current chapter, and the user can continue from the same place).
*/

Item { // generic Item to hold everything
    
    anchors.fill: parent; // fill the screen
    clip: true; // hide anything that leaves the screen
    
    //---------------------- NavBar that hides or reveals based on Flicable movement--------------
    
    Item { 
        id: pullDownNav
        
        height: childrenRect.height;
        width: parent.width;
        
        NavBar {}
        
        states: [
            State {
                name: "pushUp";
                when: flickable.goingUp == false; // when scrolling down, hide the NavBar
                PropertyChanges {
                    target: pullDownNav;
                    
                    y: -1 * pullDownNav.height; // go above screen
                    
                }
            }

        ]
        
        transitions: [ // transistion based on the property changes (above)
            Transition {
                NumberAnimation {
                    properties: "y";
                    easing.type: Easing.InOutQuad;
                }
                
            }
        ]
    }
    
    //-------------------------- Flickable that displays Bible ---------------------------------
    
    Flickable {
        id: flickable
        property real prevY: 0;         // keep up with the last Y position to know if we are going up or down
        property int count: 0;          // inside variable for incrementing
        property int divisor: 4;        // check the position of the scroll once every _<divisor>_ times
        property bool goingUp: true;    // show the pullDownNav at start
        
        boundsBehavior: Flickable.StopAtBounds; // do not bounce, messes with scrolling --> messes with pullDownNav
        
        width: parent.width;
        height: parent.height;
        contentHeight: contentItem.childrenRect.height;
        clip: true;     // hide extra content
        z: -5;          // put text in the back
        
        
        // --------------- Determining Direction of Flickable ----------------
        
        visibleArea.onYPositionChanged:  {
            
            if (count%divisor == 0) { // only execute occasionaly
                
                var myY = visibleArea.yPosition;    // what is my current position
                if (myY < prevY) goingUp = true;    // am I going Up?
                else if (myY > prevY) goingUp = false; // am I going Down?
                
                prevY = myY;                // save my position
            }
            count = (count+1)%divisor;      // increment my counter
        }
        
        
        // ------------------ Content inside the Flickable -----------
        
        
        Column { // use Column to stack spacers with the Text
            anchors {
                left: parent.left;
                right: parent.right;
            }
            
            height: childrenRect.height;
            spacing: bottomNav.height; // helps hide the bottom nav bar when the top nav bar is displayed.

            
            // ---------------- Spacer for top NavBar ----------
            
            Rectangle { 
                opacity: 0
                height: units.gu(1); // adding a small rectangle applies the spacing listed above
                width: parent.width;
            }
            
            
            // --------------- Bible Content goes HERE --------
            Column {
                height: childrenRect.height;
                width: parent.width;
                //spacing: 10;
                
                TextEdit {
                    
                    //anchors.horizontalCenter: parent.horizontalCenter;  // center the text
                    height: paintedHeight;                              // height of the text
                    wrapMode: TextEdit.WordWrap;                            // wrap the text
                    width: parent.width - units.gu(4);                  // minus padding
                    textFormat: TextEdit.RichText;
                    
                    font.pointSize: 24
                    
                    readOnly: true;
                    text: "Lorem ipsum dolor sit amet, 
                                        <font style='background-color: #00ff00;'>23</font> 
                                        <style>.green,span {background-color: #00ff00; bgcolor: #00ff00;}</style>
                                        <u class='green'>world</u>
<font class='green'>wow</font>
<a href='41'>sample Link</a>
                                         pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. 
                                        <img src='graphics/theWord.png' height='50' width='50'> Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus.Lorem ipsum dolor sit amet, pri ad quem aeque reprimique, te eum repudiare mediocritatem. Dolor qualisque instructior cu mei. Mei an prima cetero aliquando, pri te audire iudicabit, minim postulant temporibus vix te. Mei modus tibique ei. No mea numquam feugait sadipscing, ut qui regione forensibus."
                    onLinkActivated: {
                        console.log(link);
                        selectAll();
                        var text = getText(0, selectionEnd);
                        deselect();

                        var start = parseInt(link);
                        console.log(start);
                        var end = 50;
                        select(start, end);

                    }
                }
                
                
            }
            

            
            
            // ------------------- Bottom NavBar ----------------
            
            NavBar { // NavBar for the bottom of the page, Static position
                id: bottomNav
            }
         }
    }
    
    
    //--------------------- ScrollBar -----------------
    
    Scrollbar { // Nifty scrollbar I found in UBUNTU documentation (part of Ubuntu Components)
        flickableItem: flickable;   // attach the scrollbar to the Flickable
        align: Qt.AlignTrailing;    // put the scrollbar on the right side (for LTR)
        
    }
}

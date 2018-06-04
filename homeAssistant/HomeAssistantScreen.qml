import QtQuick 1.1
import qb.components 1.0

Screen {
		id: homeAssistantScreen
		screenTitle: "Home Assistant"

		onShown: {
				addCustomTopRightButton("Instellingen");
				
				app.getSensorInfo();
				app.getSwitchInfo();

                if (app.homeAssistantScene1) {
                         homeAssistantScene1Button.height = 75;
                         homeAssistantScene1Button.visible = true;
                } else {
                         homeAssistantScene1Button.visible = false;
                         homeAssistantScene1Button.height = 0;
                }
                if (app.homeAssistantScene2) {
                         homeAssistantScene2Button.height = 75;
                         homeAssistantScene2Button.visible = true;
                } else {
                         homeAssistantScene2Button.visible = false;                                
                         homeAssistantScene2Button.height = 0;
                }
                if (app.homeAssistantScene3) {
                         homeAssistantScene3Button.height = 75;
                         homeAssistantScene3Button.visible = true;
                } else {        
                         homeAssistantScene3Button.visible = false;                                 
                         homeAssistantScene3Button.height = 0;
                }
                if (app.homeAssistantScene4) {
                         homeAssistantScene4Button.height = 75;
                         homeAssistantScene4Button.visible = true; 
                } else {        
                         homeAssistantScene4Button.visible = false;                                
                         homeAssistantScene4Button.height = 0;
                }
                
                if (app.homeAssistantScene5) {
                         homeAssistantScene5Button.height = 75;
                         homeAssistantScene5Button.visible = true; 
                } else {        
                         homeAssistantScene5Button.visible = false;                                
                         homeAssistantScene5Button.height = 0;
                }
                
                if (app.homeAssistantScene6) {
                         homeAssistantScene6Button.height = 75;
                         homeAssistantScene6Button.visible = true; 
                } else {        
                         homeAssistantScene6Button.visible = false;                                
                         homeAssistantScene6Button.height = 0;
                }
                
                if (app.homeAssistantSwitch1) {
                         switchRect1.height = 50;
                         switchRect1.visible = true;
                } else {
                         switchRect1.visible = false;
                         switchRect1.height = 0;
                }
                
                if (app.homeAssistantSwitch2) {
                         switchRect2.height = 50;
                         switchRect2.visible = true;
                } else {
                         switchRect2.visible = false;
                         switchRect2.height = 0;
                }
                
                if (app.homeAssistantSwitch3) {
                         switchRect3.height = 50;
                         switchRect3.visible = true;
                } else {
                         switchRect3.visible = false;
                         switchRect3.height = 0;
                }
                
                if (app.homeAssistantSwitch4) {
                         switchRect4.height = 50;
                         switchRect4.visible = true;
                } else {
                         switchRect4.visible = false;
                         switchRect4.height = 0;
                }
                
                if (app.homeAssistantSwitch5) {
                         switchRect5.height = 50;
                         switchRect5.visible = true;
                } else {
                         switchRect5.visible = false;
                         switchRect5.height = 0;
                }
                
		}

		onCustomButtonClicked: {
			if (app.homeAssistantConfigurationScreen) {
			 	app.homeAssistantConfigurationScreen.show();
			}
		}

		hasBackButton : true

                                                                                 
        Text {                                                                   
                id: title                                                       
                x: 30                                                            
                y: 5
                width: 740                                                            
                text: app.message                                                
                font.pixelSize: 10                                      
                font.family: qfont.semiBold.name                        
                color: "red"
                wrapMode: Text.WordWrap                                   
        }
        

// Top section

    Rectangle {
        id: sensorRect
        x: 30                                                                      
        y: 25  
        width: 740
        height: 100
        radius: 10
        color: "#e8e8e8"
        
        Image {
			id: homeAssistantIconMain
			source: "./drawables/homeAssistantIconBig.png"
			anchors {
				verticalCenter: parent.verticalCenter
				right: parent.right
			}
			cache: false
			
			MouseArea {                                                                 
                anchors.fill: parent                                                    
                onClicked: {                                                            
                    app.getSensorInfo();
					app.getSwitchInfo();                                                               
                }                                                                       
            }
		}
        
        Rectangle {
            id: sensorRect1
            anchors {
                top: parent.top
                left: parent.left
                topMargin: 15
                leftMargin: 30
            } 
            width: 150
            color: "transparent"

            Text {                                                                              
                id: homeAssistantSensor1Name                                                                  
                anchors {
                    top: parent.top
                }
                text: JSON.parse(app.homeAssistantSensor1Info)['attributes']['friendly_name']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }
            
            Text {                                                                              
                id: homeAssistantSensor2Name                                                                 
                anchors {
                    top: homeAssistantSensor1Name.bottom
                }
                text: JSON.parse(app.homeAssistantSensor2Info)['attributes']['friendly_name']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }
            
            Text {                                                                              
                id: homeAssistantSensor3Name                                                                  
                anchors {
                    top: homeAssistantSensor2Name.bottom
                }
                text: JSON.parse(app.homeAssistantSensor3Info)['attributes']['friendly_name']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }
            
            Text {                                                                              
                id: homeAssistantSensor4Name                                                                  
                anchors {
                    top: homeAssistantSensor3Name.bottom
                }
                text: JSON.parse(app.homeAssistantSensor4Info)['attributes']['friendly_name']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }
            
        }   
                   
        Rectangle {
            id: sensorRect2
            anchors {
                top: sensorRect1.top
                left: sensorRect1.right
            } 
            width: 100
            color: "transparent"

            Text {                                                                        
                id: homeAssistantSensor1Value;                                                                           
                anchors {
                		top: sensorRect2.top                                                               
                        right: sensorRect2.right
                        rightMargin: 20                                                                                                         
                }
                text: JSON.parse(app.homeAssistantSensor1Info)['attributes']['unit_of_measurement'] ? JSON.parse(app.homeAssistantSensor1Info)['state'] + " " + JSON.parse(app.homeAssistantSensor1Info)['attributes']['unit_of_measurement'] : JSON.parse(app.homeAssistantSensor1Info)['state']                                                    
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                                                                                                                      
            } 
            
            Text {                                                                        
                id: homeAssistantSensor2Value;                                                                                                                           
                anchors {
                		top: homeAssistantSensor1Value.bottom                                                               
                        right: homeAssistantSensor1Value.right                                                                                                         
                }
                text: JSON.parse(app.homeAssistantSensor2Info)['attributes']['unit_of_measurement'] ? JSON.parse(app.homeAssistantSensor2Info)['state'] + " " + JSON.parse(app.homeAssistantSensor2Info)['attributes']['unit_of_measurement'] : JSON.parse(app.homeAssistantSensor2Info)['state']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                                                                                                                      
            }
            
            Text {                                                                        
                id: homeAssistantSensor3Value;                                                                                                                        
                anchors {
                		top: homeAssistantSensor2Value.bottom                                                               
                        right: homeAssistantSensor2Value.right                                                                                                         
                }
                text: JSON.parse(app.homeAssistantSensor3Info)['attributes']['unit_of_measurement'] ? JSON.parse(app.homeAssistantSensor3Info)['state'] + " " + JSON.parse(app.homeAssistantSensor3Info)['attributes']['unit_of_measurement'] : JSON.parse(app.homeAssistantSensor3Info)['state']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                                                                                                                      
            }
            
            Text {                                                                        
                id: homeAssistantSensor4Value;                                                                                                                        
                anchors {
                		top: homeAssistantSensor3Value.bottom                                                               
                        right: homeAssistantSensor3Value.right                                                                                                         
                }
                text: JSON.parse(app.homeAssistantSensor4Info)['attributes']['unit_of_measurement'] ? JSON.parse(app.homeAssistantSensor4Info)['state'] + " " + JSON.parse(app.homeAssistantSensor4Info)['attributes']['unit_of_measurement'] : JSON.parse(app.homeAssistantSensor4Info)['state']                                                     
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                                                                                                                      
            }
        }
        
        Rectangle {
            id: sensorRect3
            anchors {
                top: parent.top
                left: sensorRect2.right
                topMargin: 15
                leftMargin: 100
            } 
            width: 150
            color: "transparent"

            Text {                                                                              
                id: homeAssistantSensor5Name                                                                  
                anchors {
                    top: parent.top
                }
                text: JSON.parse(app.homeAssistantSensor5Info)['attributes']['friendly_name']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }
            
            Text {                                                                              
                id: homeAssistantSensor6Name                                                                 
                anchors {
                    top: homeAssistantSensor5Name.bottom
                }
                text: JSON.parse(app.homeAssistantSensor6Info)['attributes']['friendly_name']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }
            
            Text {                                                                              
                id: homeAssistantSensor7Name                                                                  
                anchors {
                    top: homeAssistantSensor6Name.bottom
                }
                text: JSON.parse(app.homeAssistantSensor7Info)['attributes']['friendly_name']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }
            
            Text {                                                                              
                id: homeAssistantSensor8Name                                                                  
                anchors {
                    top: homeAssistantSensor7Name.bottom
                }
                text: JSON.parse(app.homeAssistantSensor8Info)['attributes']['friendly_name']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }
            
        }
        
        Rectangle {
            id: sensorRect4
            anchors {
                top: sensorRect3.top
                left: sensorRect3.right
            } 
            width: 100
            color: "transparent"

            Text {                                                                        
                id: homeAssistantSensor5Value;                                                                           
                anchors {
                		top: sensorRect4.top                                                               
                        right: sensorRect4.right
                        rightMargin: 20                                                                                                         
                }
                text: JSON.parse(app.homeAssistantSensor5Info)['attributes']['unit_of_measurement'] ? JSON.parse(app.homeAssistantSensor5Info)['state'] + " " + JSON.parse(app.homeAssistantSensor5Info)['attributes']['unit_of_measurement'] : JSON.parse(app.homeAssistantSensor5Info)['state']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                                                                                                                      
            } 
            
            Text {                                                                        
                id: homeAssistantSensor6Value;                                                                                                                           
                anchors {
                		top: homeAssistantSensor5Value.bottom                                                               
                        right: homeAssistantSensor5Value.right                                                                                                         
                }
                text: JSON.parse(app.homeAssistantSensor6Info)['attributes']['unit_of_measurement'] ? JSON.parse(app.homeAssistantSensor6Info)['state'] + " " + JSON.parse(app.homeAssistantSensor6Info)['attributes']['unit_of_measurement'] : JSON.parse(app.homeAssistantSensor6Info)['state']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                                                                                                                      
            }
            
            Text {                                                                        
                id: homeAssistantSensor7Value;                                                                                                                        
                anchors {
                		top: homeAssistantSensor6Value.bottom                                                               
                        right: homeAssistantSensor6Value.right                                                                                                         
                }
                text: JSON.parse(app.homeAssistantSensor7Info)['attributes']['unit_of_measurement'] ? JSON.parse(app.homeAssistantSensor7Info)['state'] + " " + JSON.parse(app.homeAssistantSensor7Info)['attributes']['unit_of_measurement'] : JSON.parse(app.homeAssistantSensor7Info)['state']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                                                                                                                      
            }
            
            Text {                                                                        
                id: homeAssistantSensor8Value;                                                                                                                        
                anchors {
                		top: homeAssistantSensor7Value.bottom                                                               
                        right: homeAssistantSensor7Value.right                                                                                                         
                }
                text: JSON.parse(app.homeAssistantSensor8Info)['attributes']['unit_of_measurement'] ? JSON.parse(app.homeAssistantSensor8Info)['state'] + " " + JSON.parse(app.homeAssistantSensor8Info)['attributes']['unit_of_measurement'] : JSON.parse(app.homeAssistantSensor8Info)['state']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                                                                                                                      
            }
        }
    }


// Scene section
        Text {                                                     
                id: sceneTitle                                            
                x: 30                                                
                y: 140                                                
                width: 245                                           
                text: "Scenes"                                    
                font.pixelSize: 16                                   
                font.family: qfont.semiBold.name                     
                color: "Black"                                         
                wrapMode: Text.WordWrap                              
        }
        
        Rectangle {
            id: sceneRect
            anchors {
                top: sceneTitle.bottom
                left: sceneTitle.left
                topMargin: 10
            } 
            width: 245
            height: 235
            color: "transparent"

        	IconButton {                                                                                              
                id: homeAssistantScene1Button
                width: 120                                                                  
                height: 75
                text: JSON.parse(app.homeAssistantScene1Info)['attributes']['friendly_name']                                                                                                                                               
                                                                                                                  
                anchors {
                        left: parent.left                                                                         
                        top: parent.top                                                                                                                                                       
                }                                                                                             
                                                                                                                  
                bottomClickMargin: 3                                                                              
                onClicked: {                                                                                      
                        app.setHomeAssistant("scene", app.homeAssistantScene1);
                }                                                                                                 
        	}
	
        	IconButton {                            
                id: homeAssistantScene2Button
                width: 120                    
                height: 75                   
                text: JSON.parse(app.homeAssistantScene2Info)['attributes']['friendly_name']
                                                 
                anchors {                        
                        left: homeAssistantScene1Button.left         
                        top: homeAssistantScene1Button.bottom        
                        topMargin: 5     
                }                        
                                         
                bottomClickMargin: 3     
                onClicked: {        
                        app.setHomeAssistant("scene", app.homeAssistantScene2);
                }                                             
        	} 

        	IconButton {                            
                id: homeAssistantScene3Button
                width: 120                    
                height: 75                   
                text: JSON.parse(app.homeAssistantScene3Info)['attributes']['friendly_name']
                                                 
                anchors {                        
                        left: homeAssistantScene2Button.left         
                        top: homeAssistantScene2Button.bottom        
                        topMargin: 5     
                }                        
                                         
                bottomClickMargin: 3     
                onClicked: {        
                        app.setHomeAssistant("scene", app.homeAssistantScene3);
                }                                             
        	} 

        	IconButton {                                          
                id: homeAssistantScene4Button                
                width: 120                                    
                height: 75                                    
                text: JSON.parse(app.homeAssistantScene4Info)['attributes']['friendly_name']                     
                                                              
                anchors {                                     
                        left: homeAssistantScene1Button.right                      
                        top: homeAssistantScene1Button.top 
                        leftMargin: 5                          
                }                                             
                                                              
                bottomClickMargin: 3                          
                onClicked: {                                  
                        app.setHomeAssistant("scene", app.homeAssistantScene4);
                }                                             
        	}
        	
        	IconButton {                                          
                id: homeAssistantScene5Button                
                width: 120                                    
                height: 75                                    
                text: JSON.parse(app.homeAssistantScene5Info)['attributes']['friendly_name']                     
                                                              
                anchors {                                     
                        left: homeAssistantScene4Button.left                      
                        top: homeAssistantScene4Button.bottom 
                        topMargin: 5                          
                }                                             
                                                              
                bottomClickMargin: 3                          
                onClicked: {                                  
                        app.setHomeAssistant("scene", app.homeAssistantScene5);
                }                                             
        	}
        	
        	IconButton {                                          
                id: homeAssistantScene6Button                
                width: 120                                    
                height: 75                                    
                text: JSON.parse(app.homeAssistantScene6Info)['attributes']['friendly_name']                     
                                                              
                anchors {                                     
                        left: homeAssistantScene5Button.left                      
                        top: homeAssistantScene5Button.bottom 
                        topMargin: 5                          
                }                                             
                                                              
                bottomClickMargin: 3                          
                onClicked: { 
                        app.setHomeAssistant("scene", app.homeAssistantScene6);
                }                                             
        	}
        }

// Switch section

        Text {                                                                              
                id: switchTitle                                                             
                x: 300                                                                      
                y: 140                                                                       
                width: 125                                                                  
                text: "Schakelaars"                                                         
                font.pixelSize: 16                                                          
                font.family: qfont.semiBold.name                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
        }


        Rectangle {
            id: switchRect1
            anchors {
                top: switchTitle.bottom
                left: switchTitle.left
                topMargin: 5
            } 
            width: 250
            color: "transparent"

            Text {                                                                              
                id: homeAssistantSwitch1Name
                width: 200
                anchors {
                    top: parent.top
                    topMargin: 13
                }
                text: JSON.parse(app.homeAssistantSwitch1Info)['attributes']['friendly_name']                                                        
                font.pixelSize: 12                                            
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }

            Image {                                                                        
                id: homeAssistantSwitch1Button                                              
                width: 50                                                                  
                height: 36
                source: JSON.parse(app.homeAssistantSwitch1Info)['state'] == "on" ? app.imgButtonOn : app.imgButtonOff
                smooth: true
                                                                                            
                anchors {                                                                   
                        right: switchRect1.right                                                    
                        verticalCenter: switchRect1.verticalCenter                                                       
                }                                                                           
                                                                                            
                MouseArea {
                    anchors.fill: parent                                                       
                    onClicked: {
                        if (JSON.parse(app.homeAssistantSwitch1Info)['state'] == "off") {                       
                            app.setHomeAssistant("switch", app.homeAssistantSwitch1, 1);            
                        } else if (JSON.parse(app.homeAssistantSwitch1Info)['state'] == "on") {
                            app.setHomeAssistant("switch", app.homeAssistantSwitch1, 0);           
                        }
                        app.getSwitchInfo();
                    }  
                }                                                                           
            } 
        }


        Rectangle {                                                                         
            id: switchRect2                                                                 
            anchors.top: switchRect1.bottom
            anchors.left: switchRect1.left                                                                           
            width: 250 
            color: "transparent"

            Text {                                                                              
                id: homeAssistantSwitch2Name                                                                       
                width: 200
                anchors {                                                                   
                    top: parent.top                                                         
                    topMargin: 13                                                           
                }                 
                text: JSON.parse(app.homeAssistantSwitch2Info)['attributes']['friendly_name']                                                                                                                   
                font.pixelSize: 12                                                                                                                 
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            } 

            Image {
                id: homeAssistantSwitch2Button;
                width: 50                                                                  
                height: 36
                source: JSON.parse(app.homeAssistantSwitch2Info)['state'] == "on" ? app.imgButtonOn : app.imgButtonOff
                smooth: true

                anchors {                                                                   
                        right: switchRect2.right                                            
                        verticalCenter: switchRect2.verticalCenter                                                         
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {                                                            
                        if (JSON.parse(app.homeAssistantSwitch2Info)['state'] == "off") {                       
                            app.setHomeAssistant("switch", app.homeAssistantSwitch2, 1);            
                        } else if (JSON.parse(app.homeAssistantSwitch2Info)['state'] == "on") {
                            app.setHomeAssistant("switch", app.homeAssistantSwitch2, 0);           
                        }
                        app.getSwitchInfo();                                                                   
                    }
                }
            }
        }

        Rectangle {                                                                         
            id: switchRect3                                                                 
            anchors.top: switchRect2.bottom                                                 
            anchors.left: switchRect2.left                                                  
            width: 250                                                                      
            color: "transparent"                                                            
                                                                                            
            Text {                                                                          
                id: homeAssistantSwitch3Name                                                
                width: 200                                                                
                anchors {                                                                   
                    top: parent.top                                                         
                    topMargin: 13                                                           
                }                                                                           
                text: JSON.parse(app.homeAssistantSwitch3Info)['attributes']['friendly_name']                                                     
                font.pixelSize: 12                                                          
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }                                                                               
                                                                                            
            Image {                                                                         
                id: homeAssistantSwitch3Button;                                             
                width: 50                                                                   
                height: 36                                                                  
                source: JSON.parse(app.homeAssistantSwitch3Info)['state'] == "on" ? app.imgButtonOn : app.imgButtonOff                                                   
                smooth: true                                                                
                                                                                            
                anchors {                                                                   
                        right: switchRect3.right                                            
                        verticalCenter: switchRect3.verticalCenter                          
                }                                                                           
                                                                                            
                MouseArea {                                                                 
                    anchors.fill: parent                                                    
                    onClicked: {                                                            
                        if (JSON.parse(app.homeAssistantSwitch3Info)['state'] == "off") {                       
                            app.setHomeAssistant("switch", app.homeAssistantSwitch3, 1);            
                        } else if (JSON.parse(app.homeAssistantSwitch3Info)['state'] == "on") {
                            app.setHomeAssistant("switch", app.homeAssistantSwitch3, 0);           
                        }
                        app.getSwitchInfo();                                                                   
                    }                                                                       
                }                                                                           
            }                                                                               
        }

        Rectangle {                                                                         
            id: switchRect4                                                                 
            anchors.top: switchRect3.bottom                                                 
            anchors.left: switchRect3.left                                                  
            width: 250                                                                     
            color: "transparent"                                                            
                                                                                            
            Text {                                                                          
                id: homeAssistantSwitch4Name                                                
                width: 200                                                                 
                anchors {                                                                   
                    top: parent.top                                                         
                    topMargin: 13                                                           
                }                                                                           
                text: JSON.parse(app.homeAssistantSwitch4Info)['attributes']['friendly_name']                                                         
                font.pixelSize: 12                                                          
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }                                                                               
                                                                                            
            Image {                                                                         
                id: homeAssistantSwitch4Button;                                             
                width: 50                                                                   
                height: 36                                                                  
                source: JSON.parse(app.homeAssistantSwitch4Info)['state'] == "on" ? app.imgButtonOn : app.imgButtonOff                                                    
                smooth: true                                                                
                                                                                            
                anchors {                                                                   
                        right: switchRect4.right                                            
                        verticalCenter: switchRect4.verticalCenter                          
                }                                                                           
                                                                                            
                MouseArea {                                                                 
                    anchors.fill: parent                                                    
                    onClicked: {                                                            
                        if (JSON.parse(app.homeAssistantSwitch4Info)['state'] == "off") {                       
                            app.setHomeAssistant("switch", app.homeAssistantSwitch4, 1);            
                        } else if (JSON.parse(app.homeAssistantSwitch4Info)['state'] == "on") {
                            app.setHomeAssistant("switch", app.homeAssistantSwitch4, 0);           
                        }
                        app.getSwitchInfo();                                                                   
                    }                                                                       
                }                                                                           
            }                                                                               
        }

        Rectangle {                                                                         
            id: switchRect5                                                                 
            anchors.top: switchRect4.bottom                                                 
            anchors.left: switchRect4.left                                                  
            width: 250                                                                      
            color: "transparent"                                                            
                                                                                            
            Text {                                                                          
                id: homeAssistantSwitch5Name                                                
                width: 200                                                                 
                anchors {                                                                   
                    top: parent.top                                                         
                    topMargin: 13                                                           
                }                                                                           
                text: JSON.parse(app.homeAssistantSwitch5Info)['attributes']['friendly_name']                                                         
                font.pixelSize: 12                                                          
                color: "Black"                                                              
                wrapMode: Text.WordWrap                                                     
            }                                                                               
                                                                                            
            Image {                                                                         
                id: homeAssistantSwitch5Button;                                             
                width: 50                                                                   
                height: 36                                                                  
                source: JSON.parse(app.homeAssistantSwitch5Info)['state'] == "on" ? app.imgButtonOn : app.imgButtonOff                                                    
                smooth: true                                                                
                                                                                            
                anchors {                                                                   
                        right: switchRect5.right                                            
                        verticalCenter: switchRect5.verticalCenter                          
                }                                                                           
                                                                                            
                MouseArea {                                                                 
                    anchors.fill: parent                                                    
                    onClicked: {                                                            
                        if (JSON.parse(app.homeAssistantSwitch5Info)['state'] == "off") {                       
                            app.setHomeAssistant("switch", app.homeAssistantSwitch5, 1);            
                        } else if (JSON.parse(app.homeAssistantSwitch5Info)['state'] == "on") {
                            app.setHomeAssistant("switch", app.homeAssistantSwitch5, 0);           
                        }
                        app.getSwitchInfo();                                                                   
                    }                                                                       
                }                                                                           
            }                                                                               
       }
}

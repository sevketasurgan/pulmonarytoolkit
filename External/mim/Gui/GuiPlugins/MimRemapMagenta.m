classdef MimRemapMagenta < MimGuiPlugin
    % MimRemapMagenta. Gui Plugin for setting paint colour
    %
    %     You should not use this class within your own code. It is intended to
    %     be used by the gui of the TD MIM Toolkit.
    %
    %     MimRemapMagenta is a Gui Plugin for the MIM Toolkit.
    %
    %
    %     Licence
    %     -------
    %     Part of the TD MIM Toolkit. https://github.com/tomdoel
    %     Author: Tom Doel, Copyright Tom Doel 2014.  www.tomdoel.com
    %     Distributed under the MIT licence. Please see website for details.
    %    
    
    properties
        ButtonText = 'Left upper'
        SelectedText = 'Left upper'
        ToolTip = 'Marks airway as left upper lobe'
        Category = 'Airway label'
        Visibility = 'Dataset'
        Mode = 'Edit'

        HidePluginInDisplay = false
        PTKVersion = '1'
        ButtonWidth = 5
        ButtonHeight = 1
        Icon = 'paint.png'
        IconColour = GemMarkerPoint.DefaultColours{5}
        Location = 35
    end
    
    methods (Static)
        function RunGuiPlugin(gui_app)
            gui_app.ImagePanel.PaintBrushColour = 5;
        end
        
        function enabled = IsEnabled(gui_app)
             enabled = gui_app.IsDatasetLoaded && gui_app.ImagePanel.OverlayImage.ImageExists && ...
                isequal(gui_app.ImagePanel.SelectedControl, 'Map');
        end
        
        function is_selected = IsSelected(gui_app)
            is_selected = gui_app.ImagePanel.PaintBrushColour == 5;
        end
    end
end
function CA_ROI = createCA_ROI(ROI, Params)

    CA_ROI = tempROI;
    CA_ROI.roi = [Params.yLow,Params.xLow,Params.roiHeight,Params.roiWidth];
    CA_ROI.enclosing_rect = [Params.yLow, Params.xLow,...
        Params.yHigh,Params.xHigh];
    CA_ROI.xm = Params.xLow+Params.roiWidth/2;
    CA_ROI.ym = Params.yLow+Params.roiHeight/2;
    CA_ROI.boundary = ...
        {[Params.xLow,Params.yLow;...
        Params.xLow,Params.yHigh;...
        Params.xHigh,Params.yHigh;...
        Params.xHigh,Params.yLow;...
        Params.xLow,Params.yLow]};

end
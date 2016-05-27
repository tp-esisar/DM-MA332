function [minVal, events]= popmin(events)
    min = 1;
    for i=1:size(events,2)
        if events(1,i) < events(1,min)
            min = i;
        end
    end
    minVal = events(:,min);
    
    events(:,min) = [];
    
    
end


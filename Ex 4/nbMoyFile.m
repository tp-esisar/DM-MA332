function total = nbMoyFile(nbserv,arrives,mu,temps)
    events = [arrives;ones(1, size(arrives,2))];
    file = 0;
    serv = 0;
    ancien = [0;1];
    total = 0;
    
    while(size(events,2) ~= 0)
        [event, events] = popmin(events);
        if event(2) == 1
            if serv >= nbserv
                file = file + 1;
            else
                serv = serv + 1;
                temps = duree(mu, 1)+event(1);
                newEvent = [temps;2];
                events = addEvent(newEvent,events);
            end
        else
            if file > 0
                file = file - 1;
                temps = duree(mu, 1)+event(1);
                newEvent = [temps;2];
                events = addEvent(newEvent,events);
            else
                serv = serv - 1;
            end
        end
        total = total + (file+serv)*(event(1)-ancien(1));
        ancien = event;
        
    end
    total = total/ancien(1);
    events
    event
    ancien
end
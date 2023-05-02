function conv_num = str2num_my(array_str)
    %str2num_my converts string array into numbers. Made for one piece table
    
    %partial = str2double(array_str);
    conv_num = zeros(length(array_str),20);
    for ii = 1:length(array_str)
        temp_str = array_str(ii);
        temp_char = char(temp_str);
        
        converted = '';
        k = 0;
        for jj = 1:length(temp_char)
            selected_char = temp_char(jj);
            if isstrprop(selected_char,"digit")
                if strcmp(converted,'')
                    k = k+1;
                end
                converted = strcat(converted, selected_char);
                if jj == length(temp_char)
                    conv_num(ii,k) = str2double(converted);
                end
            else
                if ~strcmp(converted,'')
                    conv_num(ii,k) = str2double(converted);
                end
                converted = '';
            end
        end
    end
end


function [ miss ] = percEval(eval_data, w, label )

miss = 0;
for i=1:length(eval_data)
 
  if perc(eval_data(i,1:size(eval_data,2)-1),w) ~= eval_data(i,size(eval_data,2))
%      display('MISS');
     miss = miss + 1;
  else
%      display('NO MISS');
 end
 
end

display(sprintf('Total items: %i', length(eval_data)));
display(sprintf('Misses: %i', miss));
display(sprintf('Correctly classified: %i', length(eval_data) - miss));
display(sprintf('Rate: %i',round(100 - 100*miss/length(eval_data))));

display(' ');
display(' ');
end


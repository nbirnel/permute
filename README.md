permute
=======

permute(1)							    permute(1)



NAME
       permute - show permutations or combinations of lists

SYNOPSIS
       permute [OPTIONS] FILE

DESCRIPTION
       permute takes a file or standard in, treats each line as a comma-delim‐
       ited list, and outputs all permutations or combinations of  that	 list,
       one  permutation	 per output line.  Optionally, the output lists can be
       limited in length.

OPTIONS
       -p output permutations. This is the default.

       -c output combinations rather than permutations —  That	is,  order  of
       elements in the resulting lists is not important.

       -rp output repeated permutations — That is, allow output elements to be
       repeated.

       -rc output repeated combinations — That is, order of  elements  in  the
       resulting lists is not important, and output elements may be repeated.

       -n NUMBER limit length of output lists to NUMBER.

       -d DELIMITER use DELIMITER rather than `,' to separate items of list.

EXAMPLES
       What are my options for doing some chores?

       echo 'make dinner,clean living room,change light bulb' | permute

       What kind of two topping pizzas can I order?

       echo 'sausage,pepperoni,mushroom,olive' | permute -n 2 -c

       A preliminary investigation of the children's game Cherry-Oh

       echo  'n+=1,n+=2,n+=3,n+=4,n=0,n=(n<3  ?	 0 : n-2),n=(n<3 ? 0 : n-2)' |
       permute -rp -n 8

SEE ALSO
       ruby(1), ri permutation, ri combination,	 ri  repeated_permutation,  ri
       repeated_combination

       http://mathworld.wolfram.com/Permutation.html

BUGS
       Order  of output is not guaranteed.  (This is probably a feature, not a
       bug.)  Probably others.

LICENSE
       © 2013 Noah Birnel

       You may use this software however you like.



				 permute-0.0.1			    permute(1)

<html>
<head>
<meta name="generator" content="groff -Thtml, see www.gnu.org">
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<meta name="Content-Style" content="text/css">
<title>permute</title>

</head>
<body>

<h1 align="center">permute</h1>

<a href="#NAME">NAME</a><br>
<a href="#SYNOPSIS">SYNOPSIS</a><br>
<a href="#DESCRIPTION">DESCRIPTION</a><br>
<a href="#OPTIONS">OPTIONS</a><br>
<a href="#EXAMPLES">EXAMPLES</a><br>
<a href="#SEE ALSO">SEE ALSO</a><br>
<a href="#BUGS">BUGS</a><br>
<a href="#LICENSE">LICENSE</a><br>

<hr>


<h2>NAME
<a name="NAME"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em">permute &minus;
show permutations or combinations of lists</p>

<h2>SYNOPSIS
<a name="SYNOPSIS"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em"><b>permute
[OPTIONS] FILE</b></p>

<h2>DESCRIPTION
<a name="DESCRIPTION"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em"><b>permute</b>
takes a file or standard in, treats each line as a
comma-delimited list, and outputs all permutations or
combinations of that list, one permutation per output line.
Optionally, the output lists can be limited in length.</p>

<h2>OPTIONS
<a name="OPTIONS"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em"><b>-p</b>
output permutations. This is the default.</p>

<p style="margin-left:11%; margin-top: 1em"><b>-c</b>
output combinations rather than permutations &mdash; That
is, order of elements in the resulting lists is not
important.</p>

<p style="margin-left:11%; margin-top: 1em"><b>-rp</b>
output repeated permutations &mdash; That is, allow output
elements to be repeated.</p>

<p style="margin-left:11%; margin-top: 1em"><b>-rc</b>
output repeated combinations &mdash; That is, order of
elements in the resulting lists is not important, and output
elements may be repeated.</p>

<p style="margin-left:11%; margin-top: 1em"><b>-n
NUMBER</b> limit length of output lists to NUMBER.</p>

<p style="margin-left:11%; margin-top: 1em"><b>-d
DELIMITER</b> use DELIMITER rather than &lsquo;,&rsquo; to
separate items of list.</p>

<h2>EXAMPLES
<a name="EXAMPLES"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em">What are my
options for doing some chores?</p>

<p style="margin-left:11%; margin-top: 1em"><b>echo
&rsquo;make dinner,clean living room,change light
bulb&rsquo; | permute</b></p>

<p style="margin-left:11%; margin-top: 1em">What kind of
two topping pizzas can I order?</p>

<p style="margin-left:11%; margin-top: 1em"><b>echo
&rsquo;sausage,pepperoni,mushroom,olive&rsquo; | permute -n
2 -c</b></p>

<p style="margin-left:11%; margin-top: 1em">A preliminary
investigation of the children&rsquo;s game Cherry-Oh</p>

<p style="margin-left:11%; margin-top: 1em"><b>echo
&rsquo;n+=1,n+=2,n+=3,n+=4,n=0,n=(n&lt;3 ? 0 :
n-2),n=(n&lt;3 ? 0 : n-2)&rsquo; | permute -rp -n 8</b></p>

<h2>SEE ALSO
<a name="SEE ALSO"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em"><b>ruby(1), ri
permutation, ri combination, ri repeated_permutation, ri
repeated_combination</b></p>


<p style="margin-left:11%; margin-top: 1em">http://mathworld.wolfram.com/Permutation.html</p>

<h2>BUGS
<a name="BUGS"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em">Order of output
is not guaranteed. (This is probably a feature, not a bug.)
Probably others.</p>

<h2>LICENSE
<a name="LICENSE"></a>
</h2>


<p style="margin-left:11%; margin-top: 1em">&copy; 2013
Noah Birnel</p>

<p style="margin-left:11%; margin-top: 1em">You may use
this software however you like.</p>
<hr>
</body>
</html>

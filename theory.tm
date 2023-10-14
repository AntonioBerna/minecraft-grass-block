<TeXmacs|2.1>

<style|generic>

<\body>
  \;

  <doc-data|<doc-title|BASIC CONCEPTS OF ROTATIONS AND TRANSLATIONS WITH
  PROCESSING>|<doc-author|<author-data|<author-name|antonio bernardini>>>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Rotations
    and translations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Elementary rotations around the
    <with|mode|math|x,y> and <with|mode|math|z> axes
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2<space|2spc>Example
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|1.3<space|2spc>Interesting property
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|1.4<space|2spc>Translations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|1.5<space|2spc>Inverse matrices
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|1.6<space|2spc>The code
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>
  </table-of-contents>

  <section|Rotations and translations>

  <subsection|Elementary rotations around the <math|x,y> and <math|z> axes>

  An elementary rotation is the rotation of <math|SR> around one of the 3
  coordinate axes of <math|SR<rprime|'>>. Let's see the corresponding
  rotation matrices in the 3 cases:

  <\enumerate>
    <item>Elementary rotation around <math|<wide|e<rsub|z>|\<vect\>><rprime|'>>
    by an angle <math|\<alpha\>>:

    <\eqnarray>
      <tformat|<table|<row|<cell|R<rsub|z><around*|(|\<alpha\>|)>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<alpha\>|)>>|<cell|-sin<around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|sin<around*|(|\<alpha\>|)>>|<cell|cos<around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>>>
    </eqnarray>

    <item>Elementary rotation around <math|<wide|e<rsub|y>|\<vect\>><rprime|'>>
    by an angle <math|\<beta\>>:

    <\eqnarray>
      <tformat|<table|<row|<cell|R<rsub|y><around*|(|\<beta\>|)>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<beta\>|)>>|<cell|0>|<cell|sin<around*|(|\<beta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin<around*|(|\<beta\>|)>>|<cell|0>|<cell|cos<around*|(|\<beta\>|)>>>>>>>>>>
    </eqnarray>

    <item>Elementary rotation around <math|<wide|e<rsub|x>|\<vect\>><rprime|'>>
    by an angle <math|\<gamma\>>:

    <\eqnarray>
      <tformat|<table|<row|<cell|R<rsub|x><around*|(|\<gamma\>|)>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos<around*|(|\<gamma\>|)>>|<cell|-sin<around*|(|\<gamma\>|)>>>|<row|<cell|0>|<cell|sin<around*|(|\<gamma\>|)>>|<cell|cos<around*|(|\<gamma\>|)>>>>>>>>>>
    </eqnarray>
  </enumerate>

  <subsection|Example>

  Now let's imagine taking a vector <math|<wide|v|\<vect\>>=<matrix|<tformat|<table|<row|<cell|v<rsub|x>>|<cell|v<rsub|y>>|<cell|v<rsub|z>>>>>><rsup|\<top\>>>
  and applying any elementary rotation matrix as follows:

  <\eqnarray>
    <tformat|<table|<row|<cell|<wide|v|\<vect\>><rprime|'>>|<cell|=>|<cell|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>*<wide|v|\<vect\>>>>>>
  </eqnarray>

  the result of the multiplication between the rotation matrix and the vector
  <math|<wide|v|\<vect\>>> is nothing more than a change of coordinates that
  takes us from the <math|v<rsub|x>,v<rsub|y>> and <math|v<rsub|z>>
  coordinates in the vector <math|<wide|v|\<vect\>>> to the
  <math|v<rsub|x><rprime|'>,v<rsub|y><rprime|'>> and
  <math|v<rsub|z><rprime|'>> coordinates of the resulting vector
  <math|<wide|v|\<vect\>><rprime|'>>.

  <subsection|Interesting property>

  An interesting property of elementary rotation matricies is that the
  inverse is equal to the transpose, in particular:

  <\eqnarray>
    <tformat|<table|<row|<cell|R<rsub|<wide|r|\<vect\>>><rsup|-1><around*|(|\<theta\>|)>=R<rsub|<wide|r|\<vect\>>><rsup|\<top\>><around*|(|\<theta\>|)>>|<cell|\<Rightarrow\>>|<cell|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>*R<rsub|<wide|r|\<vect\>>><rsup|\<top\>><around*|(|\<theta\>|)>=I<rsub|n>>>>>
  </eqnarray>

  More generally, there are translation matrices which are ``composed'' of
  rotation matrices plus something else that we now see.

  <subsection|Translations>

  A generic rototranslation matrix is defined as follows:

  <\eqnarray>
    <tformat|<table|<row|<cell|T<around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|2|2|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>>|<cell|>|<cell|<wide|p|\<vect\>>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|>|<cell|>|<cell|l<rsub|x>>>|<row|<cell|>|<cell|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>>|<cell|>|<cell|l<rsub|y>>>|<row|<cell|>|<cell|>|<cell|>|<cell|l<rsub|z>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>>>
  </eqnarray>

  where <math|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>\<in\>\<bbb-R\><rsup|3\<times\>3>>
  can be any elementary rotation matrix and
  <math|<wide|p|\<vect\>>=<matrix|<tformat|<table|<row|<cell|l<rsub|x>>|<cell|l<rsub|y>>|<cell|l<rsub|z>>>>>><rsup|\<top\>>\<in\>\<bbb-R\><rsup|3\<times\>1>>
  is a vector which, once assigned, allow us to move along the Cartesian axes
  by carrying out real translations.

  Rototranslation matrices are very useful because as can be understood if
  <math|l<rsub|x>=l<rsub|y>=l<rsub|z>=0> then we obtain an elementary
  rotation matrix but they do not have the same properties as rotation
  matrices and therefore if we have to carry out inverse rototranslations we
  necessarily need to calculate the inverse matrices based on the axis of
  rotation that we decide to use, in particular:

  <\eqnarray>
    <tformat|<table|<row|<cell|<wide|v|\<vect\>><rprime|'>=T<around*|(|\<theta\>,<wide|p|\<vect\>>|)>*<wide|v|\<vect\>>>|<cell|\<Longleftrightarrow\>>|<cell|<wide|v|\<vect\>>=T<rsup|-1><around*|(|\<theta\>,<wide|p|\<vect\>>|)>*<wide|v|\<vect\>><rprime|'>>>>>
  </eqnarray>

  similary if <math|\<theta\>=0> then the rototranslation matrix only
  performs one traslation using the axes, in particular:

  <\enumerate>
    <item>If <math|l<rsub|x>=l<rsub|y>=l<rsub|z>=0> then:

    <\eqnarray>
      <tformat|<table|<row|<cell|T<around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|T<around*|(|\<theta\>,0|)>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|>|<cell|>|<cell|0>>|<row|<cell|>|<cell|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>>|<cell|>|<cell|0>>|<row|<cell|>|<cell|>|<cell|>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>\<in\>\<bbb-R\><rsup|4\<times\>4>>>|<row|<cell|>|<cell|=>|<cell|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>\<in\>\<bbb-R\><rsup|3\<times\>3>>>>>
    </eqnarray>

    <item>If <math|\<theta\>=0> then:

    <\eqnarray>
      <tformat|<table|<row|<cell|T<around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|T<around*|(|0,<wide|p|\<vect\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|>|<cell|>|<cell|l<rsub|x>>>|<row|<cell|>|<cell|R<rsub|<wide|r|\<vect\>>><around*|(|0|)>>|<cell|>|<cell|l<rsub|y>>>|<row|<cell|>|<cell|>|<cell|>|<cell|l<rsub|z>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|>|<cell|>|<cell|l<rsub|x>>>|<row|<cell|>|<cell|I>|<cell|>|<cell|l<rsub|y>>>|<row|<cell|>|<cell|>|<cell|>|<cell|l<rsub|z>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>>>
    </eqnarray>

    in fact any translation matrix calculated at
    <math|\<alpha\>=\<beta\>=\<gamma\>=0> is equal to the identity matrix, as
    follows:

    <\eqnarray>
      <tformat|<table|<row|<cell|R<rsub|z><around*|(|\<alpha\>|)>=<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<alpha\>|)>>|<cell|-sin<around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|sin<around*|(|\<alpha\>|)>>|<cell|cos<around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>|<cell|\<Rightarrow\>>|<cell|R<rsub|z><around*|(|0|)>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>=I<rsub|3>>>|<row|<cell|R<rsub|y><around*|(|\<beta\>|)>=<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<beta\>|)>>|<cell|0>|<cell|sin<around*|(|\<beta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin<around*|(|\<beta\>|)>>|<cell|0>|<cell|cos<around*|(|\<beta\>|)>>>>>>>|<cell|\<Rightarrow\>>|<cell|R<rsub|y><around*|(|\<beta\>|)>=I<rsub|3>>>|<row|<cell|R<rsub|x><around*|(|\<gamma\>|)>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos<around*|(|\<gamma\>|)>>|<cell|-sin<around*|(|\<gamma\>|)>>>|<row|<cell|0>|<cell|sin<around*|(|\<gamma\>|)>>|<cell|cos<around*|(|\<gamma\>|)>>>>>>>|<cell|\<Rightarrow\>>|<cell|R<rsub|x><around*|(|\<gamma\>|)>=I<rsub|3>>>>>
    </eqnarray>

    Therefore as regards the second case, to obtain the new coordinates it
    will be sufficient to carry out some sums between the components of the
    vector <math|<wide|v|\<vect\>>> and the components of the matrix
    <math|T<around*|(|0,<wide|p|\<vect\>>|)>> and if you do this you will
    notice how in reality this matrix can be rewritten more simply as
    follows:

    <\eqnarray>
      <tformat|<table|<row|<cell|T<around*|(|0,<wide|p|\<vect\>>|)>=<matrix|<tformat|<table|<row|<cell|l<rsub|x>>>|<row|<cell|l<rsub|y>>>|<row|<cell|l<rsub|z>>>>>>>|<cell|\<Rightarrow\>>|<cell|T*<wide|v|\<vect\>>=<matrix|<tformat|<table|<row|<cell|l<rsub|x>+v<rsub|x>>>|<row|<cell|l<rsub|y>+v<rsub|y>>>|<row|<cell|l<rsub|z>+v<rsub|z>>>>>>=<matrix|<tformat|<table|<row|<cell|<wide|v|\<vect\>><rsub|x><rprime|'>>>|<row|<cell|<wide|v|\<vect\>><rsub|y><rprime|'>>>|<row|<cell|<wide|v|\<vect\>><rsub|z><rprime|'>>>>>>=<wide|v|\<vect\>><rprime|'>>>>>
    </eqnarray>
  </enumerate>

  <subsection|Inverse matrices>

  As already mentioned, when we are dealing with a rototranslation matrix
  along any Cartesian axis, the property of rotation matrices whereby the
  inverse is equal to the transpose does not apply and therefore now let's
  see a simple way to obtain the matrix <math|T<rsup|-1><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>.

  Let's try to find a general formula starting from this simple matrix:

  <\eqnarray>
    <tformat|<table|<row|<cell|T<around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|2|2|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>>|<cell|>|<cell|<wide|p|\<vect\>>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>>>
  </eqnarray>

  since <math|<wide|p|\<vect\>>\<in\>\<bbb-R\><rsup|3\<times\>1>> has no
  inverse then I consider a generic point <math|P(x, y)> of the 3D space and
  I set <math|y = R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>*x+<wide|p|\<vect\>>>,
  where <math|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>> is our any
  elementary rotation matrix and <math|<wide|p|\<vect\>>> is any translation
  along any axis. The idea is therefore to invert this formula by making
  <math|x> explicit as a function of <math|y> as follows:

  <\eqnarray>
    <tformat|<table|<row|<cell|y = R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>*x+<wide|p|\<vect\>>>|<cell|\<Rightarrow\>>|<cell|x=R<rsub|<wide|r|\<vect\>>><rsup|\<top\>><around*|(|\<theta\>|)>*<around*|(|y-<wide|p|\<vect\>>|)>=R<rsub|<wide|r|\<vect\>>><rsup|\<top\>><around*|(|\<theta\>|)>*y-R<rsub|<wide|r|\<vect\>>><rsup|\<top\>><around*|(|\<theta\>|)>*<wide|p|\<vect\>>>>>>
  </eqnarray>

  Writing this in homogeneous coordinates, the inverse matrix is:

  <\eqnarray>
    <tformat|<table|<row|<cell|T<rsup|-1><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|2|2|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|R<rsup|\<top\>><rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>>|<cell|>|<cell|-R<rsup|\<top\>><rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>*<wide|p|\<vect\>><rsup|>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>>>
  </eqnarray>

  Fantastic! We have found a general formula to tell that
  <math|T<around*|(|\<theta\>,<wide|p|\<vect\>>|)>*T<rsup|-1><around*|(|\<theta\>,<wide|p|\<vect\>>|)>=I<rsub|n>>.
  Now we calculate each individual translation along the 3D axes as follows:

  <\itemize>
    <item>If <math|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>=R<rsub|z><around*|(|\<theta\>|)>>
    and <math|<wide|p|\<vect\>>=<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|l<rsub|z>>>>>><rsup|\<top\>>>
    then:

    <\eqnarray>
      <tformat|<table|<row|<cell|T<rsub|z><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|-sin<around*|(|\<theta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|sin<around*|(|\<theta\>|)>>|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|l<rsub|z>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|-R<rsup|\<top\>><rsub|z><around*|(|\<theta\>|)>*<wide|p|\<vect\>>>|<cell|=>|<cell|-<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|sin<around*|(|\<theta\>|)>>|<cell|0>>|<row|<cell|-sin<around*|(|\<theta\>|)>>|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>*<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|l<rsub|z>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-l<rsub|z>>>>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|T<rsub|z><rsup|-1><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|3|3|1|3|cell-tborder|0ln>|<cwith|3|3|1|3|cell-bborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|1|3|3|3|cell-rborder|1ln>|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|sin<around*|(|\<theta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|-sin<around*|(|\<theta\>|)>>|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|<rsup|>-l<rsub|z>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>>>
    </eqnarray>

    <item>If <math|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>=R<rsub|y><around*|(|\<theta\>|)>>
    and <math|<wide|p|\<vect\>>=<matrix|<tformat|<table|<row|<cell|0>|<cell|l<rsub|y>>|<cell|0>>>>><rsup|\<top\>>>
    then:

    <\eqnarray>
      <tformat|<table|<row|<cell|T<rsub|y><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>|<cell|sin<around*|(|\<theta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|l<rsub|y>>>|<row|<cell|-sin<around*|(|\<theta\>|)>>|<cell|0>|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|-R<rsup|\<top\>><rsub|y><around*|(|\<theta\>|)>*<wide|p|\<vect\>>>|<cell|=>|<cell|-<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>|<cell|-sin<around*|(|\<theta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|sin<around*|(|\<theta\>|)>>|<cell|0>|<cell|cos<around*|(|\<theta\>|)>>>>>>*<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|l<rsub|y>>>|<row|<cell|0>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-l<rsub|y>>>|<row|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|T<rsub|y><rsup|-1><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|3|3|1|3|cell-tborder|0ln>|<cwith|3|3|1|3|cell-bborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|1|3|3|3|cell-rborder|1ln>|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>|<cell|-sin<around*|(|\<theta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-l<rsub|y>>>|<row|<cell|sin<around*|(|\<theta\>|)>>|<cell|0>|<cell|cos<around*|(|\<theta\>|)>>|<cell|<rsup|>0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>>>
    </eqnarray>

    <item>If <math|R<rsub|<wide|r|\<vect\>>><around*|(|\<theta\>|)>=R<rsub|x><around*|(|\<theta\>|)>>
    and <math|<wide|p|\<vect\>>=<matrix|<tformat|<table|<row|<cell|l<rsub|x>>|<cell|0>|<cell|0>>>>><rsup|\<top\>>>
    then:

    <\eqnarray>
      <tformat|<table|<row|<cell|T<rsub|x><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|l<rsub|x>>>|<row|<cell|0>|<cell|cos<around*|(|\<alpha\>|)>>|<cell|-sin<around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|sin<around*|(|\<alpha\>|)>>|<cell|cos<around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|-R<rsup|\<top\>><rsub|x><around*|(|\<theta\>|)>*<wide|p|\<vect\>>>|<cell|=>|<cell|-<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos<around*|(|\<alpha\>|)>>|<cell|sin<around*|(|\<alpha\>|)>>>|<row|<cell|0>|<cell|-sin<around*|(|\<alpha\>|)>>|<cell|cos<around*|(|\<alpha\>|)>>>>>>*<matrix|<tformat|<table|<row|<cell|l<rsub|x>>>|<row|<cell|0>>|<row|<cell|0>>>>>=<matrix|<tformat|<table|<row|<cell|-l<rsub|x>>>|<row|<cell|0>>|<row|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|T<rsub|x><rsup|-1><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|3|3|1|3|cell-tborder|0ln>|<cwith|3|3|1|3|cell-bborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|1|3|3|3|cell-rborder|1ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|-l<rsub|x>>>|<row|<cell|0>|<cell|cos<around*|(|\<alpha\>|)>>|<cell|sin<around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|-sin<around*|(|\<alpha\>|)>>|<cell|cos<around*|(|\<alpha\>|)>>|<cell|<rsup|>0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>>>
    </eqnarray>
  </itemize>

  With this explicit calculation every doubt should be clarified, in
  particular each part of the matrix has a very specific purpose as we have
  widely seen and this is truly impressive.

  I conclude by saying that the principle of superposition of effects
  applies, so if for example I want to simultaneously translate both on
  <math|x> and <math|y> and rotate on <math|z> the rototranslation matrix
  will be the following:

  <\eqnarray>
    <tformat|<table|<row|<cell|T<rsub|z><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|3|3|1|3|cell-tborder|0ln>|<cwith|3|3|1|3|cell-bborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|1|3|3|3|cell-rborder|1ln>|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|-sin<around*|(|\<theta\>|)>>|<cell|0>|<cell|l<rsub|x>>>|<row|<cell|sin<around*|(|\<theta\>|)>>|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>|<cell|l<rsub|y>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|-R<rsup|\<top\>><rsub|z><around*|(|\<theta\>|)>*<wide|p|\<vect\>>>|<cell|=>|<cell|-<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|sin<around*|(|\<theta\>|)>>|<cell|0>>|<row|<cell|-sin<around*|(|\<theta\>|)>>|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>*<matrix|<tformat|<cwith|3|3|1|1|cell-tborder|0ln>|<cwith|3|3|1|1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-tborder|0ln>|<cwith|3|3|1|1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|l<rsub|x>>>|<row|<cell|l<rsub|y>>>|<row|<cell|0>>>>>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|-l<rsub|y>*sin<around*|(|\<theta\>|)>-l<rsub|x>*cos<around*|(|\<theta\>|)>>>|<row|<cell|l<rsub|x>*sin<around*|(|\<theta\>|)>-l<rsub|y>*cos<around*|(|\<theta\>|)>>>|<row|<cell|0>>>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|T<rsup|-1><rsub|z><around*|(|\<theta\>,<wide|p|\<vect\>>|)>>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|4|4|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|3|3|1|3|cell-tborder|0ln>|<cwith|3|3|1|3|cell-bborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|1|3|3|3|cell-rborder|1ln>|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|sin<around*|(|\<theta\>|)>>|<cell|0>|<cell|-l<rsub|y>*sin<around*|(|\<theta\>|)>-l<rsub|x>*cos<around*|(|\<theta\>|)>>>|<row|<cell|-sin<around*|(|\<theta\>|)>>|<cell|cos<around*|(|\<theta\>|)>>|<cell|0>|<cell|l<rsub|x>*sin<around*|(|\<theta\>|)>-l<rsub|y>*cos<around*|(|\<theta\>|)>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>>>
  </eqnarray>

  <subsection|The code>

  The code I have reported below is just a draft compatible with Processing
  that implements the matrices I have explained in this pdf:

  <\java-code>
    class Translation {

    \ \ float theta, l;

    \;

    \ \ Translation(float theta, float l) {

    \ \ \ \ this.theta = radians(theta);

    \ \ \ \ this.l = l;

    \ \ }

    \;

    \ \ float[][] x() {

    \ \ \ \ float[][] x = {

    \ \ \ \ \ \ {1, 0, 0, l},

    \ \ \ \ \ \ {0, cos(theta), -sin(theta), 0},

    \ \ \ \ \ \ {0, sin(theta), cos(theta), 0},

    \ \ \ \ \ \ {0, 0, 0, 1}

    \ \ \ \ };

    \ \ \ \ return x;

    \ \ }

    \;

    \ \ float[][] xInv() {

    \ \ \ \ float[][] xInv = {

    \ \ \ \ \ \ {1, 0, 0, -l},

    \ \ \ \ \ \ {0, cos(theta), sin(theta), 0},

    \ \ \ \ \ \ {0, -sin(theta), cos(theta), 0},

    \ \ \ \ \ \ {0, 0, 0, 1}

    \ \ \ \ };

    \ \ \ \ return xInv;

    \ \ }

    \;

    \ \ float[][] y() {

    \ \ \ \ float[][] y = {

    \ \ \ \ \ \ {cos(theta), 0, sin(theta), 0},

    \ \ \ \ \ \ {0, 1, 0, l},

    \ \ \ \ \ \ {-sin(theta), 0, cos(theta), 0},

    \ \ \ \ \ \ {0, 0, 0, 1}

    \ \ \ \ };

    \ \ \ \ return y;

    \ \ }

    \;

    \ \ float[][] yInv() {

    \ \ \ \ float[][] yInv = {

    \ \ \ \ \ \ {cos(theta), 0, -sin(theta), 0},

    \ \ \ \ \ \ {0, 1, 0, -l},

    \ \ \ \ \ \ {sin(theta), 0, cos(theta), 0},

    \ \ \ \ \ \ {0, 0, 0, 1}

    \ \ \ \ };

    \ \ \ \ return yInv;

    \ \ }

    \;

    \ \ float[][] z() {

    \ \ \ \ float[][] z = {

    \ \ \ \ \ \ {cos(theta), -sin(theta), 0, 0},

    \ \ \ \ \ \ {sin(theta), cos(theta), 0, 0},

    \ \ \ \ \ \ {0, 0, 1, l},

    \ \ \ \ \ \ {0, 0, 0, 1}

    \ \ \ \ };

    \ \ \ \ return z;

    \ \ }

    \;

    \ \ float[][] zInv() {

    \ \ \ \ float[][] zInv = {

    \ \ \ \ \ \ {cos(theta), sin(theta), 0, 0},

    \ \ \ \ \ \ {-sin(theta), cos(theta), 0, 0},

    \ \ \ \ \ \ {0, 0, 1, -l},

    \ \ \ \ \ \ {0, 0, 0, 1}

    \ \ \ \ };

    \ \ \ \ return zInv;

    \ \ }

    }
  </java-code>

  If you have any doubts, don't hesitate to contact me.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
    <associate|prog-scripts|maxima>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-2|<tuple|1.1|1|../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-3|<tuple|1.2|1|../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-4|<tuple|1.3|2|../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-5|<tuple|1.4|2|../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-6|<tuple|1.5|3|../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-7|<tuple|1.6|5|../../../.TeXmacs/texts/scratch/no_name_2.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Rotations
      and translations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Elementary rotations around
      the <with|mode|<quote|math>|x,y> and <with|mode|<quote|math>|z> axes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Example
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Interesting property
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Translations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Inverse matrices
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>The code
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>
    </associate>
  </collection>
</auxiliary>
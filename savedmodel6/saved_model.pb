Ē
čŹ
:
Add
x"T
y"T
z"T"
Ttype:
2	
ī
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
`
TensorSummaryV2
tag
tensor"T
serialized_summary_metadata
summary"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02
b'unknown'

inputs/xPlaceholder*
dtype0*&
shape:’’’’’’’’’««*1
_output_shapes
:’’’’’’’’’««
p
inputs/labelsPlaceholder*
dtype0*
shape:’’’’’’’’’*'
_output_shapes
:’’’’’’’’’
n
weight/truncated_normal/shapeConst*
valueB"«    *
dtype0*
_output_shapes
:
a
weight/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
c
weight/truncated_normal/stddevConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Ŗ
'weight/truncated_normal/TruncatedNormalTruncatedNormalweight/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed * 
_output_shapes
:
«Æ

weight/truncated_normal/mulMul'weight/truncated_normal/TruncatedNormalweight/truncated_normal/stddev*
T0* 
_output_shapes
:
«Æ

weight/truncated_normalAddweight/truncated_normal/mulweight/truncated_normal/mean*
T0* 
_output_shapes
:
«Æ

weight/Variable
VariableV2*
dtype0*
shared_name *
shape:
«Æ*
	container * 
_output_shapes
:
«Æ
Ā
weight/Variable/AssignAssignweight/Variableweight/truncated_normal*
T0*
use_locking(*
validate_shape(*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ

weight/Variable/readIdentityweight/Variable*
T0*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
_
weight/weight/tagConst*
valueB Bweight/weight*
dtype0*
_output_shapes
: 
k
weight/weightHistogramSummaryweight/weight/tagweight/Variable/read*
T0*
_output_shapes
: 
l
bias/truncated_normal/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
bias/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
bias/truncated_normal/stddevConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
¤
%bias/truncated_normal/TruncatedNormalTruncatedNormalbias/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed *
_output_shapes

:

bias/truncated_normal/mulMul%bias/truncated_normal/TruncatedNormalbias/truncated_normal/stddev*
T0*
_output_shapes

:
|
bias/truncated_normalAddbias/truncated_normal/mulbias/truncated_normal/mean*
T0*
_output_shapes

:

bias/Variable
VariableV2*
dtype0*
shared_name *
shape
:*
	container *
_output_shapes

:
ø
bias/Variable/AssignAssignbias/Variablebias/truncated_normal*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes

:
x
bias/Variable/readIdentitybias/Variable*
T0* 
_class
loc:@bias/Variable*
_output_shapes

:
W
bias/bias/tagConst*
valueB B	bias/bias*
dtype0*
_output_shapes
: 
c
	bias/biasHistogramSummarybias/bias/tagweight/Variable/read*
T0*
_output_shapes
: 
f
Reshape/Reshape/shapeConst*
valueB"’’’’« *
dtype0*
_output_shapes
:
}
Reshape/ReshapeReshapeinputs/xReshape/Reshape/shape*
T0*
Tshape0*)
_output_shapes
:’’’’’’’’’«Æ

Magic/MatMulMatMulReshape/Reshapeweight/Variable/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’
d
	Magic/addAddMagic/MatMulbias/Variable/read*
T0*'
_output_shapes
:’’’’’’’’’
m
+xent/softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0*
_output_shapes
: 
u
,xent/softmax_cross_entropy_with_logits/ShapeShape	Magic/add*
T0*
out_type0*
_output_shapes
:
o
-xent/softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
w
.xent/softmax_cross_entropy_with_logits/Shape_1Shape	Magic/add*
T0*
out_type0*
_output_shapes
:
n
,xent/softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Æ
*xent/softmax_cross_entropy_with_logits/SubSub-xent/softmax_cross_entropy_with_logits/Rank_1,xent/softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 
 
2xent/softmax_cross_entropy_with_logits/Slice/beginPack*xent/softmax_cross_entropy_with_logits/Sub*

axis *
T0*
N*
_output_shapes
:
{
1xent/softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ž
,xent/softmax_cross_entropy_with_logits/SliceSlice.xent/softmax_cross_entropy_with_logits/Shape_12xent/softmax_cross_entropy_with_logits/Slice/begin1xent/softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0*
_output_shapes
:

6xent/softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
t
2xent/softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

-xent/softmax_cross_entropy_with_logits/concatConcatV26xent/softmax_cross_entropy_with_logits/concat/values_0,xent/softmax_cross_entropy_with_logits/Slice2xent/softmax_cross_entropy_with_logits/concat/axis*
T0*
N*

Tidx0*
_output_shapes
:
¼
.xent/softmax_cross_entropy_with_logits/ReshapeReshape	Magic/add-xent/softmax_cross_entropy_with_logits/concat*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
o
-xent/softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
{
.xent/softmax_cross_entropy_with_logits/Shape_2Shapeinputs/labels*
T0*
out_type0*
_output_shapes
:
p
.xent/softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
³
,xent/softmax_cross_entropy_with_logits/Sub_1Sub-xent/softmax_cross_entropy_with_logits/Rank_2.xent/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
¤
4xent/softmax_cross_entropy_with_logits/Slice_1/beginPack,xent/softmax_cross_entropy_with_logits/Sub_1*

axis *
T0*
N*
_output_shapes
:
}
3xent/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:

.xent/softmax_cross_entropy_with_logits/Slice_1Slice.xent/softmax_cross_entropy_with_logits/Shape_24xent/softmax_cross_entropy_with_logits/Slice_1/begin3xent/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:

8xent/softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
v
4xent/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

/xent/softmax_cross_entropy_with_logits/concat_1ConcatV28xent/softmax_cross_entropy_with_logits/concat_1/values_0.xent/softmax_cross_entropy_with_logits/Slice_14xent/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*

Tidx0*
_output_shapes
:
Ä
0xent/softmax_cross_entropy_with_logits/Reshape_1Reshapeinputs/labels/xent/softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
ó
&xent/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits.xent/softmax_cross_entropy_with_logits/Reshape0xent/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:’’’’’’’’’:’’’’’’’’’’’’’’’’’’
p
.xent/softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
±
,xent/softmax_cross_entropy_with_logits/Sub_2Sub+xent/softmax_cross_entropy_with_logits/Rank.xent/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 
~
4xent/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
£
3xent/softmax_cross_entropy_with_logits/Slice_2/sizePack,xent/softmax_cross_entropy_with_logits/Sub_2*

axis *
T0*
N*
_output_shapes
:

.xent/softmax_cross_entropy_with_logits/Slice_2Slice,xent/softmax_cross_entropy_with_logits/Shape4xent/softmax_cross_entropy_with_logits/Slice_2/begin3xent/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ļ
0xent/softmax_cross_entropy_with_logits/Reshape_2Reshape&xent/softmax_cross_entropy_with_logits.xent/softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
T

xent/ConstConst*
valueB: *
dtype0*
_output_shapes
:

	xent/xentMean0xent/softmax_cross_entropy_with_logits/Reshape_2
xent/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
\
xent/xent_1/tagsConst*
valueB Bxent/xent_1*
dtype0*
_output_shapes
: 
Z
xent/xent_1ScalarSummaryxent/xent_1/tags	xent/xent*
T0*
_output_shapes
: 
X
train/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
^
train/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 

train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
v
,train/gradients/xent/xent_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Ø
&train/gradients/xent/xent_grad/ReshapeReshapetrain/gradients/Fill,train/gradients/xent/xent_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

$train/gradients/xent/xent_grad/ShapeShape0xent/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
¹
#train/gradients/xent/xent_grad/TileTile&train/gradients/xent/xent_grad/Reshape$train/gradients/xent/xent_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:’’’’’’’’’

&train/gradients/xent/xent_grad/Shape_1Shape0xent/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
i
&train/gradients/xent/xent_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
n
$train/gradients/xent/xent_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
·
#train/gradients/xent/xent_grad/ProdProd&train/gradients/xent/xent_grad/Shape_1$train/gradients/xent/xent_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
p
&train/gradients/xent/xent_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
»
%train/gradients/xent/xent_grad/Prod_1Prod&train/gradients/xent/xent_grad/Shape_2&train/gradients/xent/xent_grad/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
j
(train/gradients/xent/xent_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
£
&train/gradients/xent/xent_grad/MaximumMaximum%train/gradients/xent/xent_grad/Prod_1(train/gradients/xent/xent_grad/Maximum/y*
T0*
_output_shapes
: 
”
'train/gradients/xent/xent_grad/floordivFloorDiv#train/gradients/xent/xent_grad/Prod&train/gradients/xent/xent_grad/Maximum*
T0*
_output_shapes
: 

#train/gradients/xent/xent_grad/CastCast'train/gradients/xent/xent_grad/floordiv*

DstT0*
Truncate( *

SrcT0*
_output_shapes
: 
©
&train/gradients/xent/xent_grad/truedivRealDiv#train/gradients/xent/xent_grad/Tile#train/gradients/xent/xent_grad/Cast*
T0*#
_output_shapes
:’’’’’’’’’
±
Ktrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape&xent/softmax_cross_entropy_with_logits*
T0*
out_type0*
_output_shapes
:

Mtrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape&train/gradients/xent/xent_grad/truedivKtrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’

train/gradients/zeros_like	ZerosLike(xent/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Jtrain/gradients/xent/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
­
Ftrain/gradients/xent/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsMtrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeJtrain/gradients/xent/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:’’’’’’’’’
ó
?train/gradients/xent/softmax_cross_entropy_with_logits_grad/mulMulFtrain/gradients/xent/softmax_cross_entropy_with_logits_grad/ExpandDims(xent/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
æ
Ftrain/gradients/xent/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax.xent/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
É
?train/gradients/xent/softmax_cross_entropy_with_logits_grad/NegNegFtrain/gradients/xent/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Ltrain/gradients/xent/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
±
Htrain/gradients/xent/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsMtrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeLtrain/gradients/xent/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*

Tdim0*'
_output_shapes
:’’’’’’’’’

Atrain/gradients/xent/softmax_cross_entropy_with_logits_grad/mul_1MulHtrain/gradients/xent/softmax_cross_entropy_with_logits_grad/ExpandDims_1?train/gradients/xent/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ś
Ltrain/gradients/xent/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp@^train/gradients/xent/softmax_cross_entropy_with_logits_grad/mulB^train/gradients/xent/softmax_cross_entropy_with_logits_grad/mul_1
’
Ttrain/gradients/xent/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity?train/gradients/xent/softmax_cross_entropy_with_logits_grad/mulM^train/gradients/xent/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*R
_classH
FDloc:@train/gradients/xent/softmax_cross_entropy_with_logits_grad/mul*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Vtrain/gradients/xent/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1IdentityAtrain/gradients/xent/softmax_cross_entropy_with_logits_grad/mul_1M^train/gradients/xent/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@train/gradients/xent/softmax_cross_entropy_with_logits_grad/mul_1*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Itrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShape	Magic/add*
T0*
out_type0*
_output_shapes
:
·
Ktrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeTtrain/gradients/xent/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyItrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
p
$train/gradients/Magic/add_grad/ShapeShapeMagic/MatMul*
T0*
out_type0*
_output_shapes
:
w
&train/gradients/Magic/add_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
Ų
4train/gradients/Magic/add_grad/BroadcastGradientArgsBroadcastGradientArgs$train/gradients/Magic/add_grad/Shape&train/gradients/Magic/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ģ
"train/gradients/Magic/add_grad/SumSumKtrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_grad/Reshape4train/gradients/Magic/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
»
&train/gradients/Magic/add_grad/ReshapeReshape"train/gradients/Magic/add_grad/Sum$train/gradients/Magic/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
š
$train/gradients/Magic/add_grad/Sum_1SumKtrain/gradients/xent/softmax_cross_entropy_with_logits/Reshape_grad/Reshape6train/gradients/Magic/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ø
(train/gradients/Magic/add_grad/Reshape_1Reshape$train/gradients/Magic/add_grad/Sum_1&train/gradients/Magic/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:

/train/gradients/Magic/add_grad/tuple/group_depsNoOp'^train/gradients/Magic/add_grad/Reshape)^train/gradients/Magic/add_grad/Reshape_1

7train/gradients/Magic/add_grad/tuple/control_dependencyIdentity&train/gradients/Magic/add_grad/Reshape0^train/gradients/Magic/add_grad/tuple/group_deps*
T0*9
_class/
-+loc:@train/gradients/Magic/add_grad/Reshape*'
_output_shapes
:’’’’’’’’’

9train/gradients/Magic/add_grad/tuple/control_dependency_1Identity(train/gradients/Magic/add_grad/Reshape_10^train/gradients/Magic/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/Magic/add_grad/Reshape_1*
_output_shapes

:
Ū
(train/gradients/Magic/MatMul_grad/MatMulMatMul7train/gradients/Magic/add_grad/tuple/control_dependencyweight/Variable/read*
T0*
transpose_b(*
transpose_a( *)
_output_shapes
:’’’’’’’’’«Æ
Ļ
*train/gradients/Magic/MatMul_grad/MatMul_1MatMulReshape/Reshape7train/gradients/Magic/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:
«Æ

2train/gradients/Magic/MatMul_grad/tuple/group_depsNoOp)^train/gradients/Magic/MatMul_grad/MatMul+^train/gradients/Magic/MatMul_grad/MatMul_1

:train/gradients/Magic/MatMul_grad/tuple/control_dependencyIdentity(train/gradients/Magic/MatMul_grad/MatMul3^train/gradients/Magic/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/Magic/MatMul_grad/MatMul*)
_output_shapes
:’’’’’’’’’«Æ

<train/gradients/Magic/MatMul_grad/tuple/control_dependency_1Identity*train/gradients/Magic/MatMul_grad/MatMul_13^train/gradients/Magic/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/Magic/MatMul_grad/MatMul_1* 
_output_shapes
:
«Æ

train/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0* 
_class
loc:@bias/Variable*
_output_shapes
: 

train/beta1_power
VariableV2*
dtype0*
shared_name *
shape: *
	container * 
_class
loc:@bias/Variable*
_output_shapes
: 
Ā
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes
: 
x
train/beta1_power/readIdentitytrain/beta1_power*
T0* 
_class
loc:@bias/Variable*
_output_shapes
: 

train/beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0* 
_class
loc:@bias/Variable*
_output_shapes
: 

train/beta2_power
VariableV2*
dtype0*
shared_name *
shape: *
	container * 
_class
loc:@bias/Variable*
_output_shapes
: 
Ā
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes
: 
x
train/beta2_power/readIdentitytrain/beta2_power*
T0* 
_class
loc:@bias/Variable*
_output_shapes
: 
«
6weight/Variable/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"«    *
dtype0*"
_class
loc:@weight/Variable*
_output_shapes
:

,weight/Variable/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*"
_class
loc:@weight/Variable*
_output_shapes
: 
õ
&weight/Variable/Adam/Initializer/zerosFill6weight/Variable/Adam/Initializer/zeros/shape_as_tensor,weight/Variable/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
°
weight/Variable/Adam
VariableV2*
dtype0*
shared_name *
shape:
«Æ*
	container *"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
Ū
weight/Variable/Adam/AssignAssignweight/Variable/Adam&weight/Variable/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ

weight/Variable/Adam/readIdentityweight/Variable/Adam*
T0*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
­
8weight/Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"«    *
dtype0*"
_class
loc:@weight/Variable*
_output_shapes
:

.weight/Variable/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*"
_class
loc:@weight/Variable*
_output_shapes
: 
ū
(weight/Variable/Adam_1/Initializer/zerosFill8weight/Variable/Adam_1/Initializer/zeros/shape_as_tensor.weight/Variable/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
²
weight/Variable/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
«Æ*
	container *"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
į
weight/Variable/Adam_1/AssignAssignweight/Variable/Adam_1(weight/Variable/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ

weight/Variable/Adam_1/readIdentityweight/Variable/Adam_1*
T0*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ

$bias/Variable/Adam/Initializer/zerosConst*
valueB*    *
dtype0* 
_class
loc:@bias/Variable*
_output_shapes

:
Ø
bias/Variable/Adam
VariableV2*
dtype0*
shared_name *
shape
:*
	container * 
_class
loc:@bias/Variable*
_output_shapes

:
Ń
bias/Variable/Adam/AssignAssignbias/Variable/Adam$bias/Variable/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes

:

bias/Variable/Adam/readIdentitybias/Variable/Adam*
T0* 
_class
loc:@bias/Variable*
_output_shapes

:

&bias/Variable/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0* 
_class
loc:@bias/Variable*
_output_shapes

:
Ŗ
bias/Variable/Adam_1
VariableV2*
dtype0*
shared_name *
shape
:*
	container * 
_class
loc:@bias/Variable*
_output_shapes

:
×
bias/Variable/Adam_1/AssignAssignbias/Variable/Adam_1&bias/Variable/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes

:

bias/Variable/Adam_1/readIdentitybias/Variable/Adam_1*
T0* 
_class
loc:@bias/Variable*
_output_shapes

:
]
train/Adam/learning_rateConst*
valueB
 *¬Å§6*
dtype0*
_output_shapes
: 
U
train/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
train/Adam/beta2Const*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
W
train/Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
­
+train/Adam/update_weight/Variable/ApplyAdam	ApplyAdamweight/Variableweight/Variable/Adamweight/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon<train/gradients/Magic/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ

)train/Adam/update_bias/Variable/ApplyAdam	ApplyAdambias/Variablebias/Variable/Adambias/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon9train/gradients/Magic/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( * 
_class
loc:@bias/Variable*
_output_shapes

:
Ü
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1*^train/Adam/update_bias/Variable/ApplyAdam,^train/Adam/update_weight/Variable/ApplyAdam*
T0* 
_class
loc:@bias/Variable*
_output_shapes
: 
Ŗ
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
T0*
use_locking( *
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes
: 
Ž
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2*^train/Adam/update_bias/Variable/ApplyAdam,^train/Adam/update_weight/Variable/ApplyAdam*
T0* 
_class
loc:@bias/Variable*
_output_shapes
: 
®
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
T0*
use_locking( *
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes
: 


train/AdamNoOp^train/Adam/Assign^train/Adam/Assign_1*^train/Adam/update_bias/Variable/ApplyAdam,^train/Adam/update_weight/Variable/ApplyAdam
[
accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

accuracy/ArgMaxArgMax	Magic/addaccuracy/ArgMax/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:’’’’’’’’’
]
accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

accuracy/ArgMax_1ArgMaxinputs/labelsaccuracy/ArgMax_1/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:’’’’’’’’’
i
accuracy/EqualEqualaccuracy/ArgMaxaccuracy/ArgMax_1*
T0	*#
_output_shapes
:’’’’’’’’’
r
accuracy/CastCastaccuracy/Equal*

DstT0*
Truncate( *

SrcT0
*#
_output_shapes
:’’’’’’’’’
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
accuracy/MeanMeanaccuracy/Castaccuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
h
accuracy/accuracy/tagsConst*"
valueB Baccuracy/accuracy*
dtype0*
_output_shapes
: 
j
accuracy/accuracyScalarSummaryaccuracy/accuracy/tagsaccuracy/Mean*
T0*
_output_shapes
: 
_
accuracy_val/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

accuracy_val/ArgMaxArgMax	Magic/addaccuracy_val/ArgMax/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:’’’’’’’’’
a
accuracy_val/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

accuracy_val/ArgMax_1ArgMaxinputs/labelsaccuracy_val/ArgMax_1/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:’’’’’’’’’
u
accuracy_val/EqualEqualaccuracy_val/ArgMaxaccuracy_val/ArgMax_1*
T0	*#
_output_shapes
:’’’’’’’’’
z
accuracy_val/CastCastaccuracy_val/Equal*

DstT0*
Truncate( *

SrcT0
*#
_output_shapes
:’’’’’’’’’
\
accuracy_val/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
accuracy_val/MeanMeanaccuracy_val/Castaccuracy_val/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
x
accuracy_val/accuracy_val/tagsConst**
value!B Baccuracy_val/accuracy_val*
dtype0*
_output_shapes
: 
~
accuracy_val/accuracy_valScalarSummaryaccuracy_val/accuracy_val/tagsaccuracy_val/Mean*
T0*
_output_shapes
: 

Merge/MergeSummaryMergeSummaryweight/weight	bias/biasxent/xent_1accuracy/accuracyaccuracy_val/accuracy_val*
N*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/SaveV2/tensor_namesConst*³
value©B¦Bbias/VariableBbias/Variable/AdamBbias/Variable/Adam_1Btrain/beta1_powerBtrain/beta2_powerBweight/VariableBweight/Variable/AdamBweight/Variable/Adam_1*
dtype0*
_output_shapes
:
s
save/SaveV2/shape_and_slicesConst*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbias/Variablebias/Variable/Adambias/Variable/Adam_1train/beta1_powertrain/beta2_powerweight/Variableweight/Variable/Adamweight/Variable/Adam_1*
dtypes

2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*³
value©B¦Bbias/VariableBbias/Variable/AdamBbias/Variable/Adam_1Btrain/beta1_powerBtrain/beta2_powerBweight/VariableBweight/Variable/AdamBweight/Variable/Adam_1*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:
Ā
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes

2*4
_output_shapes"
 ::::::::
Ø
save/AssignAssignbias/Variablesave/RestoreV2*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes

:
±
save/Assign_1Assignbias/Variable/Adamsave/RestoreV2:1*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes

:
³
save/Assign_2Assignbias/Variable/Adam_1save/RestoreV2:2*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes

:
Ø
save/Assign_3Assigntrain/beta1_powersave/RestoreV2:3*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes
: 
Ø
save/Assign_4Assigntrain/beta2_powersave/RestoreV2:4*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes
: 
²
save/Assign_5Assignweight/Variablesave/RestoreV2:5*
T0*
use_locking(*
validate_shape(*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
·
save/Assign_6Assignweight/Variable/Adamsave/RestoreV2:6*
T0*
use_locking(*
validate_shape(*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
¹
save/Assign_7Assignweight/Variable/Adam_1save/RestoreV2:7*
T0*
use_locking(*
validate_shape(*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7

PlaceholderPlaceholder*
dtype0*2
shape):'’’’’’’’’’’’’’’’’’’’’’’’’’’’*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
a
beholder-frame/tagConst*
valueB Bbeholder-frame*
dtype0*
_output_shapes
: 
k
*beholder-frame/serialized_summary_metadataConst*
valueB B *
dtype0*
_output_shapes
: 

beholder-frameTensorSummaryV2beholder-frame/tagPlaceholder*beholder-frame/serialized_summary_metadata*
T0*
_output_shapes
: 
ź
initNoOp^bias/Variable/Adam/Assign^bias/Variable/Adam_1/Assign^bias/Variable/Assign^train/beta1_power/Assign^train/beta2_power/Assign^weight/Variable/Adam/Assign^weight/Variable/Adam_1/Assign^weight/Variable/Assign
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_9f5ba07008b248ba8fd2586f12b28190/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst"/device:CPU:0*³
value©B¦Bbias/VariableBbias/Variable/AdamBbias/Variable/Adam_1Btrain/beta1_powerBtrain/beta2_powerBweight/VariableBweight/Variable/AdamBweight/Variable/Adam_1*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:
°
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbias/Variablebias/Variable/Adambias/Variable/Adam_1train/beta1_powertrain/beta2_powerweight/Variableweight/Variable/Adamweight/Variable/Adam_1"/device:CPU:0*
dtypes

2
Ø
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
²
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*³
value©B¦Bbias/VariableBbias/Variable/AdamBbias/Variable/Adam_1Btrain/beta1_powerBtrain/beta2_powerBweight/VariableBweight/Variable/AdamBweight/Variable/Adam_1*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:
Ź
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes

2*4
_output_shapes"
 ::::::::
¬
save_1/AssignAssignbias/Variablesave_1/RestoreV2*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes

:
µ
save_1/Assign_1Assignbias/Variable/Adamsave_1/RestoreV2:1*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes

:
·
save_1/Assign_2Assignbias/Variable/Adam_1save_1/RestoreV2:2*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes

:
¬
save_1/Assign_3Assigntrain/beta1_powersave_1/RestoreV2:3*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes
: 
¬
save_1/Assign_4Assigntrain/beta2_powersave_1/RestoreV2:4*
T0*
use_locking(*
validate_shape(* 
_class
loc:@bias/Variable*
_output_shapes
: 
¶
save_1/Assign_5Assignweight/Variablesave_1/RestoreV2:5*
T0*
use_locking(*
validate_shape(*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
»
save_1/Assign_6Assignweight/Variable/Adamsave_1/RestoreV2:6*
T0*
use_locking(*
validate_shape(*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
½
save_1/Assign_7Assignweight/Variable/Adam_1save_1/RestoreV2:7*
T0*
use_locking(*
validate_shape(*"
_class
loc:@weight/Variable* 
_output_shapes
:
«Æ
Ŗ
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"×
trainable_variablesæ¼
`
weight/Variable:0weight/Variable/Assignweight/Variable/read:02weight/truncated_normal:08
X
bias/Variable:0bias/Variable/Assignbias/Variable/read:02bias/truncated_normal:08"¢
	variables
`
weight/Variable:0weight/Variable/Assignweight/Variable/read:02weight/truncated_normal:08
X
bias/Variable:0bias/Variable/Assignbias/Variable/read:02bias/truncated_normal:08
l
train/beta1_power:0train/beta1_power/Assigntrain/beta1_power/read:02!train/beta1_power/initial_value:0
l
train/beta2_power:0train/beta2_power/Assigntrain/beta2_power/read:02!train/beta2_power/initial_value:0
|
weight/Variable/Adam:0weight/Variable/Adam/Assignweight/Variable/Adam/read:02(weight/Variable/Adam/Initializer/zeros:0

weight/Variable/Adam_1:0weight/Variable/Adam_1/Assignweight/Variable/Adam_1/read:02*weight/Variable/Adam_1/Initializer/zeros:0
t
bias/Variable/Adam:0bias/Variable/Adam/Assignbias/Variable/Adam/read:02&bias/Variable/Adam/Initializer/zeros:0
|
bias/Variable/Adam_1:0bias/Variable/Adam_1/Assignbias/Variable/Adam_1/read:02(bias/Variable/Adam_1/Initializer/zeros:0"n
	summariesa
_
weight/weight:0
bias/bias:0
xent/xent_1:0
accuracy/accuracy:0
accuracy_val/accuracy_val:0"
train_op


train/Adam"*
summaries_beholder

beholder-frame:0*
serving_default
6
x_input+

inputs/x:0’’’’’’’’’««.
y_output"
Magic/add:0’’’’’’’’’tensorflow/serving/predict
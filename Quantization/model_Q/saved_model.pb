Ãî 
º
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
¼
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

s
FakeQuantWithMinMaxVars

inputs
min
max
outputs"
num_bitsint"
narrow_rangebool( 
}
!FakeQuantWithMinMaxVarsPerChannel

inputs
min
max
outputs"
num_bitsint"
narrow_rangebool( 
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ª

%quantize_layer_3/quantize_layer_3_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%quantize_layer_3/quantize_layer_3_min

9quantize_layer_3/quantize_layer_3_min/Read/ReadVariableOpReadVariableOp%quantize_layer_3/quantize_layer_3_min*
_output_shapes
: *
dtype0

%quantize_layer_3/quantize_layer_3_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%quantize_layer_3/quantize_layer_3_max

9quantize_layer_3/quantize_layer_3_max/Read/ReadVariableOpReadVariableOp%quantize_layer_3/quantize_layer_3_max*
_output_shapes
: *
dtype0

quantize_layer_3/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!quantize_layer_3/optimizer_step

3quantize_layer_3/optimizer_step/Read/ReadVariableOpReadVariableOpquantize_layer_3/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d_5/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_5/optimizer_step

1quant_conv2d_5/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_5/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d_5/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namequant_conv2d_5/kernel_min

-quant_conv2d_5/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_5/kernel_min*
_output_shapes
:*
dtype0

quant_conv2d_5/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namequant_conv2d_5/kernel_max

-quant_conv2d_5/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_5/kernel_max*
_output_shapes
:*
dtype0

"quant_conv2d_5/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_5/post_activation_min

6quant_conv2d_5/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_5/post_activation_min*
_output_shapes
: *
dtype0

"quant_conv2d_5/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_5/post_activation_max

6quant_conv2d_5/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_5/post_activation_max*
_output_shapes
: *
dtype0
¤
(quant_average_pooling2d_5/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(quant_average_pooling2d_5/optimizer_step

<quant_average_pooling2d_5/optimizer_step/Read/ReadVariableOpReadVariableOp(quant_average_pooling2d_5/optimizer_step*
_output_shapes
: *
dtype0

$quant_average_pooling2d_5/output_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$quant_average_pooling2d_5/output_min

8quant_average_pooling2d_5/output_min/Read/ReadVariableOpReadVariableOp$quant_average_pooling2d_5/output_min*
_output_shapes
: *
dtype0

$quant_average_pooling2d_5/output_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$quant_average_pooling2d_5/output_max

8quant_average_pooling2d_5/output_max/Read/ReadVariableOpReadVariableOp$quant_average_pooling2d_5/output_max*
_output_shapes
: *
dtype0

quant_conv2d_6/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_6/optimizer_step

1quant_conv2d_6/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_6/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d_6/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namequant_conv2d_6/kernel_min

-quant_conv2d_6/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_6/kernel_min*
_output_shapes
:*
dtype0

quant_conv2d_6/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namequant_conv2d_6/kernel_max

-quant_conv2d_6/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_6/kernel_max*
_output_shapes
:*
dtype0

"quant_conv2d_6/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_6/post_activation_min

6quant_conv2d_6/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_6/post_activation_min*
_output_shapes
: *
dtype0

"quant_conv2d_6/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_6/post_activation_max

6quant_conv2d_6/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_6/post_activation_max*
_output_shapes
: *
dtype0
¤
(quant_average_pooling2d_6/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(quant_average_pooling2d_6/optimizer_step

<quant_average_pooling2d_6/optimizer_step/Read/ReadVariableOpReadVariableOp(quant_average_pooling2d_6/optimizer_step*
_output_shapes
: *
dtype0

$quant_average_pooling2d_6/output_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$quant_average_pooling2d_6/output_min

8quant_average_pooling2d_6/output_min/Read/ReadVariableOpReadVariableOp$quant_average_pooling2d_6/output_min*
_output_shapes
: *
dtype0

$quant_average_pooling2d_6/output_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$quant_average_pooling2d_6/output_max

8quant_average_pooling2d_6/output_max/Read/ReadVariableOpReadVariableOp$quant_average_pooling2d_6/output_max*
_output_shapes
: *
dtype0

quant_flatten_4/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name quant_flatten_4/optimizer_step

2quant_flatten_4/optimizer_step/Read/ReadVariableOpReadVariableOpquant_flatten_4/optimizer_step*
_output_shapes
: *
dtype0

quant_dense_18/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_dense_18/optimizer_step

1quant_dense_18/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_18/optimizer_step*
_output_shapes
: *
dtype0

quant_dense_18/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_dense_18/kernel_min

-quant_dense_18/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_18/kernel_min*
_output_shapes
: *
dtype0

quant_dense_18/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_dense_18/kernel_max

-quant_dense_18/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_18/kernel_max*
_output_shapes
: *
dtype0

"quant_dense_18/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_dense_18/post_activation_min

6quant_dense_18/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_dense_18/post_activation_min*
_output_shapes
: *
dtype0

"quant_dense_18/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_dense_18/post_activation_max

6quant_dense_18/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_dense_18/post_activation_max*
_output_shapes
: *
dtype0

quant_dense_19/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_dense_19/optimizer_step

1quant_dense_19/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_19/optimizer_step*
_output_shapes
: *
dtype0

quant_dense_19/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_dense_19/kernel_min

-quant_dense_19/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_19/kernel_min*
_output_shapes
: *
dtype0

quant_dense_19/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_dense_19/kernel_max

-quant_dense_19/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_19/kernel_max*
_output_shapes
: *
dtype0

"quant_dense_19/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_dense_19/post_activation_min

6quant_dense_19/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_dense_19/post_activation_min*
_output_shapes
: *
dtype0

"quant_dense_19/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_dense_19/post_activation_max

6quant_dense_19/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_dense_19/post_activation_max*
_output_shapes
: *
dtype0

quant_dense_20/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_dense_20/optimizer_step

1quant_dense_20/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_20/optimizer_step*
_output_shapes
: *
dtype0

quant_dense_20/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_dense_20/kernel_min

-quant_dense_20/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_20/kernel_min*
_output_shapes
: *
dtype0

quant_dense_20/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_dense_20/kernel_max

-quant_dense_20/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_20/kernel_max*
_output_shapes
: *
dtype0

!quant_dense_20/pre_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_dense_20/pre_activation_min

5quant_dense_20/pre_activation_min/Read/ReadVariableOpReadVariableOp!quant_dense_20/pre_activation_min*
_output_shapes
: *
dtype0

!quant_dense_20/pre_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_dense_20/pre_activation_max

5quant_dense_20/pre_activation_max/Read/ReadVariableOpReadVariableOp!quant_dense_20/pre_activation_max*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:*
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:*
dtype0
{
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	x* 
shared_namedense_18/kernel
t
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes
:	x*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:x*
dtype0
z
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT* 
shared_namedense_19/kernel
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

:xT*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:T*
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T
* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:T
*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:
*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

SGD/conv2d_5/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameSGD/conv2d_5/kernel/momentum

0SGD/conv2d_5/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_5/kernel/momentum*&
_output_shapes
:*
dtype0

SGD/conv2d_5/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameSGD/conv2d_5/bias/momentum

.SGD/conv2d_5/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_5/bias/momentum*
_output_shapes
:*
dtype0

SGD/conv2d_6/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameSGD/conv2d_6/kernel/momentum

0SGD/conv2d_6/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_6/kernel/momentum*&
_output_shapes
:*
dtype0

SGD/conv2d_6/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameSGD/conv2d_6/bias/momentum

.SGD/conv2d_6/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_6/bias/momentum*
_output_shapes
:*
dtype0

SGD/dense_18/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	x*-
shared_nameSGD/dense_18/kernel/momentum

0SGD/dense_18/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_18/kernel/momentum*
_output_shapes
:	x*
dtype0

SGD/dense_18/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*+
shared_nameSGD/dense_18/bias/momentum

.SGD/dense_18/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_18/bias/momentum*
_output_shapes
:x*
dtype0

SGD/dense_19/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT*-
shared_nameSGD/dense_19/kernel/momentum

0SGD/dense_19/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_19/kernel/momentum*
_output_shapes

:xT*
dtype0

SGD/dense_19/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*+
shared_nameSGD/dense_19/bias/momentum

.SGD/dense_19/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_19/bias/momentum*
_output_shapes
:T*
dtype0

SGD/dense_20/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T
*-
shared_nameSGD/dense_20/kernel/momentum

0SGD/dense_20/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_20/kernel/momentum*
_output_shapes

:T
*
dtype0

SGD/dense_20/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameSGD/dense_20/bias/momentum

.SGD/dense_20/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_20/bias/momentum*
_output_shapes
:
*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ô
valueÉBÅ B½
«
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
ì
quantize_layer_3_min
quantize_layer_3_max
quantizer_vars
optimizer_step
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
Æ
	layer
optimizer_step
_weight_vars
 
kernel_min
!
kernel_max
"_quantize_activations
#post_activation_min
$post_activation_max
%_output_quantizers
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
°
	,layer
-optimizer_step
._weight_vars
/_quantize_activations
0_output_quantizers
1
output_min
2
output_max
3_output_quantizer_vars
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses*
Æ
	:layer
;optimizer_step
<_weight_vars
=
kernel_min
>
kernel_max
?_quantize_activations
@post_activation_min
Apost_activation_max
B_output_quantizers
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses*
°
	Ilayer
Joptimizer_step
K_weight_vars
L_quantize_activations
M_output_quantizers
N
output_min
O
output_max
P_output_quantizer_vars
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
ô
	Wlayer
Xoptimizer_step
Y_weight_vars
Z_quantize_activations
[_output_quantizers
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses*
Æ
	blayer
coptimizer_step
d_weight_vars
e
kernel_min
f
kernel_max
g_quantize_activations
hpost_activation_min
ipost_activation_max
j_output_quantizers
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses*
Æ
	qlayer
roptimizer_step
s_weight_vars
t
kernel_min
u
kernel_max
v_quantize_activations
wpost_activation_min
xpost_activation_max
y_output_quantizers
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses*
Ó

layer
optimizer_step
_weight_vars

kernel_min

kernel_max
_quantize_activations
pre_activation_min
pre_activation_max
_output_quantizers
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
ò
	iter

decay
learning_rate
momentummomentum½momentum¾momentum¿momentumÀmomentumÁmomentumÂmomentumÃmomentumÄmomentumÅmomentumÆ*
ñ
0
1
2
3
4
5
 6
!7
#8
$9
-10
111
212
13
14
;15
=16
>17
@18
A19
J20
N21
O22
X23
24
25
c26
e27
f28
h29
i30
31
32
r33
t34
u35
w36
x37
38
39
40
41
42
43
44*
T
0
1
2
3
4
5
6
7
8
9*
* 
µ
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

¢serving_default* 
}
VARIABLE_VALUE%quantize_layer_3/quantize_layer_3_minDlayer_with_weights-0/quantize_layer_3_min/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE%quantize_layer_3/quantize_layer_3_maxDlayer_with_weights-0/quantize_layer_3_max/.ATTRIBUTES/VARIABLE_VALUE*

min_var
max_var*
wq
VARIABLE_VALUEquantize_layer_3/optimizer_step>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE*

0
1
2*
* 
* 

£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
®
kernel
	bias
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses*
uo
VARIABLE_VALUEquant_conv2d_5/optimizer_step>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE*

®0*
mg
VARIABLE_VALUEquant_conv2d_5/kernel_min:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEquant_conv2d_5/kernel_max:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
y
VARIABLE_VALUE"quant_conv2d_5/post_activation_minClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"quant_conv2d_5/post_activation_maxClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
7
0
1
2
 3
!4
#5
$6*

0
1*
* 

¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 

´	variables
µtrainable_variables
¶regularization_losses
·	keras_api
¸__call__
+¹&call_and_return_all_conditional_losses* 
z
VARIABLE_VALUE(quant_average_pooling2d_5/optimizer_step>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
xr
VARIABLE_VALUE$quant_average_pooling2d_5/output_min:layer_with_weights-2/output_min/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE$quant_average_pooling2d_5/output_max:layer_with_weights-2/output_max/.ATTRIBUTES/VARIABLE_VALUE*

1min_var
2max_var*

-0
11
22*
* 
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
* 
* 
®
kernel
	bias
¿	variables
Àtrainable_variables
Áregularization_losses
Â	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses*
uo
VARIABLE_VALUEquant_conv2d_6/optimizer_step>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE*

Å0*
mg
VARIABLE_VALUEquant_conv2d_6/kernel_min:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEquant_conv2d_6/kernel_max:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
y
VARIABLE_VALUE"quant_conv2d_6/post_activation_minClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"quant_conv2d_6/post_activation_maxClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
7
0
1
;2
=3
>4
@5
A6*

0
1*
* 

Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*
* 
* 

Ë	variables
Ìtrainable_variables
Íregularization_losses
Î	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses* 
z
VARIABLE_VALUE(quant_average_pooling2d_6/optimizer_step>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
xr
VARIABLE_VALUE$quant_average_pooling2d_6/output_min:layer_with_weights-4/output_min/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE$quant_average_pooling2d_6/output_max:layer_with_weights-4/output_max/.ATTRIBUTES/VARIABLE_VALUE*

Nmin_var
Omax_var*

J0
N1
O2*
* 
* 

Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 

Ö	variables
×trainable_variables
Øregularization_losses
Ù	keras_api
Ú__call__
+Û&call_and_return_all_conditional_losses* 
vp
VARIABLE_VALUEquant_flatten_4/optimizer_step>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

X0*
* 
* 

Ünon_trainable_variables
Ýlayers
Þmetrics
 ßlayer_regularization_losses
àlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*
* 
* 
®
kernel
	bias
á	variables
âtrainable_variables
ãregularization_losses
ä	keras_api
å__call__
+æ&call_and_return_all_conditional_losses*
uo
VARIABLE_VALUEquant_dense_18/optimizer_step>layer_with_weights-6/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE*

ç0*
mg
VARIABLE_VALUEquant_dense_18/kernel_min:layer_with_weights-6/kernel_min/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEquant_dense_18/kernel_max:layer_with_weights-6/kernel_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
y
VARIABLE_VALUE"quant_dense_18/post_activation_minClayer_with_weights-6/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"quant_dense_18/post_activation_maxClayer_with_weights-6/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
7
0
1
c2
e3
f4
h5
i6*

0
1*
* 

ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 
®
kernel
	bias
í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses*
uo
VARIABLE_VALUEquant_dense_19/optimizer_step>layer_with_weights-7/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE*

ó0*
mg
VARIABLE_VALUEquant_dense_19/kernel_min:layer_with_weights-7/kernel_min/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEquant_dense_19/kernel_max:layer_with_weights-7/kernel_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
y
VARIABLE_VALUE"quant_dense_19/post_activation_minClayer_with_weights-7/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"quant_dense_19/post_activation_maxClayer_with_weights-7/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
7
0
1
r2
t3
u4
w5
x6*

0
1*
* 

ônon_trainable_variables
õlayers
ömetrics
 ÷layer_regularization_losses
ølayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
®
kernel
	bias
ù	variables
útrainable_variables
ûregularization_losses
ü	keras_api
ý__call__
+þ&call_and_return_all_conditional_losses*
uo
VARIABLE_VALUEquant_dense_20/optimizer_step>layer_with_weights-8/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE*

ÿ0*
mg
VARIABLE_VALUEquant_dense_20/kernel_min:layer_with_weights-8/kernel_min/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEquant_dense_20/kernel_max:layer_with_weights-8/kernel_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
}w
VARIABLE_VALUE!quant_dense_20/pre_activation_minBlayer_with_weights-8/pre_activation_min/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!quant_dense_20/pre_activation_maxBlayer_with_weights-8/pre_activation_max/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_5/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_5/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_6/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_6/bias'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_18/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_18/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_19/kernel'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_19/bias'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_20/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_20/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE*

0
1
2
3
 4
!5
#6
$7
-8
19
210
;11
=12
>13
@14
A15
J16
N17
O18
X19
c20
e21
f22
h23
i24
r25
t26
u27
w28
x29
30
31
32
33
34*
C
0
1
2
3
4
5
6
7
	8*

0
1*
* 
* 
* 

0
1
2*
* 
* 
* 
* 

0*

0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses*
* 
* 

0
2*
'
0
 1
!2
#3
$4*

0*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
´	variables
µtrainable_variables
¶regularization_losses
¸__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses* 
* 
* 

-0
11
22*
	
,0* 
* 
* 
* 

0*

0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¿	variables
Àtrainable_variables
Áregularization_losses
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses*
* 
* 

0
2*
'
;0
=1
>2
@3
A4*

:0*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ë	variables
Ìtrainable_variables
Íregularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses* 
* 
* 

J0
N1
O2*
	
I0* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
Ö	variables
×trainable_variables
Øregularization_losses
Ú__call__
+Û&call_and_return_all_conditional_losses
'Û"call_and_return_conditional_losses* 
* 
* 

X0*
	
W0* 
* 
* 
* 

0*

0*
* 

¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
á	variables
âtrainable_variables
ãregularization_losses
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses*
* 
* 

0
§2*
'
c0
e1
f2
h3
i4*

b0*
* 
* 
* 

0*

0*
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses*
* 
* 

0
­2*
'
r0
t1
u2
w3
x4*

q0*
* 
* 
* 

0*

0*
* 

®non_trainable_variables
¯layers
°metrics
 ±layer_regularization_losses
²layer_metrics
ù	variables
útrainable_variables
ûregularization_losses
ý__call__
+þ&call_and_return_all_conditional_losses
'þ"call_and_return_conditional_losses*
* 
* 

0
³2*
,
0
1
2
3
4*

0*
* 
* 
* 
<

´total

µcount
¶	variables
·	keras_api*
M

¸total

¹count
º
_fn_kwargs
»	variables
¼	keras_api*
* 
* 
* 
* 
* 

 min_var
!max_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

=min_var
>max_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

emin_var
fmax_var*
* 
* 
* 
* 
* 

tmin_var
umax_var*
* 
* 
* 
* 
* 
 
min_var
max_var*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

´0
µ1*

¶	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

¸0
¹1*

»	variables*
y
VARIABLE_VALUESGD/conv2d_5/kernel/momentumIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUESGD/conv2d_5/bias/momentumIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUESGD/conv2d_6/kernel/momentumJvariables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUESGD/conv2d_6/bias/momentumJvariables/14/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUESGD/dense_18/kernel/momentumJvariables/24/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUESGD/dense_18/bias/momentumJvariables/25/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUESGD/dense_19/kernel/momentumJvariables/31/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUESGD/dense_19/bias/momentumJvariables/32/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUESGD/dense_20/kernel/momentumJvariables/38/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUESGD/dense_20/bias/momentumJvariables/39/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_conv2d_5_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ
û

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_5_input%quantize_layer_3/quantize_layer_3_min%quantize_layer_3/quantize_layer_3_maxconv2d_5/kernelquant_conv2d_5/kernel_minquant_conv2d_5/kernel_maxconv2d_5/bias"quant_conv2d_5/post_activation_min"quant_conv2d_5/post_activation_max$quant_average_pooling2d_5/output_min$quant_average_pooling2d_5/output_maxconv2d_6/kernelquant_conv2d_6/kernel_minquant_conv2d_6/kernel_maxconv2d_6/bias"quant_conv2d_6/post_activation_min"quant_conv2d_6/post_activation_max$quant_average_pooling2d_6/output_min$quant_average_pooling2d_6/output_maxdense_18/kernelquant_dense_18/kernel_minquant_dense_18/kernel_maxdense_18/bias"quant_dense_18/post_activation_min"quant_dense_18/post_activation_maxdense_19/kernelquant_dense_19/kernel_minquant_dense_19/kernel_maxdense_19/bias"quant_dense_19/post_activation_min"quant_dense_19/post_activation_maxdense_20/kernelquant_dense_20/kernel_minquant_dense_20/kernel_maxdense_20/bias!quant_dense_20/pre_activation_min!quant_dense_20/pre_activation_max*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_309389
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
è
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename9quantize_layer_3/quantize_layer_3_min/Read/ReadVariableOp9quantize_layer_3/quantize_layer_3_max/Read/ReadVariableOp3quantize_layer_3/optimizer_step/Read/ReadVariableOp1quant_conv2d_5/optimizer_step/Read/ReadVariableOp-quant_conv2d_5/kernel_min/Read/ReadVariableOp-quant_conv2d_5/kernel_max/Read/ReadVariableOp6quant_conv2d_5/post_activation_min/Read/ReadVariableOp6quant_conv2d_5/post_activation_max/Read/ReadVariableOp<quant_average_pooling2d_5/optimizer_step/Read/ReadVariableOp8quant_average_pooling2d_5/output_min/Read/ReadVariableOp8quant_average_pooling2d_5/output_max/Read/ReadVariableOp1quant_conv2d_6/optimizer_step/Read/ReadVariableOp-quant_conv2d_6/kernel_min/Read/ReadVariableOp-quant_conv2d_6/kernel_max/Read/ReadVariableOp6quant_conv2d_6/post_activation_min/Read/ReadVariableOp6quant_conv2d_6/post_activation_max/Read/ReadVariableOp<quant_average_pooling2d_6/optimizer_step/Read/ReadVariableOp8quant_average_pooling2d_6/output_min/Read/ReadVariableOp8quant_average_pooling2d_6/output_max/Read/ReadVariableOp2quant_flatten_4/optimizer_step/Read/ReadVariableOp1quant_dense_18/optimizer_step/Read/ReadVariableOp-quant_dense_18/kernel_min/Read/ReadVariableOp-quant_dense_18/kernel_max/Read/ReadVariableOp6quant_dense_18/post_activation_min/Read/ReadVariableOp6quant_dense_18/post_activation_max/Read/ReadVariableOp1quant_dense_19/optimizer_step/Read/ReadVariableOp-quant_dense_19/kernel_min/Read/ReadVariableOp-quant_dense_19/kernel_max/Read/ReadVariableOp6quant_dense_19/post_activation_min/Read/ReadVariableOp6quant_dense_19/post_activation_max/Read/ReadVariableOp1quant_dense_20/optimizer_step/Read/ReadVariableOp-quant_dense_20/kernel_min/Read/ReadVariableOp-quant_dense_20/kernel_max/Read/ReadVariableOp5quant_dense_20/pre_activation_min/Read/ReadVariableOp5quant_dense_20/pre_activation_max/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0SGD/conv2d_5/kernel/momentum/Read/ReadVariableOp.SGD/conv2d_5/bias/momentum/Read/ReadVariableOp0SGD/conv2d_6/kernel/momentum/Read/ReadVariableOp.SGD/conv2d_6/bias/momentum/Read/ReadVariableOp0SGD/dense_18/kernel/momentum/Read/ReadVariableOp.SGD/dense_18/bias/momentum/Read/ReadVariableOp0SGD/dense_19/kernel/momentum/Read/ReadVariableOp.SGD/dense_19/bias/momentum/Read/ReadVariableOp0SGD/dense_20/kernel/momentum/Read/ReadVariableOp.SGD/dense_20/bias/momentum/Read/ReadVariableOpConst*L
TinE
C2A	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_310319
÷
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename%quantize_layer_3/quantize_layer_3_min%quantize_layer_3/quantize_layer_3_maxquantize_layer_3/optimizer_stepquant_conv2d_5/optimizer_stepquant_conv2d_5/kernel_minquant_conv2d_5/kernel_max"quant_conv2d_5/post_activation_min"quant_conv2d_5/post_activation_max(quant_average_pooling2d_5/optimizer_step$quant_average_pooling2d_5/output_min$quant_average_pooling2d_5/output_maxquant_conv2d_6/optimizer_stepquant_conv2d_6/kernel_minquant_conv2d_6/kernel_max"quant_conv2d_6/post_activation_min"quant_conv2d_6/post_activation_max(quant_average_pooling2d_6/optimizer_step$quant_average_pooling2d_6/output_min$quant_average_pooling2d_6/output_maxquant_flatten_4/optimizer_stepquant_dense_18/optimizer_stepquant_dense_18/kernel_minquant_dense_18/kernel_max"quant_dense_18/post_activation_min"quant_dense_18/post_activation_maxquant_dense_19/optimizer_stepquant_dense_19/kernel_minquant_dense_19/kernel_max"quant_dense_19/post_activation_min"quant_dense_19/post_activation_maxquant_dense_20/optimizer_stepquant_dense_20/kernel_minquant_dense_20/kernel_max!quant_dense_20/pre_activation_min!quant_dense_20/pre_activation_maxSGD/iter	SGD/decaySGD/learning_rateSGD/momentumconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasdense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/biastotalcounttotal_1count_1SGD/conv2d_5/kernel/momentumSGD/conv2d_5/bias/momentumSGD/conv2d_6/kernel/momentumSGD/conv2d_6/bias/momentumSGD/dense_18/kernel/momentumSGD/dense_18/bias/momentumSGD/dense_19/kernel/momentumSGD/dense_19/bias/momentumSGD/dense_20/kernel/momentumSGD/dense_20/bias/momentum*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_310518Ö·

ÿ
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_309416

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1²
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô

:__inference_quant_average_pooling2d_6_layer_call_fn_309717

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_308006w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿ 
Û
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_307609

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:T
J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:
K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1´
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:T
*
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0¶
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:T
*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
SoftmaxSoftmax3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿT: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
 
_user_specified_nameinputs
è"
ÿ
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_309437

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identity¢#AllValuesQuantize/AssignMaxAllValue¢#AllValuesQuantize/AssignMinAllValue¢8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢(AllValuesQuantize/Maximum/ReadVariableOp¢(AllValuesQuantize/Minimum/ReadVariableOpp
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             l
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: r
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             n
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype0
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: b
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype0
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: b
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: Ù
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype0Ù
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype0È
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype0Ê
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype0
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô*
º
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_308135

inputs@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
p
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             v
MovingAvgQuantize/BatchMinMinAvgPool:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: r
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             x
MovingAvgQuantize/BatchMaxMaxAvgPool:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsAvgPool:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

/__inference_quant_conv2d_5_layer_call_fn_309471

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_308211w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
=

H__inference_sequential_4_layer_call_and_return_conditional_losses_308667
conv2d_5_input!
quantize_layer_3_308585: !
quantize_layer_3_308587: /
quant_conv2d_5_308590:#
quant_conv2d_5_308592:#
quant_conv2d_5_308594:#
quant_conv2d_5_308596:
quant_conv2d_5_308598: 
quant_conv2d_5_308600: *
 quant_average_pooling2d_5_308603: *
 quant_average_pooling2d_5_308605: /
quant_conv2d_6_308608:#
quant_conv2d_6_308610:#
quant_conv2d_6_308612:#
quant_conv2d_6_308614:
quant_conv2d_6_308616: 
quant_conv2d_6_308618: *
 quant_average_pooling2d_6_308621: *
 quant_average_pooling2d_6_308623: (
quant_dense_18_308627:	x
quant_dense_18_308629: 
quant_dense_18_308631: #
quant_dense_18_308633:x
quant_dense_18_308635: 
quant_dense_18_308637: '
quant_dense_19_308640:xT
quant_dense_19_308642: 
quant_dense_19_308644: #
quant_dense_19_308646:T
quant_dense_19_308648: 
quant_dense_19_308650: '
quant_dense_20_308653:T

quant_dense_20_308655: 
quant_dense_20_308657: #
quant_dense_20_308659:

quant_dense_20_308661: 
quant_dense_20_308663: 
identity¢1quant_average_pooling2d_5/StatefulPartitionedCall¢1quant_average_pooling2d_6/StatefulPartitionedCall¢&quant_conv2d_5/StatefulPartitionedCall¢&quant_conv2d_6/StatefulPartitionedCall¢&quant_dense_18/StatefulPartitionedCall¢&quant_dense_19/StatefulPartitionedCall¢&quant_dense_20/StatefulPartitionedCall¢(quantize_layer_3/StatefulPartitionedCall 
(quantize_layer_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputquantize_layer_3_308585quantize_layer_3_308587*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_307402
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall1quantize_layer_3/StatefulPartitionedCall:output:0quant_conv2d_5_308590quant_conv2d_5_308592quant_conv2d_5_308594quant_conv2d_5_308596quant_conv2d_5_308598quant_conv2d_5_308600*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_307429å
1quant_average_pooling2d_5/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0 quant_average_pooling2d_5_308603 quant_average_pooling2d_5_308605*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_307453¨
&quant_conv2d_6/StatefulPartitionedCallStatefulPartitionedCall:quant_average_pooling2d_5/StatefulPartitionedCall:output:0quant_conv2d_6_308608quant_conv2d_6_308610quant_conv2d_6_308612quant_conv2d_6_308614quant_conv2d_6_308616quant_conv2d_6_308618*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_307480å
1quant_average_pooling2d_6/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_6/StatefulPartitionedCall:output:0 quant_average_pooling2d_6_308621 quant_average_pooling2d_6_308623*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_307504û
quant_flatten_4/PartitionedCallPartitionedCall:quant_average_pooling2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_307516
&quant_dense_18/StatefulPartitionedCallStatefulPartitionedCall(quant_flatten_4/PartitionedCall:output:0quant_dense_18_308627quant_dense_18_308629quant_dense_18_308631quant_dense_18_308633quant_dense_18_308635quant_dense_18_308637*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_307539
&quant_dense_19/StatefulPartitionedCallStatefulPartitionedCall/quant_dense_18/StatefulPartitionedCall:output:0quant_dense_19_308640quant_dense_19_308642quant_dense_19_308644quant_dense_19_308646quant_dense_19_308648quant_dense_19_308650*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_307574
&quant_dense_20/StatefulPartitionedCallStatefulPartitionedCall/quant_dense_19/StatefulPartitionedCall:output:0quant_dense_20_308653quant_dense_20_308655quant_dense_20_308657quant_dense_20_308659quant_dense_20_308661quant_dense_20_308663*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_307609~
IdentityIdentity/quant_dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
NoOpNoOp2^quant_average_pooling2d_5/StatefulPartitionedCall2^quant_average_pooling2d_6/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quant_conv2d_6/StatefulPartitionedCall'^quant_dense_18/StatefulPartitionedCall'^quant_dense_19/StatefulPartitionedCall'^quant_dense_20/StatefulPartitionedCall)^quantize_layer_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1quant_average_pooling2d_5/StatefulPartitionedCall1quant_average_pooling2d_5/StatefulPartitionedCall2f
1quant_average_pooling2d_6/StatefulPartitionedCall1quant_average_pooling2d_6/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quant_conv2d_6/StatefulPartitionedCall&quant_conv2d_6/StatefulPartitionedCall2P
&quant_dense_18/StatefulPartitionedCall&quant_dense_18/StatefulPartitionedCall2P
&quant_dense_19/StatefulPartitionedCall&quant_dense_19/StatefulPartitionedCall2P
&quant_dense_20/StatefulPartitionedCall&quant_dense_20/StatefulPartitionedCall2T
(quantize_layer_3/StatefulPartitionedCall(quantize_layer_3/StatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_5_input
õ<
ø
H__inference_sequential_4_layer_call_and_return_conditional_losses_307624

inputs!
quantize_layer_3_307403: !
quantize_layer_3_307405: /
quant_conv2d_5_307430:#
quant_conv2d_5_307432:#
quant_conv2d_5_307434:#
quant_conv2d_5_307436:
quant_conv2d_5_307438: 
quant_conv2d_5_307440: *
 quant_average_pooling2d_5_307454: *
 quant_average_pooling2d_5_307456: /
quant_conv2d_6_307481:#
quant_conv2d_6_307483:#
quant_conv2d_6_307485:#
quant_conv2d_6_307487:
quant_conv2d_6_307489: 
quant_conv2d_6_307491: *
 quant_average_pooling2d_6_307505: *
 quant_average_pooling2d_6_307507: (
quant_dense_18_307540:	x
quant_dense_18_307542: 
quant_dense_18_307544: #
quant_dense_18_307546:x
quant_dense_18_307548: 
quant_dense_18_307550: '
quant_dense_19_307575:xT
quant_dense_19_307577: 
quant_dense_19_307579: #
quant_dense_19_307581:T
quant_dense_19_307583: 
quant_dense_19_307585: '
quant_dense_20_307610:T

quant_dense_20_307612: 
quant_dense_20_307614: #
quant_dense_20_307616:

quant_dense_20_307618: 
quant_dense_20_307620: 
identity¢1quant_average_pooling2d_5/StatefulPartitionedCall¢1quant_average_pooling2d_6/StatefulPartitionedCall¢&quant_conv2d_5/StatefulPartitionedCall¢&quant_conv2d_6/StatefulPartitionedCall¢&quant_dense_18/StatefulPartitionedCall¢&quant_dense_19/StatefulPartitionedCall¢&quant_dense_20/StatefulPartitionedCall¢(quantize_layer_3/StatefulPartitionedCall
(quantize_layer_3/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_3_307403quantize_layer_3_307405*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_307402
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall1quantize_layer_3/StatefulPartitionedCall:output:0quant_conv2d_5_307430quant_conv2d_5_307432quant_conv2d_5_307434quant_conv2d_5_307436quant_conv2d_5_307438quant_conv2d_5_307440*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_307429å
1quant_average_pooling2d_5/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0 quant_average_pooling2d_5_307454 quant_average_pooling2d_5_307456*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_307453¨
&quant_conv2d_6/StatefulPartitionedCallStatefulPartitionedCall:quant_average_pooling2d_5/StatefulPartitionedCall:output:0quant_conv2d_6_307481quant_conv2d_6_307483quant_conv2d_6_307485quant_conv2d_6_307487quant_conv2d_6_307489quant_conv2d_6_307491*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_307480å
1quant_average_pooling2d_6/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_6/StatefulPartitionedCall:output:0 quant_average_pooling2d_6_307505 quant_average_pooling2d_6_307507*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_307504û
quant_flatten_4/PartitionedCallPartitionedCall:quant_average_pooling2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_307516
&quant_dense_18/StatefulPartitionedCallStatefulPartitionedCall(quant_flatten_4/PartitionedCall:output:0quant_dense_18_307540quant_dense_18_307542quant_dense_18_307544quant_dense_18_307546quant_dense_18_307548quant_dense_18_307550*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_307539
&quant_dense_19/StatefulPartitionedCallStatefulPartitionedCall/quant_dense_18/StatefulPartitionedCall:output:0quant_dense_19_307575quant_dense_19_307577quant_dense_19_307579quant_dense_19_307581quant_dense_19_307583quant_dense_19_307585*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_307574
&quant_dense_20/StatefulPartitionedCallStatefulPartitionedCall/quant_dense_19/StatefulPartitionedCall:output:0quant_dense_20_307610quant_dense_20_307612quant_dense_20_307614quant_dense_20_307616quant_dense_20_307618quant_dense_20_307620*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_307609~
IdentityIdentity/quant_dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
NoOpNoOp2^quant_average_pooling2d_5/StatefulPartitionedCall2^quant_average_pooling2d_6/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quant_conv2d_6/StatefulPartitionedCall'^quant_dense_18/StatefulPartitionedCall'^quant_dense_19/StatefulPartitionedCall'^quant_dense_20/StatefulPartitionedCall)^quantize_layer_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1quant_average_pooling2d_5/StatefulPartitionedCall1quant_average_pooling2d_5/StatefulPartitionedCall2f
1quant_average_pooling2d_6/StatefulPartitionedCall1quant_average_pooling2d_6/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quant_conv2d_6/StatefulPartitionedCall&quant_conv2d_6/StatefulPartitionedCall2P
&quant_dense_18/StatefulPartitionedCall&quant_dense_18/StatefulPartitionedCall2P
&quant_dense_19/StatefulPartitionedCall&quant_dense_19/StatefulPartitionedCall2P
&quant_dense_20/StatefulPartitionedCall&quant_dense_20/StatefulPartitionedCall2T
(quantize_layer_3/StatefulPartitionedCall(quantize_layer_3/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°

U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_307504

inputsK
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsAvgPool:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
ð
/__inference_quant_dense_20_layer_call_fn_310017

inputs
unknown:T

	unknown_0: 
	unknown_1: 
	unknown_2:

	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_307768o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿT: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
 
_user_specified_nameinputs
ðQ
	
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_308211

inputsI
/lastvaluequant_batchmin_readvariableop_resource:3
%lastvaluequant_assignminlast_resource:3
%lastvaluequant_assignmaxlast_resource:-
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0~
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0~
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0·
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0Â
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype0Â
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype0ð
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(·
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             x
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: r
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             z
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À 
Ü
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_307539

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	xJ
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:xK
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1µ
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	x*
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0·
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	x*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
NoOpNoOp^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ

1__inference_quantize_layer_3_layer_call_fn_309398

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_307402w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

:__inference_quant_average_pooling2d_6_layer_call_fn_309708

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_307504w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô

:__inference_quant_average_pooling2d_5_layer_call_fn_309559

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_308135w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ#
§
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_309650

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:-
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ð
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:*
dtype0È
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype0È
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype0ð
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(·
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
NoOpNoOp^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ#
§
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_307429

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:-
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ð
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:*
dtype0È
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype0È
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype0ð
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(·
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
NoOpNoOp^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
ð
/__inference_quant_dense_19_layer_call_fn_309896

inputs
unknown:xT
	unknown_0: 
	unknown_1: 
	unknown_2:T
	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_307574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿx: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
» 
Û
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_309934

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:xTJ
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:TK
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1´
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:xT*
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0¶
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:xT*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
NoOpNoOp^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿx: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
£
Ö
-__inference_sequential_4_layer_call_fn_308582
conv2d_5_input
unknown: 
	unknown_0: #
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	x

unknown_18: 

unknown_19: 

unknown_20:x

unknown_21: 

unknown_22: 

unknown_23:xT

unknown_24: 

unknown_25: 

unknown_26:T

unknown_27: 

unknown_28: 

unknown_29:T


unknown_30: 

unknown_31: 

unknown_32:


unknown_33: 

unknown_34: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

"*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_308430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_5_input
N
Ø
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_310087

inputsA
/lastvaluequant_batchmin_readvariableop_resource:T
/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:
@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1e
LastValueQuant/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:T
*
dtype0
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/Const:output:0*
T0*
_output_shapes
: g
LastValueQuant/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:T
*
dtype0
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/Const_1:output:0*
T0*
_output_shapes
: ]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿{
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: |
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0¥
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:T
*
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype0¶
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:T
*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       v
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: j
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       x
MovingAvgQuantize/BatchMaxMaxBiasAdd:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
SoftmaxSoftmax3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ý
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿT: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
 
_user_specified_nameinputs
Õ#
§
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_309492

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:-
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ð
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:*
dtype0È
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype0È
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype0ð
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(·
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
NoOpNoOp^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

/__inference_quant_conv2d_6_layer_call_fn_309629

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_308082w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°

U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_309727

inputsK
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsAvgPool:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è"
ÿ
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_308259

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identity¢#AllValuesQuantize/AssignMaxAllValue¢#AllValuesQuantize/AssignMinAllValue¢8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢(AllValuesQuantize/Maximum/ReadVariableOp¢(AllValuesQuantize/Minimum/ReadVariableOpp
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             l
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: r
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             n
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype0
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: b
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype0
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: b
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: Ù
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype0Ù
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype0È
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype0Ê
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype0
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
N
Ø
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_307768

inputsA
/lastvaluequant_batchmin_readvariableop_resource:T
/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:
@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1e
LastValueQuant/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:T
*
dtype0
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/Const:output:0*
T0*
_output_shapes
: g
LastValueQuant/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:T
*
dtype0
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/Const_1:output:0*
T0*
_output_shapes
: ]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿{
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: |
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0¥
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:T
*
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype0¶
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:T
*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       v
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: j
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       x
MovingAvgQuantize/BatchMaxMaxBiasAdd:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
SoftmaxSoftmax3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ý
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿT: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
 
_user_specified_nameinputs
ê
/
H__inference_sequential_4_layer_call_and_return_conditional_losses_309018

inputs\
Rquantize_layer_3_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: ^
Tquantize_layer_3_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: q
Wquant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:g
Yquant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:g
Yquant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:<
.quant_conv2d_5_biasadd_readvariableop_resource:Z
Pquant_conv2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: \
Rquant_conv2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: e
[quant_average_pooling2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: g
]quant_average_pooling2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: q
Wquant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:g
Yquant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:g
Yquant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:<
.quant_conv2d_6_biasadd_readvariableop_resource:Z
Pquant_conv2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: \
Rquant_conv2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: e
[quant_average_pooling2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: g
]quant_average_pooling2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: `
Mquant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	xY
Oquant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: Y
Oquant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: <
.quant_dense_18_biasadd_readvariableop_resource:xZ
Pquant_dense_18_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: \
Rquant_dense_18_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: _
Mquant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:xTY
Oquant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: Y
Oquant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: <
.quant_dense_19_biasadd_readvariableop_resource:TZ
Pquant_dense_19_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: \
Rquant_dense_19_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: _
Mquant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:T
Y
Oquant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: Y
Oquant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: <
.quant_dense_20_biasadd_readvariableop_resource:
Z
Pquant_dense_20_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: \
Rquant_dense_20_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢Rquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Tquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Rquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Tquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_conv2d_5/BiasAdd/ReadVariableOp¢Nquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢Gquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_conv2d_6/BiasAdd/ReadVariableOp¢Nquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢Gquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_dense_18/BiasAdd/ReadVariableOp¢Dquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢Gquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_dense_19/BiasAdd/ReadVariableOp¢Dquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢Gquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_dense_20/BiasAdd/ReadVariableOp¢Dquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢Gquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Iquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Kquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ô
Iquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpRquantize_layer_3_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0Ø
Kquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpTquantize_layer_3_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0¶
:quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputsQquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Squantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
Nquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpWquant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:*
dtype0æ
Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpYquant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype0æ
Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpYquant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype0¬
?quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelVquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0Xquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0Xquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(
quant_conv2d_5/Conv2DConv2DDquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0Iquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

%quant_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp.quant_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ª
quant_conv2d_5/BiasAddBiasAddquant_conv2d_5/Conv2D:output:0-quant_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
quant_conv2d_5/ReluReluquant_conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
Gquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpPquant_conv2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0Ô
Iquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpRquant_conv2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0Ë
8quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars!quant_conv2d_5/Relu:activations:0Oquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
!quant_average_pooling2d_5/AvgPoolAvgPoolBquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
æ
Rquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp[quant_average_pooling2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0ê
Tquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp]quant_average_pooling2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0õ
Cquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars*quant_average_pooling2d_5/AvgPool:output:0Zquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0\quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
Nquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpWquant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:*
dtype0æ
Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpYquant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype0æ
Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpYquant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype0¬
?quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelVquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0Xquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0Xquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(
quant_conv2d_6/Conv2DConv2DMquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Iquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

%quant_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp.quant_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ª
quant_conv2d_6/BiasAddBiasAddquant_conv2d_6/Conv2D:output:0-quant_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
quant_conv2d_6/ReluReluquant_conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
Gquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpPquant_conv2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0Ô
Iquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpRquant_conv2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0Ë
8quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars!quant_conv2d_6/Relu:activations:0Oquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
!quant_average_pooling2d_6/AvgPoolAvgPoolBquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
æ
Rquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp[quant_average_pooling2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0ê
Tquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp]quant_average_pooling2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0õ
Cquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars*quant_average_pooling2d_6/AvgPool:output:0Zquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0\quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
quant_flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ä
quant_flatten_4/ReshapeReshapeMquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0quant_flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
Dquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpMquant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	x*
dtype0Î
Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpOquant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0Î
Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpOquant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0ó
5quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsLquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Nquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Nquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	x*
narrow_range(´
quant_dense_18/MatMulMatMul quant_flatten_4/Reshape:output:0?quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
%quant_dense_18/BiasAdd/ReadVariableOpReadVariableOp.quant_dense_18_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0£
quant_dense_18/BiasAddBiasAddquant_dense_18/MatMul:product:0-quant_dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxn
quant_dense_18/ReluReluquant_dense_18/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÐ
Gquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpPquant_dense_18_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0Ô
Iquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpRquant_dense_18_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0Ã
8quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars!quant_dense_18/Relu:activations:0Oquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÒ
Dquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpMquant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:xT*
dtype0Î
Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpOquant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0Î
Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpOquant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0ò
5quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsLquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Nquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Nquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:xT*
narrow_range(Ö
quant_dense_19/MatMulMatMulBquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0?quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
%quant_dense_19/BiasAdd/ReadVariableOpReadVariableOp.quant_dense_19_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0£
quant_dense_19/BiasAddBiasAddquant_dense_19/MatMul:product:0-quant_dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTn
quant_dense_19/ReluReluquant_dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTÐ
Gquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpPquant_dense_19_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0Ô
Iquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpRquant_dense_19_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0Ã
8quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars!quant_dense_19/Relu:activations:0Oquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTÒ
Dquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpMquant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:T
*
dtype0Î
Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpOquant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0Î
Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpOquant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0ò
5quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsLquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Nquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Nquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:T
*
narrow_range(Ö
quant_dense_20/MatMulMatMulBquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0?quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%quant_dense_20/BiasAdd/ReadVariableOpReadVariableOp.quant_dense_20_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0£
quant_dense_20/BiasAddBiasAddquant_dense_20/MatMul:product:0-quant_dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð
Gquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpPquant_dense_20_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0Ô
Iquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpRquant_dense_20_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0Á
8quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsquant_dense_20/BiasAdd:output:0Oquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

quant_dense_20/SoftmaxSoftmaxBquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
o
IdentityIdentity quant_dense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ç
NoOpNoOpS^quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpU^quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1S^quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpU^quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_conv2d_5/BiasAdd/ReadVariableOpO^quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpQ^quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1Q^quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2H^quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_conv2d_6/BiasAdd/ReadVariableOpO^quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpQ^quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1Q^quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2H^quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_dense_18/BiasAdd/ReadVariableOpE^quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpG^quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1G^quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2H^quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_dense_19/BiasAdd/ReadVariableOpE^quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpG^quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1G^quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2H^quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_dense_20/BiasAdd/ReadVariableOpE^quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpG^quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1G^quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2H^quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1J^quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpL^quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2¨
Rquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpRquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2¬
Tquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Tquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12¨
Rquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpRquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2¬
Tquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Tquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_conv2d_5/BiasAdd/ReadVariableOp%quant_conv2d_5/BiasAdd/ReadVariableOp2 
Nquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpNquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2¤
Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12¤
Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22
Gquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_conv2d_6/BiasAdd/ReadVariableOp%quant_conv2d_6/BiasAdd/ReadVariableOp2 
Nquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpNquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2¤
Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12¤
Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22
Gquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_dense_18/BiasAdd/ReadVariableOp%quant_dense_18/BiasAdd/ReadVariableOp2
Dquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpDquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2
Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12
Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22
Gquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_dense_19/BiasAdd/ReadVariableOp%quant_dense_19/BiasAdd/ReadVariableOp2
Dquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpDquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2
Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12
Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22
Gquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_dense_20/BiasAdd/ReadVariableOp%quant_dense_20/BiasAdd/ReadVariableOp2
Dquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpDquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2
Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12
Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22
Gquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12
Iquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpIquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Kquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Kquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°

U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_309569

inputsK
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsAvgPool:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
6
!__inference__wrapped_model_307362
conv2d_5_inputi
_sequential_4_quantize_layer_3_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: k
asequential_4_quantize_layer_3_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: ~
dsequential_4_quant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:t
fsequential_4_quant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:t
fsequential_4_quant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:I
;sequential_4_quant_conv2d_5_biasadd_readvariableop_resource:g
]sequential_4_quant_conv2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: i
_sequential_4_quant_conv2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: r
hsequential_4_quant_average_pooling2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: t
jsequential_4_quant_average_pooling2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: ~
dsequential_4_quant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:t
fsequential_4_quant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:t
fsequential_4_quant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:I
;sequential_4_quant_conv2d_6_biasadd_readvariableop_resource:g
]sequential_4_quant_conv2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: i
_sequential_4_quant_conv2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: r
hsequential_4_quant_average_pooling2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: t
jsequential_4_quant_average_pooling2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: m
Zsequential_4_quant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	xf
\sequential_4_quant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: f
\sequential_4_quant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: I
;sequential_4_quant_dense_18_biasadd_readvariableop_resource:xg
]sequential_4_quant_dense_18_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: i
_sequential_4_quant_dense_18_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: l
Zsequential_4_quant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:xTf
\sequential_4_quant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: f
\sequential_4_quant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: I
;sequential_4_quant_dense_19_biasadd_readvariableop_resource:Tg
]sequential_4_quant_dense_19_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: i
_sequential_4_quant_dense_19_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: l
Zsequential_4_quant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:T
f
\sequential_4_quant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: f
\sequential_4_quant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: I
;sequential_4_quant_dense_20_biasadd_readvariableop_resource:
g
]sequential_4_quant_dense_20_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: i
_sequential_4_quant_dense_20_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢_sequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢asequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢_sequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢asequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢2sequential_4/quant_conv2d_5/BiasAdd/ReadVariableOp¢[sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢]sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢]sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢Tsequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Vsequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢2sequential_4/quant_conv2d_6/BiasAdd/ReadVariableOp¢[sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢]sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢]sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢Tsequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Vsequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢2sequential_4/quant_dense_18/BiasAdd/ReadVariableOp¢Qsequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢Ssequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Ssequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢Tsequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Vsequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢2sequential_4/quant_dense_19/BiasAdd/ReadVariableOp¢Qsequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢Ssequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Ssequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢Tsequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Vsequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢2sequential_4/quant_dense_20/BiasAdd/ReadVariableOp¢Qsequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢Ssequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Ssequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢Tsequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Vsequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Vsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Xsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1î
Vsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp_sequential_4_quantize_layer_3_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0ò
Xsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpasequential_4_quantize_layer_3_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0å
Gsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsconv2d_5_input^sequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0`sequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpdsequential_4_quant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:*
dtype0
]sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpfsequential_4_quant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype0
]sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpfsequential_4_quant_conv2d_5_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype0à
Lsequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelcsequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0esequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0esequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(º
"sequential_4/quant_conv2d_5/Conv2DConv2DQsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0Vsequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
ª
2sequential_4/quant_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp;sequential_4_quant_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ñ
#sequential_4/quant_conv2d_5/BiasAddBiasAdd+sequential_4/quant_conv2d_5/Conv2D:output:0:sequential_4/quant_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 sequential_4/quant_conv2d_5/ReluRelu,sequential_4/quant_conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
Tsequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp]sequential_4_quant_conv2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0î
Vsequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp_sequential_4_quant_conv2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0ÿ
Esequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars.sequential_4/quant_conv2d_5/Relu:activations:0\sequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0^sequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.sequential_4/quant_average_pooling2d_5/AvgPoolAvgPoolOsequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

_sequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOphsequential_4_quant_average_pooling2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0
asequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpjsequential_4_quant_average_pooling2d_5_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0©
Psequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars7sequential_4/quant_average_pooling2d_5/AvgPool:output:0gsequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0isequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpdsequential_4_quant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:*
dtype0
]sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpfsequential_4_quant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype0
]sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpfsequential_4_quant_conv2d_6_lastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype0à
Lsequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelcsequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0esequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0esequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(Ã
"sequential_4/quant_conv2d_6/Conv2DConv2DZsequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Vsequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
ª
2sequential_4/quant_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp;sequential_4_quant_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ñ
#sequential_4/quant_conv2d_6/BiasAddBiasAdd+sequential_4/quant_conv2d_6/Conv2D:output:0:sequential_4/quant_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 sequential_4/quant_conv2d_6/ReluRelu,sequential_4/quant_conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
Tsequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp]sequential_4_quant_conv2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0î
Vsequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp_sequential_4_quant_conv2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0ÿ
Esequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars.sequential_4/quant_conv2d_6/Relu:activations:0\sequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0^sequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.sequential_4/quant_average_pooling2d_6/AvgPoolAvgPoolOsequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

_sequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOphsequential_4_quant_average_pooling2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0
asequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpjsequential_4_quant_average_pooling2d_6_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0©
Psequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars7sequential_4/quant_average_pooling2d_6/AvgPool:output:0gsequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0isequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
"sequential_4/quant_flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ë
$sequential_4/quant_flatten_4/ReshapeReshapeZsequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0+sequential_4/quant_flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿí
Qsequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpZsequential_4_quant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	x*
dtype0è
Ssequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp\sequential_4_quant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0è
Ssequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp\sequential_4_quant_dense_18_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0§
Bsequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsYsequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0[sequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0[sequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	x*
narrow_range(Û
"sequential_4/quant_dense_18/MatMulMatMul-sequential_4/quant_flatten_4/Reshape:output:0Lsequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxª
2sequential_4/quant_dense_18/BiasAdd/ReadVariableOpReadVariableOp;sequential_4_quant_dense_18_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0Ê
#sequential_4/quant_dense_18/BiasAddBiasAdd,sequential_4/quant_dense_18/MatMul:product:0:sequential_4/quant_dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 sequential_4/quant_dense_18/ReluRelu,sequential_4/quant_dense_18/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxê
Tsequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp]sequential_4_quant_dense_18_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0î
Vsequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp_sequential_4_quant_dense_18_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0÷
Esequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars.sequential_4/quant_dense_18/Relu:activations:0\sequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0^sequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxì
Qsequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpZsequential_4_quant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:xT*
dtype0è
Ssequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp\sequential_4_quant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0è
Ssequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp\sequential_4_quant_dense_19_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0¦
Bsequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsYsequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0[sequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0[sequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:xT*
narrow_range(ý
"sequential_4/quant_dense_19/MatMulMatMulOsequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Lsequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTª
2sequential_4/quant_dense_19/BiasAdd/ReadVariableOpReadVariableOp;sequential_4_quant_dense_19_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0Ê
#sequential_4/quant_dense_19/BiasAddBiasAdd,sequential_4/quant_dense_19/MatMul:product:0:sequential_4/quant_dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
 sequential_4/quant_dense_19/ReluRelu,sequential_4/quant_dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTê
Tsequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp]sequential_4_quant_dense_19_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0î
Vsequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp_sequential_4_quant_dense_19_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0÷
Esequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars.sequential_4/quant_dense_19/Relu:activations:0\sequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0^sequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTì
Qsequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpZsequential_4_quant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:T
*
dtype0è
Ssequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp\sequential_4_quant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0è
Ssequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp\sequential_4_quant_dense_20_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0¦
Bsequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsYsequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0[sequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0[sequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:T
*
narrow_range(ý
"sequential_4/quant_dense_20/MatMulMatMulOsequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Lsequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
2sequential_4/quant_dense_20/BiasAdd/ReadVariableOpReadVariableOp;sequential_4_quant_dense_20_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Ê
#sequential_4/quant_dense_20/BiasAddBiasAdd,sequential_4/quant_dense_20/MatMul:product:0:sequential_4/quant_dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ê
Tsequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp]sequential_4_quant_dense_20_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0î
Vsequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp_sequential_4_quant_dense_20_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0õ
Esequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars,sequential_4/quant_dense_20/BiasAdd:output:0\sequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0^sequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
±
#sequential_4/quant_dense_20/SoftmaxSoftmaxOsequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
IdentityIdentity-sequential_4/quant_dense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
»
NoOpNoOp`^sequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpb^sequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1`^sequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpb^sequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_13^sequential_4/quant_conv2d_5/BiasAdd/ReadVariableOp\^sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp^^sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1^^sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2U^sequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpW^sequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_13^sequential_4/quant_conv2d_6/BiasAdd/ReadVariableOp\^sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp^^sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1^^sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2U^sequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpW^sequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_13^sequential_4/quant_dense_18/BiasAdd/ReadVariableOpR^sequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpT^sequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1T^sequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2U^sequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpW^sequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_13^sequential_4/quant_dense_19/BiasAdd/ReadVariableOpR^sequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpT^sequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1T^sequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2U^sequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpW^sequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_13^sequential_4/quant_dense_20/BiasAdd/ReadVariableOpR^sequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpT^sequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1T^sequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2U^sequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpW^sequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1W^sequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpY^sequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Â
_sequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_sequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2Æ
asequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1asequential_4/quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12Â
_sequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_sequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2Æ
asequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1asequential_4/quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12h
2sequential_4/quant_conv2d_5/BiasAdd/ReadVariableOp2sequential_4/quant_conv2d_5/BiasAdd/ReadVariableOp2º
[sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp[sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2¾
]sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1]sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12¾
]sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2]sequential_4/quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22¬
Tsequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpTsequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2°
Vsequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Vsequential_4/quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12h
2sequential_4/quant_conv2d_6/BiasAdd/ReadVariableOp2sequential_4/quant_conv2d_6/BiasAdd/ReadVariableOp2º
[sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp[sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2¾
]sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1]sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12¾
]sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2]sequential_4/quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22¬
Tsequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpTsequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2°
Vsequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Vsequential_4/quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12h
2sequential_4/quant_dense_18/BiasAdd/ReadVariableOp2sequential_4/quant_dense_18/BiasAdd/ReadVariableOp2¦
Qsequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpQsequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2ª
Ssequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Ssequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12ª
Ssequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Ssequential_4/quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22¬
Tsequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpTsequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2°
Vsequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Vsequential_4/quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12h
2sequential_4/quant_dense_19/BiasAdd/ReadVariableOp2sequential_4/quant_dense_19/BiasAdd/ReadVariableOp2¦
Qsequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpQsequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2ª
Ssequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Ssequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12ª
Ssequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Ssequential_4/quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22¬
Tsequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpTsequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2°
Vsequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Vsequential_4/quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12h
2sequential_4/quant_dense_20/BiasAdd/ReadVariableOp2sequential_4/quant_dense_20/BiasAdd/ReadVariableOp2¦
Qsequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpQsequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2ª
Ssequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Ssequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12ª
Ssequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Ssequential_4/quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22¬
Tsequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpTsequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2°
Vsequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Vsequential_4/quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12°
Vsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpVsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2´
Xsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Xsequential_4/quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_5_input
N
Ù
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_307936

inputsB
/lastvaluequant_batchmin_readvariableop_resource:	x/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:x@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1e
LastValueQuant/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes
:	x*
dtype0
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/Const:output:0*
T0*
_output_shapes
: g
LastValueQuant/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes
:	x*
dtype0
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/Const_1:output:0*
T0*
_output_shapes
: ]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿{
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: |
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0¦
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes
:	x*
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype0·
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	x*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxh
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       x
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: j
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       z
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÝ
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

/__inference_quant_conv2d_6_layer_call_fn_309612

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_307480w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
g
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_309775

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
L
0__inference_quant_flatten_4_layer_call_fn_309763

inputs
identity·
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_307965a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
É(
"__inference__traced_restore_310518
file_prefix@
6assignvariableop_quantize_layer_3_quantize_layer_3_min: B
8assignvariableop_1_quantize_layer_3_quantize_layer_3_max: <
2assignvariableop_2_quantize_layer_3_optimizer_step: :
0assignvariableop_3_quant_conv2d_5_optimizer_step: :
,assignvariableop_4_quant_conv2d_5_kernel_min::
,assignvariableop_5_quant_conv2d_5_kernel_max:?
5assignvariableop_6_quant_conv2d_5_post_activation_min: ?
5assignvariableop_7_quant_conv2d_5_post_activation_max: E
;assignvariableop_8_quant_average_pooling2d_5_optimizer_step: A
7assignvariableop_9_quant_average_pooling2d_5_output_min: B
8assignvariableop_10_quant_average_pooling2d_5_output_max: ;
1assignvariableop_11_quant_conv2d_6_optimizer_step: ;
-assignvariableop_12_quant_conv2d_6_kernel_min:;
-assignvariableop_13_quant_conv2d_6_kernel_max:@
6assignvariableop_14_quant_conv2d_6_post_activation_min: @
6assignvariableop_15_quant_conv2d_6_post_activation_max: F
<assignvariableop_16_quant_average_pooling2d_6_optimizer_step: B
8assignvariableop_17_quant_average_pooling2d_6_output_min: B
8assignvariableop_18_quant_average_pooling2d_6_output_max: <
2assignvariableop_19_quant_flatten_4_optimizer_step: ;
1assignvariableop_20_quant_dense_18_optimizer_step: 7
-assignvariableop_21_quant_dense_18_kernel_min: 7
-assignvariableop_22_quant_dense_18_kernel_max: @
6assignvariableop_23_quant_dense_18_post_activation_min: @
6assignvariableop_24_quant_dense_18_post_activation_max: ;
1assignvariableop_25_quant_dense_19_optimizer_step: 7
-assignvariableop_26_quant_dense_19_kernel_min: 7
-assignvariableop_27_quant_dense_19_kernel_max: @
6assignvariableop_28_quant_dense_19_post_activation_min: @
6assignvariableop_29_quant_dense_19_post_activation_max: ;
1assignvariableop_30_quant_dense_20_optimizer_step: 7
-assignvariableop_31_quant_dense_20_kernel_min: 7
-assignvariableop_32_quant_dense_20_kernel_max: ?
5assignvariableop_33_quant_dense_20_pre_activation_min: ?
5assignvariableop_34_quant_dense_20_pre_activation_max: &
assignvariableop_35_sgd_iter:	 '
assignvariableop_36_sgd_decay: /
%assignvariableop_37_sgd_learning_rate: *
 assignvariableop_38_sgd_momentum: =
#assignvariableop_39_conv2d_5_kernel:/
!assignvariableop_40_conv2d_5_bias:=
#assignvariableop_41_conv2d_6_kernel:/
!assignvariableop_42_conv2d_6_bias:6
#assignvariableop_43_dense_18_kernel:	x/
!assignvariableop_44_dense_18_bias:x5
#assignvariableop_45_dense_19_kernel:xT/
!assignvariableop_46_dense_19_bias:T5
#assignvariableop_47_dense_20_kernel:T
/
!assignvariableop_48_dense_20_bias:
#
assignvariableop_49_total: #
assignvariableop_50_count: %
assignvariableop_51_total_1: %
assignvariableop_52_count_1: J
0assignvariableop_53_sgd_conv2d_5_kernel_momentum:<
.assignvariableop_54_sgd_conv2d_5_bias_momentum:J
0assignvariableop_55_sgd_conv2d_6_kernel_momentum:<
.assignvariableop_56_sgd_conv2d_6_bias_momentum:C
0assignvariableop_57_sgd_dense_18_kernel_momentum:	x<
.assignvariableop_58_sgd_dense_18_bias_momentum:xB
0assignvariableop_59_sgd_dense_19_kernel_momentum:xT<
.assignvariableop_60_sgd_dense_19_bias_momentum:TB
0assignvariableop_61_sgd_dense_20_kernel_momentum:T
<
.assignvariableop_62_sgd_dense_20_bias_momentum:

identity_64¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ñ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*
valueB@BDlayer_with_weights-0/quantize_layer_3_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-0/quantize_layer_3_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/output_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/output_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/output_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/output_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-6/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-6/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-6/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-7/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-7/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-7/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-8/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-8/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-8/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-8/pre_activation_min/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-8/pre_activation_max/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/14/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/24/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/25/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/31/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/32/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/38/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/39/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHó
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*
valueB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B á
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*N
dtypesD
B2@	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOpAssignVariableOp6assignvariableop_quantize_layer_3_quantize_layer_3_minIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_1AssignVariableOp8assignvariableop_1_quantize_layer_3_quantize_layer_3_maxIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_2AssignVariableOp2assignvariableop_2_quantize_layer_3_optimizer_stepIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp0assignvariableop_3_quant_conv2d_5_optimizer_stepIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp,assignvariableop_4_quant_conv2d_5_kernel_minIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp,assignvariableop_5_quant_conv2d_5_kernel_maxIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_6AssignVariableOp5assignvariableop_6_quant_conv2d_5_post_activation_minIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_7AssignVariableOp5assignvariableop_7_quant_conv2d_5_post_activation_maxIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_8AssignVariableOp;assignvariableop_8_quant_average_pooling2d_5_optimizer_stepIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_9AssignVariableOp7assignvariableop_9_quant_average_pooling2d_5_output_minIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_10AssignVariableOp8assignvariableop_10_quant_average_pooling2d_5_output_maxIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_11AssignVariableOp1assignvariableop_11_quant_conv2d_6_optimizer_stepIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_quant_conv2d_6_kernel_minIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp-assignvariableop_13_quant_conv2d_6_kernel_maxIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_14AssignVariableOp6assignvariableop_14_quant_conv2d_6_post_activation_minIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_15AssignVariableOp6assignvariableop_15_quant_conv2d_6_post_activation_maxIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_16AssignVariableOp<assignvariableop_16_quant_average_pooling2d_6_optimizer_stepIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_17AssignVariableOp8assignvariableop_17_quant_average_pooling2d_6_output_minIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_18AssignVariableOp8assignvariableop_18_quant_average_pooling2d_6_output_maxIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_19AssignVariableOp2assignvariableop_19_quant_flatten_4_optimizer_stepIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_20AssignVariableOp1assignvariableop_20_quant_dense_18_optimizer_stepIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp-assignvariableop_21_quant_dense_18_kernel_minIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp-assignvariableop_22_quant_dense_18_kernel_maxIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_quant_dense_18_post_activation_minIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_24AssignVariableOp6assignvariableop_24_quant_dense_18_post_activation_maxIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_25AssignVariableOp1assignvariableop_25_quant_dense_19_optimizer_stepIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp-assignvariableop_26_quant_dense_19_kernel_minIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp-assignvariableop_27_quant_dense_19_kernel_maxIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_quant_dense_19_post_activation_minIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_29AssignVariableOp6assignvariableop_29_quant_dense_19_post_activation_maxIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_30AssignVariableOp1assignvariableop_30_quant_dense_20_optimizer_stepIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp-assignvariableop_31_quant_dense_20_kernel_minIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp-assignvariableop_32_quant_dense_20_kernel_maxIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_33AssignVariableOp5assignvariableop_33_quant_dense_20_pre_activation_minIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_34AssignVariableOp5assignvariableop_34_quant_dense_20_pre_activation_maxIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_35AssignVariableOpassignvariableop_35_sgd_iterIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOpassignvariableop_36_sgd_decayIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp%assignvariableop_37_sgd_learning_rateIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp assignvariableop_38_sgd_momentumIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp#assignvariableop_39_conv2d_5_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp!assignvariableop_40_conv2d_5_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp#assignvariableop_41_conv2d_6_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp!assignvariableop_42_conv2d_6_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp#assignvariableop_43_dense_18_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp!assignvariableop_44_dense_18_biasIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp#assignvariableop_45_dense_19_kernelIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp!assignvariableop_46_dense_19_biasIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp#assignvariableop_47_dense_20_kernelIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp!assignvariableop_48_dense_20_biasIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOpassignvariableop_49_totalIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOpassignvariableop_50_countIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOpassignvariableop_51_total_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOpassignvariableop_52_count_1Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_53AssignVariableOp0assignvariableop_53_sgd_conv2d_5_kernel_momentumIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp.assignvariableop_54_sgd_conv2d_5_bias_momentumIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_55AssignVariableOp0assignvariableop_55_sgd_conv2d_6_kernel_momentumIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp.assignvariableop_56_sgd_conv2d_6_bias_momentumIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_57AssignVariableOp0assignvariableop_57_sgd_dense_18_kernel_momentumIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp.assignvariableop_58_sgd_dense_18_bias_momentumIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_59AssignVariableOp0assignvariableop_59_sgd_dense_19_kernel_momentumIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp.assignvariableop_60_sgd_dense_19_bias_momentumIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_61AssignVariableOp0assignvariableop_61_sgd_dense_20_kernel_momentumIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp.assignvariableop_62_sgd_dense_20_bias_momentumIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¹
Identity_63Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_64IdentityIdentity_63:output:0^NoOp_1*
T0*
_output_shapes
: ¦
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_64Identity_64:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

Í
$__inference_signature_wrapper_309389
conv2d_5_input
unknown: 
	unknown_0: #
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	x

unknown_18: 

unknown_19: 

unknown_20:x

unknown_21: 

unknown_22: 

unknown_23:xT

unknown_24: 

unknown_25: 

unknown_26:T

unknown_27: 

unknown_28: 

unknown_29:T


unknown_30: 

unknown_31: 

unknown_32:


unknown_33: 

unknown_34: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_307362o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_5_input
°

U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_307453

inputsK
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsAvgPool:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿ 
Û
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_310038

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:T
J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:
K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1´
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:T
*
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0¶
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:T
*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
SoftmaxSoftmax3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿT: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
 
_user_specified_nameinputs
â

1__inference_quantize_layer_3_layer_call_fn_309407

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_308259w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í<

H__inference_sequential_4_layer_call_and_return_conditional_losses_308752
conv2d_5_input!
quantize_layer_3_308670: !
quantize_layer_3_308672: /
quant_conv2d_5_308675:#
quant_conv2d_5_308677:#
quant_conv2d_5_308679:#
quant_conv2d_5_308681:
quant_conv2d_5_308683: 
quant_conv2d_5_308685: *
 quant_average_pooling2d_5_308688: *
 quant_average_pooling2d_5_308690: /
quant_conv2d_6_308693:#
quant_conv2d_6_308695:#
quant_conv2d_6_308697:#
quant_conv2d_6_308699:
quant_conv2d_6_308701: 
quant_conv2d_6_308703: *
 quant_average_pooling2d_6_308706: *
 quant_average_pooling2d_6_308708: (
quant_dense_18_308712:	x
quant_dense_18_308714: 
quant_dense_18_308716: #
quant_dense_18_308718:x
quant_dense_18_308720: 
quant_dense_18_308722: '
quant_dense_19_308725:xT
quant_dense_19_308727: 
quant_dense_19_308729: #
quant_dense_19_308731:T
quant_dense_19_308733: 
quant_dense_19_308735: '
quant_dense_20_308738:T

quant_dense_20_308740: 
quant_dense_20_308742: #
quant_dense_20_308744:

quant_dense_20_308746: 
quant_dense_20_308748: 
identity¢1quant_average_pooling2d_5/StatefulPartitionedCall¢1quant_average_pooling2d_6/StatefulPartitionedCall¢&quant_conv2d_5/StatefulPartitionedCall¢&quant_conv2d_6/StatefulPartitionedCall¢&quant_dense_18/StatefulPartitionedCall¢&quant_dense_19/StatefulPartitionedCall¢&quant_dense_20/StatefulPartitionedCall¢(quantize_layer_3/StatefulPartitionedCall
(quantize_layer_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputquantize_layer_3_308670quantize_layer_3_308672*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_308259
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall1quantize_layer_3/StatefulPartitionedCall:output:0quant_conv2d_5_308675quant_conv2d_5_308677quant_conv2d_5_308679quant_conv2d_5_308681quant_conv2d_5_308683quant_conv2d_5_308685*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_308211á
1quant_average_pooling2d_5/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0 quant_average_pooling2d_5_308688 quant_average_pooling2d_5_308690*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_308135¤
&quant_conv2d_6/StatefulPartitionedCallStatefulPartitionedCall:quant_average_pooling2d_5/StatefulPartitionedCall:output:0quant_conv2d_6_308693quant_conv2d_6_308695quant_conv2d_6_308697quant_conv2d_6_308699quant_conv2d_6_308701quant_conv2d_6_308703*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_308082á
1quant_average_pooling2d_6/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_6/StatefulPartitionedCall:output:0 quant_average_pooling2d_6_308706 quant_average_pooling2d_6_308708*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_308006û
quant_flatten_4/PartitionedCallPartitionedCall:quant_average_pooling2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_307965
&quant_dense_18/StatefulPartitionedCallStatefulPartitionedCall(quant_flatten_4/PartitionedCall:output:0quant_dense_18_308712quant_dense_18_308714quant_dense_18_308716quant_dense_18_308718quant_dense_18_308720quant_dense_18_308722*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_307936
&quant_dense_19/StatefulPartitionedCallStatefulPartitionedCall/quant_dense_18/StatefulPartitionedCall:output:0quant_dense_19_308725quant_dense_19_308727quant_dense_19_308729quant_dense_19_308731quant_dense_19_308733quant_dense_19_308735*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_307852
&quant_dense_20/StatefulPartitionedCallStatefulPartitionedCall/quant_dense_19/StatefulPartitionedCall:output:0quant_dense_20_308738quant_dense_20_308740quant_dense_20_308742quant_dense_20_308744quant_dense_20_308746quant_dense_20_308748*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_307768~
IdentityIdentity/quant_dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
NoOpNoOp2^quant_average_pooling2d_5/StatefulPartitionedCall2^quant_average_pooling2d_6/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quant_conv2d_6/StatefulPartitionedCall'^quant_dense_18/StatefulPartitionedCall'^quant_dense_19/StatefulPartitionedCall'^quant_dense_20/StatefulPartitionedCall)^quantize_layer_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1quant_average_pooling2d_5/StatefulPartitionedCall1quant_average_pooling2d_5/StatefulPartitionedCall2f
1quant_average_pooling2d_6/StatefulPartitionedCall1quant_average_pooling2d_6/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quant_conv2d_6/StatefulPartitionedCall&quant_conv2d_6/StatefulPartitionedCall2P
&quant_dense_18/StatefulPartitionedCall&quant_dense_18/StatefulPartitionedCall2P
&quant_dense_19/StatefulPartitionedCall&quant_dense_19/StatefulPartitionedCall2P
&quant_dense_20/StatefulPartitionedCall&quant_dense_20/StatefulPartitionedCall2T
(quantize_layer_3/StatefulPartitionedCall(quantize_layer_3/StatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_5_input
ô*
º
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_309595

inputs@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
p
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             v
MovingAvgQuantize/BatchMinMinAvgPool:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: r
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             x
MovingAvgQuantize/BatchMaxMaxAvgPool:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsAvgPool:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
k
O__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_307383

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
k
O__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_310107

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
N
Ø
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_307852

inputsA
/lastvaluequant_batchmin_readvariableop_resource:xT/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:T@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1e
LastValueQuant/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:xT*
dtype0
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/Const:output:0*
T0*
_output_shapes
: g
LastValueQuant/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:xT*
dtype0
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/Const_1:output:0*
T0*
_output_shapes
: ]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿{
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: |
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0¥
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:xT*
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype0¶
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:xT*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTh
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       x
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: j
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       z
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTÝ
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿx: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
Õ<
ø
H__inference_sequential_4_layer_call_and_return_conditional_losses_308430

inputs!
quantize_layer_3_308348: !
quantize_layer_3_308350: /
quant_conv2d_5_308353:#
quant_conv2d_5_308355:#
quant_conv2d_5_308357:#
quant_conv2d_5_308359:
quant_conv2d_5_308361: 
quant_conv2d_5_308363: *
 quant_average_pooling2d_5_308366: *
 quant_average_pooling2d_5_308368: /
quant_conv2d_6_308371:#
quant_conv2d_6_308373:#
quant_conv2d_6_308375:#
quant_conv2d_6_308377:
quant_conv2d_6_308379: 
quant_conv2d_6_308381: *
 quant_average_pooling2d_6_308384: *
 quant_average_pooling2d_6_308386: (
quant_dense_18_308390:	x
quant_dense_18_308392: 
quant_dense_18_308394: #
quant_dense_18_308396:x
quant_dense_18_308398: 
quant_dense_18_308400: '
quant_dense_19_308403:xT
quant_dense_19_308405: 
quant_dense_19_308407: #
quant_dense_19_308409:T
quant_dense_19_308411: 
quant_dense_19_308413: '
quant_dense_20_308416:T

quant_dense_20_308418: 
quant_dense_20_308420: #
quant_dense_20_308422:

quant_dense_20_308424: 
quant_dense_20_308426: 
identity¢1quant_average_pooling2d_5/StatefulPartitionedCall¢1quant_average_pooling2d_6/StatefulPartitionedCall¢&quant_conv2d_5/StatefulPartitionedCall¢&quant_conv2d_6/StatefulPartitionedCall¢&quant_dense_18/StatefulPartitionedCall¢&quant_dense_19/StatefulPartitionedCall¢&quant_dense_20/StatefulPartitionedCall¢(quantize_layer_3/StatefulPartitionedCall
(quantize_layer_3/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_3_308348quantize_layer_3_308350*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_308259
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall1quantize_layer_3/StatefulPartitionedCall:output:0quant_conv2d_5_308353quant_conv2d_5_308355quant_conv2d_5_308357quant_conv2d_5_308359quant_conv2d_5_308361quant_conv2d_5_308363*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_308211á
1quant_average_pooling2d_5/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0 quant_average_pooling2d_5_308366 quant_average_pooling2d_5_308368*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_308135¤
&quant_conv2d_6/StatefulPartitionedCallStatefulPartitionedCall:quant_average_pooling2d_5/StatefulPartitionedCall:output:0quant_conv2d_6_308371quant_conv2d_6_308373quant_conv2d_6_308375quant_conv2d_6_308377quant_conv2d_6_308379quant_conv2d_6_308381*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_308082á
1quant_average_pooling2d_6/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_6/StatefulPartitionedCall:output:0 quant_average_pooling2d_6_308384 quant_average_pooling2d_6_308386*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_308006û
quant_flatten_4/PartitionedCallPartitionedCall:quant_average_pooling2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_307965
&quant_dense_18/StatefulPartitionedCallStatefulPartitionedCall(quant_flatten_4/PartitionedCall:output:0quant_dense_18_308390quant_dense_18_308392quant_dense_18_308394quant_dense_18_308396quant_dense_18_308398quant_dense_18_308400*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_307936
&quant_dense_19/StatefulPartitionedCallStatefulPartitionedCall/quant_dense_18/StatefulPartitionedCall:output:0quant_dense_19_308403quant_dense_19_308405quant_dense_19_308407quant_dense_19_308409quant_dense_19_308411quant_dense_19_308413*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_307852
&quant_dense_20/StatefulPartitionedCallStatefulPartitionedCall/quant_dense_19/StatefulPartitionedCall:output:0quant_dense_20_308416quant_dense_20_308418quant_dense_20_308420quant_dense_20_308422quant_dense_20_308424quant_dense_20_308426*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_307768~
IdentityIdentity/quant_dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
NoOpNoOp2^quant_average_pooling2d_5/StatefulPartitionedCall2^quant_average_pooling2d_6/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quant_conv2d_6/StatefulPartitionedCall'^quant_dense_18/StatefulPartitionedCall'^quant_dense_19/StatefulPartitionedCall'^quant_dense_20/StatefulPartitionedCall)^quantize_layer_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1quant_average_pooling2d_5/StatefulPartitionedCall1quant_average_pooling2d_5/StatefulPartitionedCall2f
1quant_average_pooling2d_6/StatefulPartitionedCall1quant_average_pooling2d_6/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quant_conv2d_6/StatefulPartitionedCall&quant_conv2d_6/StatefulPartitionedCall2P
&quant_dense_18/StatefulPartitionedCall&quant_dense_18/StatefulPartitionedCall2P
&quant_dense_19/StatefulPartitionedCall&quant_dense_19/StatefulPartitionedCall2P
&quant_dense_20/StatefulPartitionedCall&quant_dense_20/StatefulPartitionedCall2T
(quantize_layer_3/StatefulPartitionedCall(quantize_layer_3/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
k
O__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_307371

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ìú
C
H__inference_sequential_4_layer_call_and_return_conditional_losses_309310

inputsL
Bquantize_layer_3_allvaluesquantize_minimum_readvariableop_resource: L
Bquantize_layer_3_allvaluesquantize_maximum_readvariableop_resource: X
>quant_conv2d_5_lastvaluequant_batchmin_readvariableop_resource:B
4quant_conv2d_5_lastvaluequant_assignminlast_resource:B
4quant_conv2d_5_lastvaluequant_assignmaxlast_resource:<
.quant_conv2d_5_biasadd_readvariableop_resource:O
Equant_conv2d_5_movingavgquantize_assignminema_readvariableop_resource: O
Equant_conv2d_5_movingavgquantize_assignmaxema_readvariableop_resource: Z
Pquant_average_pooling2d_5_movingavgquantize_assignminema_readvariableop_resource: Z
Pquant_average_pooling2d_5_movingavgquantize_assignmaxema_readvariableop_resource: X
>quant_conv2d_6_lastvaluequant_batchmin_readvariableop_resource:B
4quant_conv2d_6_lastvaluequant_assignminlast_resource:B
4quant_conv2d_6_lastvaluequant_assignmaxlast_resource:<
.quant_conv2d_6_biasadd_readvariableop_resource:O
Equant_conv2d_6_movingavgquantize_assignminema_readvariableop_resource: O
Equant_conv2d_6_movingavgquantize_assignmaxema_readvariableop_resource: Z
Pquant_average_pooling2d_6_movingavgquantize_assignminema_readvariableop_resource: Z
Pquant_average_pooling2d_6_movingavgquantize_assignmaxema_readvariableop_resource: Q
>quant_dense_18_lastvaluequant_batchmin_readvariableop_resource:	x>
4quant_dense_18_lastvaluequant_assignminlast_resource: >
4quant_dense_18_lastvaluequant_assignmaxlast_resource: <
.quant_dense_18_biasadd_readvariableop_resource:xO
Equant_dense_18_movingavgquantize_assignminema_readvariableop_resource: O
Equant_dense_18_movingavgquantize_assignmaxema_readvariableop_resource: P
>quant_dense_19_lastvaluequant_batchmin_readvariableop_resource:xT>
4quant_dense_19_lastvaluequant_assignminlast_resource: >
4quant_dense_19_lastvaluequant_assignmaxlast_resource: <
.quant_dense_19_biasadd_readvariableop_resource:TO
Equant_dense_19_movingavgquantize_assignminema_readvariableop_resource: O
Equant_dense_19_movingavgquantize_assignmaxema_readvariableop_resource: P
>quant_dense_20_lastvaluequant_batchmin_readvariableop_resource:T
>
4quant_dense_20_lastvaluequant_assignminlast_resource: >
4quant_dense_20_lastvaluequant_assignmaxlast_resource: <
.quant_dense_20_biasadd_readvariableop_resource:
O
Equant_dense_20_movingavgquantize_assignminema_readvariableop_resource: O
Equant_dense_20_movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢Lquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢Gquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢Lquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢Gquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOp¢Rquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Tquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Lquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢Gquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢Lquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢Gquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOp¢Rquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Tquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_conv2d_5/BiasAdd/ReadVariableOp¢+quant_conv2d_5/LastValueQuant/AssignMaxLast¢+quant_conv2d_5/LastValueQuant/AssignMinLast¢5quant_conv2d_5/LastValueQuant/BatchMax/ReadVariableOp¢5quant_conv2d_5/LastValueQuant/BatchMin/ReadVariableOp¢Nquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢Aquant_conv2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢<quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢Aquant_conv2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢<quant_conv2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOp¢Gquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_conv2d_6/BiasAdd/ReadVariableOp¢+quant_conv2d_6/LastValueQuant/AssignMaxLast¢+quant_conv2d_6/LastValueQuant/AssignMinLast¢5quant_conv2d_6/LastValueQuant/BatchMax/ReadVariableOp¢5quant_conv2d_6/LastValueQuant/BatchMin/ReadVariableOp¢Nquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢Aquant_conv2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢<quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢Aquant_conv2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢<quant_conv2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOp¢Gquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_dense_18/BiasAdd/ReadVariableOp¢+quant_dense_18/LastValueQuant/AssignMaxLast¢+quant_dense_18/LastValueQuant/AssignMinLast¢5quant_dense_18/LastValueQuant/BatchMax/ReadVariableOp¢5quant_dense_18/LastValueQuant/BatchMin/ReadVariableOp¢Dquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢Aquant_dense_18/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢<quant_dense_18/MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢Aquant_dense_18/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢<quant_dense_18/MovingAvgQuantize/AssignMinEma/ReadVariableOp¢Gquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_dense_19/BiasAdd/ReadVariableOp¢+quant_dense_19/LastValueQuant/AssignMaxLast¢+quant_dense_19/LastValueQuant/AssignMinLast¢5quant_dense_19/LastValueQuant/BatchMax/ReadVariableOp¢5quant_dense_19/LastValueQuant/BatchMin/ReadVariableOp¢Dquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢Aquant_dense_19/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢<quant_dense_19/MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢Aquant_dense_19/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢<quant_dense_19/MovingAvgQuantize/AssignMinEma/ReadVariableOp¢Gquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢%quant_dense_20/BiasAdd/ReadVariableOp¢+quant_dense_20/LastValueQuant/AssignMaxLast¢+quant_dense_20/LastValueQuant/AssignMinLast¢5quant_dense_20/LastValueQuant/BatchMax/ReadVariableOp¢5quant_dense_20/LastValueQuant/BatchMin/ReadVariableOp¢Dquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢Aquant_dense_20/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢<quant_dense_20/MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢Aquant_dense_20/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢<quant_dense_20/MovingAvgQuantize/AssignMinEma/ReadVariableOp¢Gquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Iquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢4quantize_layer_3/AllValuesQuantize/AssignMaxAllValue¢4quantize_layer_3/AllValuesQuantize/AssignMinAllValue¢Iquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢Kquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1¢9quantize_layer_3/AllValuesQuantize/Maximum/ReadVariableOp¢9quantize_layer_3/AllValuesQuantize/Minimum/ReadVariableOp
(quantize_layer_3/AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
+quantize_layer_3/AllValuesQuantize/BatchMinMininputs1quantize_layer_3/AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 
*quantize_layer_3/AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
+quantize_layer_3/AllValuesQuantize/BatchMaxMaxinputs3quantize_layer_3/AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: ´
9quantize_layer_3/AllValuesQuantize/Minimum/ReadVariableOpReadVariableOpBquantize_layer_3_allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype0Ï
*quantize_layer_3/AllValuesQuantize/MinimumMinimumAquantize_layer_3/AllValuesQuantize/Minimum/ReadVariableOp:value:04quantize_layer_3/AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: s
.quantize_layer_3/AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Á
,quantize_layer_3/AllValuesQuantize/Minimum_1Minimum.quantize_layer_3/AllValuesQuantize/Minimum:z:07quantize_layer_3/AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: ´
9quantize_layer_3/AllValuesQuantize/Maximum/ReadVariableOpReadVariableOpBquantize_layer_3_allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype0Ï
*quantize_layer_3/AllValuesQuantize/MaximumMaximumAquantize_layer_3/AllValuesQuantize/Maximum/ReadVariableOp:value:04quantize_layer_3/AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: s
.quantize_layer_3/AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Á
,quantize_layer_3/AllValuesQuantize/Maximum_1Maximum.quantize_layer_3/AllValuesQuantize/Maximum:z:07quantize_layer_3/AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 
4quantize_layer_3/AllValuesQuantize/AssignMinAllValueAssignVariableOpBquantize_layer_3_allvaluesquantize_minimum_readvariableop_resource0quantize_layer_3/AllValuesQuantize/Minimum_1:z:0:^quantize_layer_3/AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype0
4quantize_layer_3/AllValuesQuantize/AssignMaxAllValueAssignVariableOpBquantize_layer_3_allvaluesquantize_maximum_readvariableop_resource0quantize_layer_3/AllValuesQuantize/Maximum_1:z:0:^quantize_layer_3/AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype0û
Iquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpBquantize_layer_3_allvaluesquantize_minimum_readvariableop_resource5^quantize_layer_3/AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype0ý
Kquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpBquantize_layer_3_allvaluesquantize_maximum_readvariableop_resource5^quantize_layer_3/AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype0¶
:quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputsQquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Squantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
5quant_conv2d_5/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp>quant_conv2d_5_lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0
8quant_conv2d_5/LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ô
&quant_conv2d_5/LastValueQuant/BatchMinMin=quant_conv2d_5/LastValueQuant/BatchMin/ReadVariableOp:value:0Aquant_conv2d_5/LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:¼
5quant_conv2d_5/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp>quant_conv2d_5_lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0
8quant_conv2d_5/LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ô
&quant_conv2d_5/LastValueQuant/BatchMaxMax=quant_conv2d_5/LastValueQuant/BatchMax/ReadVariableOp:value:0Aquant_conv2d_5/LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:l
'quant_conv2d_5/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿¸
%quant_conv2d_5/LastValueQuant/truedivRealDiv/quant_conv2d_5/LastValueQuant/BatchMax:output:00quant_conv2d_5/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:±
%quant_conv2d_5/LastValueQuant/MinimumMinimum/quant_conv2d_5/LastValueQuant/BatchMin:output:0)quant_conv2d_5/LastValueQuant/truediv:z:0*
T0*
_output_shapes
:h
#quant_conv2d_5/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿¬
!quant_conv2d_5/LastValueQuant/mulMul/quant_conv2d_5/LastValueQuant/BatchMin:output:0,quant_conv2d_5/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:­
%quant_conv2d_5/LastValueQuant/MaximumMaximum/quant_conv2d_5/LastValueQuant/BatchMax:output:0%quant_conv2d_5/LastValueQuant/mul:z:0*
T0*
_output_shapes
:Ã
+quant_conv2d_5/LastValueQuant/AssignMinLastAssignVariableOp4quant_conv2d_5_lastvaluequant_assignminlast_resource)quant_conv2d_5/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0Ã
+quant_conv2d_5/LastValueQuant/AssignMaxLastAssignVariableOp4quant_conv2d_5_lastvaluequant_assignmaxlast_resource)quant_conv2d_5/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0Õ
Nquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp>quant_conv2d_5_lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0ï
Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp4quant_conv2d_5_lastvaluequant_assignminlast_resource,^quant_conv2d_5/LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype0ï
Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp4quant_conv2d_5_lastvaluequant_assignmaxlast_resource,^quant_conv2d_5/LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype0¬
?quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelVquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0Xquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0Xquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(
quant_conv2d_5/Conv2DConv2DDquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0Iquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

%quant_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp.quant_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ª
quant_conv2d_5/BiasAddBiasAddquant_conv2d_5/Conv2D:output:0-quant_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
quant_conv2d_5/ReluReluquant_conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&quant_conv2d_5/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ¥
)quant_conv2d_5/MovingAvgQuantize/BatchMinMin!quant_conv2d_5/Relu:activations:0/quant_conv2d_5/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 
(quant_conv2d_5/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             §
)quant_conv2d_5/MovingAvgQuantize/BatchMaxMax!quant_conv2d_5/Relu:activations:01quant_conv2d_5/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: o
*quant_conv2d_5/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_conv2d_5/MovingAvgQuantize/MinimumMinimum2quant_conv2d_5/MovingAvgQuantize/BatchMin:output:03quant_conv2d_5/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: o
*quant_conv2d_5/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_conv2d_5/MovingAvgQuantize/MaximumMaximum2quant_conv2d_5/MovingAvgQuantize/BatchMax:output:03quant_conv2d_5/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: x
3quant_conv2d_5/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_conv2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpEquant_conv2d_5_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_conv2d_5/MovingAvgQuantize/AssignMinEma/subSubDquant_conv2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0,quant_conv2d_5/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: Î
1quant_conv2d_5/MovingAvgQuantize/AssignMinEma/mulMul5quant_conv2d_5/MovingAvgQuantize/AssignMinEma/sub:z:0<quant_conv2d_5/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_conv2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpEquant_conv2d_5_movingavgquantize_assignminema_readvariableop_resource5quant_conv2d_5/MovingAvgQuantize/AssignMinEma/mul:z:0=^quant_conv2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0x
3quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpEquant_conv2d_5_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/subSubDquant_conv2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0,quant_conv2d_5/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: Î
1quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/mulMul5quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/sub:z:0<quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_conv2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpEquant_conv2d_5_movingavgquantize_assignmaxema_readvariableop_resource5quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/mul:z:0=^quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0
Gquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpEquant_conv2d_5_movingavgquantize_assignminema_readvariableop_resourceB^quant_conv2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
Iquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpEquant_conv2d_5_movingavgquantize_assignmaxema_readvariableop_resourceB^quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Ë
8quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars!quant_conv2d_5/Relu:activations:0Oquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
!quant_average_pooling2d_5/AvgPoolAvgPoolBquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

1quant_average_pooling2d_5/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ä
4quant_average_pooling2d_5/MovingAvgQuantize/BatchMinMin*quant_average_pooling2d_5/AvgPool:output:0:quant_average_pooling2d_5/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 
3quant_average_pooling2d_5/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             Æ
4quant_average_pooling2d_5/MovingAvgQuantize/BatchMaxMax*quant_average_pooling2d_5/AvgPool:output:0<quant_average_pooling2d_5/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: z
5quant_average_pooling2d_5/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Þ
3quant_average_pooling2d_5/MovingAvgQuantize/MinimumMinimum=quant_average_pooling2d_5/MovingAvgQuantize/BatchMin:output:0>quant_average_pooling2d_5/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: z
5quant_average_pooling2d_5/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Þ
3quant_average_pooling2d_5/MovingAvgQuantize/MaximumMaximum=quant_average_pooling2d_5/MovingAvgQuantize/BatchMax:output:0>quant_average_pooling2d_5/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 
>quant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ð
Gquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpPquant_average_pooling2d_5_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0î
<quant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/subSubOquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:07quant_average_pooling2d_5/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ï
<quant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/mulMul@quant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/sub:z:0Gquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ä
Lquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpPquant_average_pooling2d_5_movingavgquantize_assignminema_readvariableop_resource@quant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/mul:z:0H^quant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0
>quant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ð
Gquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpPquant_average_pooling2d_5_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0î
<quant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/subSubOquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:07quant_average_pooling2d_5/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ï
<quant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/mulMul@quant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/sub:z:0Gquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ä
Lquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpPquant_average_pooling2d_5_movingavgquantize_assignmaxema_readvariableop_resource@quant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/mul:z:0H^quant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0ª
Rquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpPquant_average_pooling2d_5_movingavgquantize_assignminema_readvariableop_resourceM^quant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0¬
Tquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpPquant_average_pooling2d_5_movingavgquantize_assignmaxema_readvariableop_resourceM^quant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0õ
Cquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars*quant_average_pooling2d_5/AvgPool:output:0Zquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0\quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
5quant_conv2d_6/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp>quant_conv2d_6_lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0
8quant_conv2d_6/LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ô
&quant_conv2d_6/LastValueQuant/BatchMinMin=quant_conv2d_6/LastValueQuant/BatchMin/ReadVariableOp:value:0Aquant_conv2d_6/LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:¼
5quant_conv2d_6/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp>quant_conv2d_6_lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0
8quant_conv2d_6/LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Ô
&quant_conv2d_6/LastValueQuant/BatchMaxMax=quant_conv2d_6/LastValueQuant/BatchMax/ReadVariableOp:value:0Aquant_conv2d_6/LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:l
'quant_conv2d_6/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿¸
%quant_conv2d_6/LastValueQuant/truedivRealDiv/quant_conv2d_6/LastValueQuant/BatchMax:output:00quant_conv2d_6/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:±
%quant_conv2d_6/LastValueQuant/MinimumMinimum/quant_conv2d_6/LastValueQuant/BatchMin:output:0)quant_conv2d_6/LastValueQuant/truediv:z:0*
T0*
_output_shapes
:h
#quant_conv2d_6/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿¬
!quant_conv2d_6/LastValueQuant/mulMul/quant_conv2d_6/LastValueQuant/BatchMin:output:0,quant_conv2d_6/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:­
%quant_conv2d_6/LastValueQuant/MaximumMaximum/quant_conv2d_6/LastValueQuant/BatchMax:output:0%quant_conv2d_6/LastValueQuant/mul:z:0*
T0*
_output_shapes
:Ã
+quant_conv2d_6/LastValueQuant/AssignMinLastAssignVariableOp4quant_conv2d_6_lastvaluequant_assignminlast_resource)quant_conv2d_6/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0Ã
+quant_conv2d_6/LastValueQuant/AssignMaxLastAssignVariableOp4quant_conv2d_6_lastvaluequant_assignmaxlast_resource)quant_conv2d_6/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0Õ
Nquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp>quant_conv2d_6_lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0ï
Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp4quant_conv2d_6_lastvaluequant_assignminlast_resource,^quant_conv2d_6/LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype0ï
Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp4quant_conv2d_6_lastvaluequant_assignmaxlast_resource,^quant_conv2d_6/LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype0¬
?quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelVquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0Xquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0Xquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(
quant_conv2d_6/Conv2DConv2DMquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Iquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

%quant_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp.quant_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ª
quant_conv2d_6/BiasAddBiasAddquant_conv2d_6/Conv2D:output:0-quant_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
quant_conv2d_6/ReluReluquant_conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&quant_conv2d_6/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ¥
)quant_conv2d_6/MovingAvgQuantize/BatchMinMin!quant_conv2d_6/Relu:activations:0/quant_conv2d_6/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 
(quant_conv2d_6/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             §
)quant_conv2d_6/MovingAvgQuantize/BatchMaxMax!quant_conv2d_6/Relu:activations:01quant_conv2d_6/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: o
*quant_conv2d_6/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_conv2d_6/MovingAvgQuantize/MinimumMinimum2quant_conv2d_6/MovingAvgQuantize/BatchMin:output:03quant_conv2d_6/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: o
*quant_conv2d_6/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_conv2d_6/MovingAvgQuantize/MaximumMaximum2quant_conv2d_6/MovingAvgQuantize/BatchMax:output:03quant_conv2d_6/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: x
3quant_conv2d_6/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_conv2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpEquant_conv2d_6_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_conv2d_6/MovingAvgQuantize/AssignMinEma/subSubDquant_conv2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0,quant_conv2d_6/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: Î
1quant_conv2d_6/MovingAvgQuantize/AssignMinEma/mulMul5quant_conv2d_6/MovingAvgQuantize/AssignMinEma/sub:z:0<quant_conv2d_6/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_conv2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpEquant_conv2d_6_movingavgquantize_assignminema_readvariableop_resource5quant_conv2d_6/MovingAvgQuantize/AssignMinEma/mul:z:0=^quant_conv2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0x
3quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpEquant_conv2d_6_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/subSubDquant_conv2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0,quant_conv2d_6/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: Î
1quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/mulMul5quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/sub:z:0<quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_conv2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpEquant_conv2d_6_movingavgquantize_assignmaxema_readvariableop_resource5quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/mul:z:0=^quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0
Gquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpEquant_conv2d_6_movingavgquantize_assignminema_readvariableop_resourceB^quant_conv2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
Iquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpEquant_conv2d_6_movingavgquantize_assignmaxema_readvariableop_resourceB^quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Ë
8quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars!quant_conv2d_6/Relu:activations:0Oquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
!quant_average_pooling2d_6/AvgPoolAvgPoolBquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

1quant_average_pooling2d_6/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ä
4quant_average_pooling2d_6/MovingAvgQuantize/BatchMinMin*quant_average_pooling2d_6/AvgPool:output:0:quant_average_pooling2d_6/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 
3quant_average_pooling2d_6/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             Æ
4quant_average_pooling2d_6/MovingAvgQuantize/BatchMaxMax*quant_average_pooling2d_6/AvgPool:output:0<quant_average_pooling2d_6/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: z
5quant_average_pooling2d_6/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Þ
3quant_average_pooling2d_6/MovingAvgQuantize/MinimumMinimum=quant_average_pooling2d_6/MovingAvgQuantize/BatchMin:output:0>quant_average_pooling2d_6/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: z
5quant_average_pooling2d_6/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Þ
3quant_average_pooling2d_6/MovingAvgQuantize/MaximumMaximum=quant_average_pooling2d_6/MovingAvgQuantize/BatchMax:output:0>quant_average_pooling2d_6/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 
>quant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ð
Gquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpPquant_average_pooling2d_6_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0î
<quant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/subSubOquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:07quant_average_pooling2d_6/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ï
<quant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/mulMul@quant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/sub:z:0Gquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ä
Lquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpPquant_average_pooling2d_6_movingavgquantize_assignminema_readvariableop_resource@quant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/mul:z:0H^quant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0
>quant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ð
Gquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpPquant_average_pooling2d_6_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0î
<quant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/subSubOquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:07quant_average_pooling2d_6/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ï
<quant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/mulMul@quant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/sub:z:0Gquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ä
Lquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpPquant_average_pooling2d_6_movingavgquantize_assignmaxema_readvariableop_resource@quant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/mul:z:0H^quant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0ª
Rquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpPquant_average_pooling2d_6_movingavgquantize_assignminema_readvariableop_resourceM^quant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0¬
Tquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpPquant_average_pooling2d_6_movingavgquantize_assignmaxema_readvariableop_resourceM^quant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0õ
Cquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars*quant_average_pooling2d_6/AvgPool:output:0Zquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0\quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
quant_flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ä
quant_flatten_4/ReshapeReshapeMquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0quant_flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
#quant_dense_18/LastValueQuant/ConstConst*
_output_shapes
:*
dtype0*
valueB"       µ
5quant_dense_18/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp>quant_dense_18_lastvaluequant_batchmin_readvariableop_resource*
_output_shapes
:	x*
dtype0»
&quant_dense_18/LastValueQuant/BatchMinMin=quant_dense_18/LastValueQuant/BatchMin/ReadVariableOp:value:0,quant_dense_18/LastValueQuant/Const:output:0*
T0*
_output_shapes
: v
%quant_dense_18/LastValueQuant/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       µ
5quant_dense_18/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp>quant_dense_18_lastvaluequant_batchmin_readvariableop_resource*
_output_shapes
:	x*
dtype0½
&quant_dense_18/LastValueQuant/BatchMaxMax=quant_dense_18/LastValueQuant/BatchMax/ReadVariableOp:value:0.quant_dense_18/LastValueQuant/Const_1:output:0*
T0*
_output_shapes
: l
'quant_dense_18/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿´
%quant_dense_18/LastValueQuant/truedivRealDiv/quant_dense_18/LastValueQuant/BatchMax:output:00quant_dense_18/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: ­
%quant_dense_18/LastValueQuant/MinimumMinimum/quant_dense_18/LastValueQuant/BatchMin:output:0)quant_dense_18/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: h
#quant_dense_18/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿¨
!quant_dense_18/LastValueQuant/mulMul/quant_dense_18/LastValueQuant/BatchMin:output:0,quant_dense_18/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: ©
%quant_dense_18/LastValueQuant/MaximumMaximum/quant_dense_18/LastValueQuant/BatchMax:output:0%quant_dense_18/LastValueQuant/mul:z:0*
T0*
_output_shapes
: Ã
+quant_dense_18/LastValueQuant/AssignMinLastAssignVariableOp4quant_dense_18_lastvaluequant_assignminlast_resource)quant_dense_18/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0Ã
+quant_dense_18/LastValueQuant/AssignMaxLastAssignVariableOp4quant_dense_18_lastvaluequant_assignmaxlast_resource)quant_dense_18/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0Ä
Dquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>quant_dense_18_lastvaluequant_batchmin_readvariableop_resource*
_output_shapes
:	x*
dtype0á
Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp4quant_dense_18_lastvaluequant_assignminlast_resource,^quant_dense_18/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype0á
Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp4quant_dense_18_lastvaluequant_assignmaxlast_resource,^quant_dense_18/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype0ó
5quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsLquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Nquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Nquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	x*
narrow_range(´
quant_dense_18/MatMulMatMul quant_flatten_4/Reshape:output:0?quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
%quant_dense_18/BiasAdd/ReadVariableOpReadVariableOp.quant_dense_18_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0£
quant_dense_18/BiasAddBiasAddquant_dense_18/MatMul:product:0-quant_dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxn
quant_dense_18/ReluReluquant_dense_18/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxw
&quant_dense_18/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ¥
)quant_dense_18/MovingAvgQuantize/BatchMinMin!quant_dense_18/Relu:activations:0/quant_dense_18/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: y
(quant_dense_18/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       §
)quant_dense_18/MovingAvgQuantize/BatchMaxMax!quant_dense_18/Relu:activations:01quant_dense_18/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: o
*quant_dense_18/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_dense_18/MovingAvgQuantize/MinimumMinimum2quant_dense_18/MovingAvgQuantize/BatchMin:output:03quant_dense_18/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: o
*quant_dense_18/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_dense_18/MovingAvgQuantize/MaximumMaximum2quant_dense_18/MovingAvgQuantize/BatchMax:output:03quant_dense_18/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: x
3quant_dense_18/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_dense_18/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpEquant_dense_18_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_dense_18/MovingAvgQuantize/AssignMinEma/subSubDquant_dense_18/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0,quant_dense_18/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: Î
1quant_dense_18/MovingAvgQuantize/AssignMinEma/mulMul5quant_dense_18/MovingAvgQuantize/AssignMinEma/sub:z:0<quant_dense_18/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_dense_18/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpEquant_dense_18_movingavgquantize_assignminema_readvariableop_resource5quant_dense_18/MovingAvgQuantize/AssignMinEma/mul:z:0=^quant_dense_18/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0x
3quant_dense_18/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_dense_18/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpEquant_dense_18_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_dense_18/MovingAvgQuantize/AssignMaxEma/subSubDquant_dense_18/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0,quant_dense_18/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: Î
1quant_dense_18/MovingAvgQuantize/AssignMaxEma/mulMul5quant_dense_18/MovingAvgQuantize/AssignMaxEma/sub:z:0<quant_dense_18/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_dense_18/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpEquant_dense_18_movingavgquantize_assignmaxema_readvariableop_resource5quant_dense_18/MovingAvgQuantize/AssignMaxEma/mul:z:0=^quant_dense_18/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0
Gquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpEquant_dense_18_movingavgquantize_assignminema_readvariableop_resourceB^quant_dense_18/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
Iquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpEquant_dense_18_movingavgquantize_assignmaxema_readvariableop_resourceB^quant_dense_18/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Ã
8quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars!quant_dense_18/Relu:activations:0Oquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxt
#quant_dense_19/LastValueQuant/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ´
5quant_dense_19/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp>quant_dense_19_lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:xT*
dtype0»
&quant_dense_19/LastValueQuant/BatchMinMin=quant_dense_19/LastValueQuant/BatchMin/ReadVariableOp:value:0,quant_dense_19/LastValueQuant/Const:output:0*
T0*
_output_shapes
: v
%quant_dense_19/LastValueQuant/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ´
5quant_dense_19/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp>quant_dense_19_lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:xT*
dtype0½
&quant_dense_19/LastValueQuant/BatchMaxMax=quant_dense_19/LastValueQuant/BatchMax/ReadVariableOp:value:0.quant_dense_19/LastValueQuant/Const_1:output:0*
T0*
_output_shapes
: l
'quant_dense_19/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿´
%quant_dense_19/LastValueQuant/truedivRealDiv/quant_dense_19/LastValueQuant/BatchMax:output:00quant_dense_19/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: ­
%quant_dense_19/LastValueQuant/MinimumMinimum/quant_dense_19/LastValueQuant/BatchMin:output:0)quant_dense_19/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: h
#quant_dense_19/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿¨
!quant_dense_19/LastValueQuant/mulMul/quant_dense_19/LastValueQuant/BatchMin:output:0,quant_dense_19/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: ©
%quant_dense_19/LastValueQuant/MaximumMaximum/quant_dense_19/LastValueQuant/BatchMax:output:0%quant_dense_19/LastValueQuant/mul:z:0*
T0*
_output_shapes
: Ã
+quant_dense_19/LastValueQuant/AssignMinLastAssignVariableOp4quant_dense_19_lastvaluequant_assignminlast_resource)quant_dense_19/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0Ã
+quant_dense_19/LastValueQuant/AssignMaxLastAssignVariableOp4quant_dense_19_lastvaluequant_assignmaxlast_resource)quant_dense_19/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0Ã
Dquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>quant_dense_19_lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:xT*
dtype0á
Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp4quant_dense_19_lastvaluequant_assignminlast_resource,^quant_dense_19/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype0á
Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp4quant_dense_19_lastvaluequant_assignmaxlast_resource,^quant_dense_19/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype0ò
5quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsLquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Nquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Nquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:xT*
narrow_range(Ö
quant_dense_19/MatMulMatMulBquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0?quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
%quant_dense_19/BiasAdd/ReadVariableOpReadVariableOp.quant_dense_19_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0£
quant_dense_19/BiasAddBiasAddquant_dense_19/MatMul:product:0-quant_dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTn
quant_dense_19/ReluReluquant_dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTw
&quant_dense_19/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ¥
)quant_dense_19/MovingAvgQuantize/BatchMinMin!quant_dense_19/Relu:activations:0/quant_dense_19/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: y
(quant_dense_19/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       §
)quant_dense_19/MovingAvgQuantize/BatchMaxMax!quant_dense_19/Relu:activations:01quant_dense_19/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: o
*quant_dense_19/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_dense_19/MovingAvgQuantize/MinimumMinimum2quant_dense_19/MovingAvgQuantize/BatchMin:output:03quant_dense_19/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: o
*quant_dense_19/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_dense_19/MovingAvgQuantize/MaximumMaximum2quant_dense_19/MovingAvgQuantize/BatchMax:output:03quant_dense_19/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: x
3quant_dense_19/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_dense_19/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpEquant_dense_19_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_dense_19/MovingAvgQuantize/AssignMinEma/subSubDquant_dense_19/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0,quant_dense_19/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: Î
1quant_dense_19/MovingAvgQuantize/AssignMinEma/mulMul5quant_dense_19/MovingAvgQuantize/AssignMinEma/sub:z:0<quant_dense_19/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_dense_19/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpEquant_dense_19_movingavgquantize_assignminema_readvariableop_resource5quant_dense_19/MovingAvgQuantize/AssignMinEma/mul:z:0=^quant_dense_19/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0x
3quant_dense_19/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_dense_19/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpEquant_dense_19_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_dense_19/MovingAvgQuantize/AssignMaxEma/subSubDquant_dense_19/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0,quant_dense_19/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: Î
1quant_dense_19/MovingAvgQuantize/AssignMaxEma/mulMul5quant_dense_19/MovingAvgQuantize/AssignMaxEma/sub:z:0<quant_dense_19/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_dense_19/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpEquant_dense_19_movingavgquantize_assignmaxema_readvariableop_resource5quant_dense_19/MovingAvgQuantize/AssignMaxEma/mul:z:0=^quant_dense_19/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0
Gquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpEquant_dense_19_movingavgquantize_assignminema_readvariableop_resourceB^quant_dense_19/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
Iquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpEquant_dense_19_movingavgquantize_assignmaxema_readvariableop_resourceB^quant_dense_19/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Ã
8quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars!quant_dense_19/Relu:activations:0Oquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTt
#quant_dense_20/LastValueQuant/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ´
5quant_dense_20/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp>quant_dense_20_lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:T
*
dtype0»
&quant_dense_20/LastValueQuant/BatchMinMin=quant_dense_20/LastValueQuant/BatchMin/ReadVariableOp:value:0,quant_dense_20/LastValueQuant/Const:output:0*
T0*
_output_shapes
: v
%quant_dense_20/LastValueQuant/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ´
5quant_dense_20/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp>quant_dense_20_lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:T
*
dtype0½
&quant_dense_20/LastValueQuant/BatchMaxMax=quant_dense_20/LastValueQuant/BatchMax/ReadVariableOp:value:0.quant_dense_20/LastValueQuant/Const_1:output:0*
T0*
_output_shapes
: l
'quant_dense_20/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿´
%quant_dense_20/LastValueQuant/truedivRealDiv/quant_dense_20/LastValueQuant/BatchMax:output:00quant_dense_20/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: ­
%quant_dense_20/LastValueQuant/MinimumMinimum/quant_dense_20/LastValueQuant/BatchMin:output:0)quant_dense_20/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: h
#quant_dense_20/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿¨
!quant_dense_20/LastValueQuant/mulMul/quant_dense_20/LastValueQuant/BatchMin:output:0,quant_dense_20/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: ©
%quant_dense_20/LastValueQuant/MaximumMaximum/quant_dense_20/LastValueQuant/BatchMax:output:0%quant_dense_20/LastValueQuant/mul:z:0*
T0*
_output_shapes
: Ã
+quant_dense_20/LastValueQuant/AssignMinLastAssignVariableOp4quant_dense_20_lastvaluequant_assignminlast_resource)quant_dense_20/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0Ã
+quant_dense_20/LastValueQuant/AssignMaxLastAssignVariableOp4quant_dense_20_lastvaluequant_assignmaxlast_resource)quant_dense_20/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0Ã
Dquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>quant_dense_20_lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:T
*
dtype0á
Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp4quant_dense_20_lastvaluequant_assignminlast_resource,^quant_dense_20/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype0á
Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp4quant_dense_20_lastvaluequant_assignmaxlast_resource,^quant_dense_20/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype0ò
5quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsLquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Nquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Nquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:T
*
narrow_range(Ö
quant_dense_20/MatMulMatMulBquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0?quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%quant_dense_20/BiasAdd/ReadVariableOpReadVariableOp.quant_dense_20_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0£
quant_dense_20/BiasAddBiasAddquant_dense_20/MatMul:product:0-quant_dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
&quant_dense_20/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       £
)quant_dense_20/MovingAvgQuantize/BatchMinMinquant_dense_20/BiasAdd:output:0/quant_dense_20/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: y
(quant_dense_20/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ¥
)quant_dense_20/MovingAvgQuantize/BatchMaxMaxquant_dense_20/BiasAdd:output:01quant_dense_20/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: o
*quant_dense_20/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_dense_20/MovingAvgQuantize/MinimumMinimum2quant_dense_20/MovingAvgQuantize/BatchMin:output:03quant_dense_20/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: o
*quant_dense_20/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
(quant_dense_20/MovingAvgQuantize/MaximumMaximum2quant_dense_20/MovingAvgQuantize/BatchMax:output:03quant_dense_20/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: x
3quant_dense_20/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_dense_20/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpEquant_dense_20_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_dense_20/MovingAvgQuantize/AssignMinEma/subSubDquant_dense_20/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0,quant_dense_20/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: Î
1quant_dense_20/MovingAvgQuantize/AssignMinEma/mulMul5quant_dense_20/MovingAvgQuantize/AssignMinEma/sub:z:0<quant_dense_20/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_dense_20/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpEquant_dense_20_movingavgquantize_assignminema_readvariableop_resource5quant_dense_20/MovingAvgQuantize/AssignMinEma/mul:z:0=^quant_dense_20/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0x
3quant_dense_20/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
<quant_dense_20/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpEquant_dense_20_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0Í
1quant_dense_20/MovingAvgQuantize/AssignMaxEma/subSubDquant_dense_20/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0,quant_dense_20/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: Î
1quant_dense_20/MovingAvgQuantize/AssignMaxEma/mulMul5quant_dense_20/MovingAvgQuantize/AssignMaxEma/sub:z:0<quant_dense_20/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ¸
Aquant_dense_20/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpEquant_dense_20_movingavgquantize_assignmaxema_readvariableop_resource5quant_dense_20/MovingAvgQuantize/AssignMaxEma/mul:z:0=^quant_dense_20/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0
Gquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpEquant_dense_20_movingavgquantize_assignminema_readvariableop_resourceB^quant_dense_20/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
Iquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpEquant_dense_20_movingavgquantize_assignmaxema_readvariableop_resourceB^quant_dense_20/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Á
8quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsquant_dense_20/BiasAdd:output:0Oquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Qquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

quant_dense_20/SoftmaxSoftmaxBquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
o
IdentityIdentity quant_dense_20/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ë-
NoOpNoOpM^quant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpH^quant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOpM^quant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpH^quant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOpS^quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpU^quant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1M^quant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpH^quant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOpM^quant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpH^quant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOpS^quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpU^quant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_conv2d_5/BiasAdd/ReadVariableOp,^quant_conv2d_5/LastValueQuant/AssignMaxLast,^quant_conv2d_5/LastValueQuant/AssignMinLast6^quant_conv2d_5/LastValueQuant/BatchMax/ReadVariableOp6^quant_conv2d_5/LastValueQuant/BatchMin/ReadVariableOpO^quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpQ^quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1Q^quant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2B^quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp=^quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOpB^quant_conv2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp=^quant_conv2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOpH^quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_conv2d_6/BiasAdd/ReadVariableOp,^quant_conv2d_6/LastValueQuant/AssignMaxLast,^quant_conv2d_6/LastValueQuant/AssignMinLast6^quant_conv2d_6/LastValueQuant/BatchMax/ReadVariableOp6^quant_conv2d_6/LastValueQuant/BatchMin/ReadVariableOpO^quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpQ^quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1Q^quant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2B^quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp=^quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOpB^quant_conv2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp=^quant_conv2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOpH^quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_dense_18/BiasAdd/ReadVariableOp,^quant_dense_18/LastValueQuant/AssignMaxLast,^quant_dense_18/LastValueQuant/AssignMinLast6^quant_dense_18/LastValueQuant/BatchMax/ReadVariableOp6^quant_dense_18/LastValueQuant/BatchMin/ReadVariableOpE^quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpG^quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1G^quant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2B^quant_dense_18/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp=^quant_dense_18/MovingAvgQuantize/AssignMaxEma/ReadVariableOpB^quant_dense_18/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp=^quant_dense_18/MovingAvgQuantize/AssignMinEma/ReadVariableOpH^quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_dense_19/BiasAdd/ReadVariableOp,^quant_dense_19/LastValueQuant/AssignMaxLast,^quant_dense_19/LastValueQuant/AssignMinLast6^quant_dense_19/LastValueQuant/BatchMax/ReadVariableOp6^quant_dense_19/LastValueQuant/BatchMin/ReadVariableOpE^quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpG^quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1G^quant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2B^quant_dense_19/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp=^quant_dense_19/MovingAvgQuantize/AssignMaxEma/ReadVariableOpB^quant_dense_19/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp=^quant_dense_19/MovingAvgQuantize/AssignMinEma/ReadVariableOpH^quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1&^quant_dense_20/BiasAdd/ReadVariableOp,^quant_dense_20/LastValueQuant/AssignMaxLast,^quant_dense_20/LastValueQuant/AssignMinLast6^quant_dense_20/LastValueQuant/BatchMax/ReadVariableOp6^quant_dense_20/LastValueQuant/BatchMin/ReadVariableOpE^quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpG^quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1G^quant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2B^quant_dense_20/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp=^quant_dense_20/MovingAvgQuantize/AssignMaxEma/ReadVariableOpB^quant_dense_20/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp=^quant_dense_20/MovingAvgQuantize/AssignMinEma/ReadVariableOpH^quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJ^quant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_15^quantize_layer_3/AllValuesQuantize/AssignMaxAllValue5^quantize_layer_3/AllValuesQuantize/AssignMinAllValueJ^quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpL^quantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:^quantize_layer_3/AllValuesQuantize/Maximum/ReadVariableOp:^quantize_layer_3/AllValuesQuantize/Minimum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2
Lquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpLquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2
Gquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOpGquant_average_pooling2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2
Lquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpLquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2
Gquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOpGquant_average_pooling2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOp2¨
Rquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpRquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2¬
Tquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Tquant_average_pooling2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12
Lquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpLquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2
Gquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOpGquant_average_pooling2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2
Lquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpLquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2
Gquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOpGquant_average_pooling2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOp2¨
Rquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpRquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2¬
Tquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Tquant_average_pooling2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_conv2d_5/BiasAdd/ReadVariableOp%quant_conv2d_5/BiasAdd/ReadVariableOp2Z
+quant_conv2d_5/LastValueQuant/AssignMaxLast+quant_conv2d_5/LastValueQuant/AssignMaxLast2Z
+quant_conv2d_5/LastValueQuant/AssignMinLast+quant_conv2d_5/LastValueQuant/AssignMinLast2n
5quant_conv2d_5/LastValueQuant/BatchMax/ReadVariableOp5quant_conv2d_5/LastValueQuant/BatchMax/ReadVariableOp2n
5quant_conv2d_5/LastValueQuant/BatchMin/ReadVariableOp5quant_conv2d_5/LastValueQuant/BatchMin/ReadVariableOp2 
Nquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpNquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2¤
Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12¤
Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Pquant_conv2d_5/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22
Aquant_conv2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAquant_conv2d_5/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2|
<quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOp<quant_conv2d_5/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2
Aquant_conv2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAquant_conv2d_5/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2|
<quant_conv2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOp<quant_conv2d_5/MovingAvgQuantize/AssignMinEma/ReadVariableOp2
Gquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_conv2d_5/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_conv2d_6/BiasAdd/ReadVariableOp%quant_conv2d_6/BiasAdd/ReadVariableOp2Z
+quant_conv2d_6/LastValueQuant/AssignMaxLast+quant_conv2d_6/LastValueQuant/AssignMaxLast2Z
+quant_conv2d_6/LastValueQuant/AssignMinLast+quant_conv2d_6/LastValueQuant/AssignMinLast2n
5quant_conv2d_6/LastValueQuant/BatchMax/ReadVariableOp5quant_conv2d_6/LastValueQuant/BatchMax/ReadVariableOp2n
5quant_conv2d_6/LastValueQuant/BatchMin/ReadVariableOp5quant_conv2d_6/LastValueQuant/BatchMin/ReadVariableOp2 
Nquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpNquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2¤
Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12¤
Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Pquant_conv2d_6/LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22
Aquant_conv2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAquant_conv2d_6/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2|
<quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOp<quant_conv2d_6/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2
Aquant_conv2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAquant_conv2d_6/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2|
<quant_conv2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOp<quant_conv2d_6/MovingAvgQuantize/AssignMinEma/ReadVariableOp2
Gquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_conv2d_6/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_dense_18/BiasAdd/ReadVariableOp%quant_dense_18/BiasAdd/ReadVariableOp2Z
+quant_dense_18/LastValueQuant/AssignMaxLast+quant_dense_18/LastValueQuant/AssignMaxLast2Z
+quant_dense_18/LastValueQuant/AssignMinLast+quant_dense_18/LastValueQuant/AssignMinLast2n
5quant_dense_18/LastValueQuant/BatchMax/ReadVariableOp5quant_dense_18/LastValueQuant/BatchMax/ReadVariableOp2n
5quant_dense_18/LastValueQuant/BatchMin/ReadVariableOp5quant_dense_18/LastValueQuant/BatchMin/ReadVariableOp2
Dquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpDquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2
Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12
Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Fquant_dense_18/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22
Aquant_dense_18/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAquant_dense_18/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2|
<quant_dense_18/MovingAvgQuantize/AssignMaxEma/ReadVariableOp<quant_dense_18/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2
Aquant_dense_18/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAquant_dense_18/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2|
<quant_dense_18/MovingAvgQuantize/AssignMinEma/ReadVariableOp<quant_dense_18/MovingAvgQuantize/AssignMinEma/ReadVariableOp2
Gquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_dense_18/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_dense_19/BiasAdd/ReadVariableOp%quant_dense_19/BiasAdd/ReadVariableOp2Z
+quant_dense_19/LastValueQuant/AssignMaxLast+quant_dense_19/LastValueQuant/AssignMaxLast2Z
+quant_dense_19/LastValueQuant/AssignMinLast+quant_dense_19/LastValueQuant/AssignMinLast2n
5quant_dense_19/LastValueQuant/BatchMax/ReadVariableOp5quant_dense_19/LastValueQuant/BatchMax/ReadVariableOp2n
5quant_dense_19/LastValueQuant/BatchMin/ReadVariableOp5quant_dense_19/LastValueQuant/BatchMin/ReadVariableOp2
Dquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpDquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2
Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12
Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Fquant_dense_19/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22
Aquant_dense_19/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAquant_dense_19/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2|
<quant_dense_19/MovingAvgQuantize/AssignMaxEma/ReadVariableOp<quant_dense_19/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2
Aquant_dense_19/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAquant_dense_19/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2|
<quant_dense_19/MovingAvgQuantize/AssignMinEma/ReadVariableOp<quant_dense_19/MovingAvgQuantize/AssignMinEma/ReadVariableOp2
Gquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_dense_19/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12N
%quant_dense_20/BiasAdd/ReadVariableOp%quant_dense_20/BiasAdd/ReadVariableOp2Z
+quant_dense_20/LastValueQuant/AssignMaxLast+quant_dense_20/LastValueQuant/AssignMaxLast2Z
+quant_dense_20/LastValueQuant/AssignMinLast+quant_dense_20/LastValueQuant/AssignMinLast2n
5quant_dense_20/LastValueQuant/BatchMax/ReadVariableOp5quant_dense_20/LastValueQuant/BatchMax/ReadVariableOp2n
5quant_dense_20/LastValueQuant/BatchMin/ReadVariableOp5quant_dense_20/LastValueQuant/BatchMin/ReadVariableOp2
Dquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpDquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2
Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12
Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Fquant_dense_20/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22
Aquant_dense_20/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAquant_dense_20/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2|
<quant_dense_20/MovingAvgQuantize/AssignMaxEma/ReadVariableOp<quant_dense_20/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2
Aquant_dense_20/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAquant_dense_20/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2|
<quant_dense_20/MovingAvgQuantize/AssignMinEma/ReadVariableOp<quant_dense_20/MovingAvgQuantize/AssignMinEma/ReadVariableOp2
Gquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpGquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Iquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Iquant_dense_20/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12l
4quantize_layer_3/AllValuesQuantize/AssignMaxAllValue4quantize_layer_3/AllValuesQuantize/AssignMaxAllValue2l
4quantize_layer_3/AllValuesQuantize/AssignMinAllValue4quantize_layer_3/AllValuesQuantize/AssignMinAllValue2
Iquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpIquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2
Kquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Kquantize_layer_3/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12v
9quantize_layer_3/AllValuesQuantize/Maximum/ReadVariableOp9quantize_layer_3/AllValuesQuantize/Maximum/ReadVariableOp2v
9quantize_layer_3/AllValuesQuantize/Minimum/ReadVariableOp9quantize_layer_3/AllValuesQuantize/Minimum/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
N
Ø
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_309983

inputsA
/lastvaluequant_batchmin_readvariableop_resource:xT/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:T@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1e
LastValueQuant/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:xT*
dtype0
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/Const:output:0*
T0*
_output_shapes
: g
LastValueQuant/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:xT*
dtype0
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/Const_1:output:0*
T0*
_output_shapes
: ]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿{
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: |
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0¥
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes

:xT*
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype0¶
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:xT*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTh
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       x
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: j
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       z
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTÝ
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿx: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
Í
g
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_309769

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ðQ
	
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_308082

inputsI
/lastvaluequant_batchmin_readvariableop_resource:3
%lastvaluequant_assignminlast_resource:3
%lastvaluequant_assignmaxlast_resource:-
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0~
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0~
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0·
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0Â
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype0Â
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype0ð
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(·
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             x
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: r
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             z
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Î
-__inference_sequential_4_layer_call_fn_308910

inputs
unknown: 
	unknown_0: #
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	x

unknown_18: 

unknown_19: 

unknown_20:x

unknown_21: 

unknown_22: 

unknown_23:xT

unknown_24: 

unknown_25: 

unknown_26:T

unknown_27: 

unknown_28: 

unknown_29:T


unknown_30: 

unknown_31: 

unknown_32:


unknown_33: 

unknown_34: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

"*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_308430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
k
O__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_310097

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
g
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_307965

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
Î
-__inference_sequential_4_layer_call_fn_308833

inputs
unknown: 
	unknown_0: #
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	x

unknown_18: 

unknown_19: 

unknown_20:x

unknown_21: 

unknown_22: 

unknown_23:xT

unknown_24: 

unknown_25: 

unknown_26:T

unknown_27: 

unknown_28: 

unknown_29:T


unknown_30: 

unknown_31: 

unknown_32:


unknown_33: 

unknown_34: 
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_307624o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô*
º
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_309753

inputs@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
p
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             v
MovingAvgQuantize/BatchMinMinAvgPool:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: r
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             x
MovingAvgQuantize/BatchMaxMaxAvgPool:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsAvgPool:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
Ö
-__inference_sequential_4_layer_call_fn_307699
conv2d_5_input
unknown: 
	unknown_0: #
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	x

unknown_18: 

unknown_19: 

unknown_20:x

unknown_21: 

unknown_22: 

unknown_23:xT

unknown_24: 

unknown_25: 

unknown_26:T

unknown_27: 

unknown_28: 

unknown_29:T


unknown_30: 

unknown_31: 

unknown_32:


unknown_33: 

unknown_34: 
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_307624o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv2d_5_input
	

/__inference_quant_conv2d_5_layer_call_fn_309454

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_307429w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À 
Ü
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_309830

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	xJ
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:xK
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1µ
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	x*
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0·
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	x*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
NoOpNoOp^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
øy
¯
__inference__traced_save_310319
file_prefixD
@savev2_quantize_layer_3_quantize_layer_3_min_read_readvariableopD
@savev2_quantize_layer_3_quantize_layer_3_max_read_readvariableop>
:savev2_quantize_layer_3_optimizer_step_read_readvariableop<
8savev2_quant_conv2d_5_optimizer_step_read_readvariableop8
4savev2_quant_conv2d_5_kernel_min_read_readvariableop8
4savev2_quant_conv2d_5_kernel_max_read_readvariableopA
=savev2_quant_conv2d_5_post_activation_min_read_readvariableopA
=savev2_quant_conv2d_5_post_activation_max_read_readvariableopG
Csavev2_quant_average_pooling2d_5_optimizer_step_read_readvariableopC
?savev2_quant_average_pooling2d_5_output_min_read_readvariableopC
?savev2_quant_average_pooling2d_5_output_max_read_readvariableop<
8savev2_quant_conv2d_6_optimizer_step_read_readvariableop8
4savev2_quant_conv2d_6_kernel_min_read_readvariableop8
4savev2_quant_conv2d_6_kernel_max_read_readvariableopA
=savev2_quant_conv2d_6_post_activation_min_read_readvariableopA
=savev2_quant_conv2d_6_post_activation_max_read_readvariableopG
Csavev2_quant_average_pooling2d_6_optimizer_step_read_readvariableopC
?savev2_quant_average_pooling2d_6_output_min_read_readvariableopC
?savev2_quant_average_pooling2d_6_output_max_read_readvariableop=
9savev2_quant_flatten_4_optimizer_step_read_readvariableop<
8savev2_quant_dense_18_optimizer_step_read_readvariableop8
4savev2_quant_dense_18_kernel_min_read_readvariableop8
4savev2_quant_dense_18_kernel_max_read_readvariableopA
=savev2_quant_dense_18_post_activation_min_read_readvariableopA
=savev2_quant_dense_18_post_activation_max_read_readvariableop<
8savev2_quant_dense_19_optimizer_step_read_readvariableop8
4savev2_quant_dense_19_kernel_min_read_readvariableop8
4savev2_quant_dense_19_kernel_max_read_readvariableopA
=savev2_quant_dense_19_post_activation_min_read_readvariableopA
=savev2_quant_dense_19_post_activation_max_read_readvariableop<
8savev2_quant_dense_20_optimizer_step_read_readvariableop8
4savev2_quant_dense_20_kernel_min_read_readvariableop8
4savev2_quant_dense_20_kernel_max_read_readvariableop@
<savev2_quant_dense_20_pre_activation_min_read_readvariableop@
<savev2_quant_dense_20_pre_activation_max_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_sgd_conv2d_5_kernel_momentum_read_readvariableop9
5savev2_sgd_conv2d_5_bias_momentum_read_readvariableop;
7savev2_sgd_conv2d_6_kernel_momentum_read_readvariableop9
5savev2_sgd_conv2d_6_bias_momentum_read_readvariableop;
7savev2_sgd_dense_18_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_18_bias_momentum_read_readvariableop;
7savev2_sgd_dense_19_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_19_bias_momentum_read_readvariableop;
7savev2_sgd_dense_20_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_20_bias_momentum_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: î
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*
valueB@BDlayer_with_weights-0/quantize_layer_3_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-0/quantize_layer_3_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/output_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/output_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/output_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/output_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-6/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-6/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-6/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-7/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-7/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-7/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-8/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-8/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-8/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-8/pre_activation_min/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-8/pre_activation_max/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/14/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/24/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/25/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/31/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/32/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/38/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/39/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHð
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*
valueB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¶
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0@savev2_quantize_layer_3_quantize_layer_3_min_read_readvariableop@savev2_quantize_layer_3_quantize_layer_3_max_read_readvariableop:savev2_quantize_layer_3_optimizer_step_read_readvariableop8savev2_quant_conv2d_5_optimizer_step_read_readvariableop4savev2_quant_conv2d_5_kernel_min_read_readvariableop4savev2_quant_conv2d_5_kernel_max_read_readvariableop=savev2_quant_conv2d_5_post_activation_min_read_readvariableop=savev2_quant_conv2d_5_post_activation_max_read_readvariableopCsavev2_quant_average_pooling2d_5_optimizer_step_read_readvariableop?savev2_quant_average_pooling2d_5_output_min_read_readvariableop?savev2_quant_average_pooling2d_5_output_max_read_readvariableop8savev2_quant_conv2d_6_optimizer_step_read_readvariableop4savev2_quant_conv2d_6_kernel_min_read_readvariableop4savev2_quant_conv2d_6_kernel_max_read_readvariableop=savev2_quant_conv2d_6_post_activation_min_read_readvariableop=savev2_quant_conv2d_6_post_activation_max_read_readvariableopCsavev2_quant_average_pooling2d_6_optimizer_step_read_readvariableop?savev2_quant_average_pooling2d_6_output_min_read_readvariableop?savev2_quant_average_pooling2d_6_output_max_read_readvariableop9savev2_quant_flatten_4_optimizer_step_read_readvariableop8savev2_quant_dense_18_optimizer_step_read_readvariableop4savev2_quant_dense_18_kernel_min_read_readvariableop4savev2_quant_dense_18_kernel_max_read_readvariableop=savev2_quant_dense_18_post_activation_min_read_readvariableop=savev2_quant_dense_18_post_activation_max_read_readvariableop8savev2_quant_dense_19_optimizer_step_read_readvariableop4savev2_quant_dense_19_kernel_min_read_readvariableop4savev2_quant_dense_19_kernel_max_read_readvariableop=savev2_quant_dense_19_post_activation_min_read_readvariableop=savev2_quant_dense_19_post_activation_max_read_readvariableop8savev2_quant_dense_20_optimizer_step_read_readvariableop4savev2_quant_dense_20_kernel_min_read_readvariableop4savev2_quant_dense_20_kernel_max_read_readvariableop<savev2_quant_dense_20_pre_activation_min_read_readvariableop<savev2_quant_dense_20_pre_activation_max_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_sgd_conv2d_5_kernel_momentum_read_readvariableop5savev2_sgd_conv2d_5_bias_momentum_read_readvariableop7savev2_sgd_conv2d_6_kernel_momentum_read_readvariableop5savev2_sgd_conv2d_6_bias_momentum_read_readvariableop7savev2_sgd_dense_18_kernel_momentum_read_readvariableop5savev2_sgd_dense_18_bias_momentum_read_readvariableop7savev2_sgd_dense_19_kernel_momentum_read_readvariableop5savev2_sgd_dense_19_bias_momentum_read_readvariableop7savev2_sgd_dense_20_kernel_momentum_read_readvariableop5savev2_sgd_dense_20_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *N
dtypesD
B2@	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Á
_input_shapes¯
¬: : : : : ::: : : : : : ::: : : : : : : : : : : : : : : : : : : : : : : : : :::::	x:x:xT:T:T
:
: : : : :::::	x:x:xT:T:T
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::%,!

_output_shapes
:	x: -

_output_shapes
:x:$. 

_output_shapes

:xT: /

_output_shapes
:T:$0 

_output_shapes

:T
: 1

_output_shapes
:
:2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :,6(
&
_output_shapes
:: 7

_output_shapes
::,8(
&
_output_shapes
:: 9

_output_shapes
::%:!

_output_shapes
:	x: ;

_output_shapes
:x:$< 

_output_shapes

:xT: =

_output_shapes
:T:$> 

_output_shapes

:T
: ?

_output_shapes
:
:@

_output_shapes
: 
Þ
ð
/__inference_quant_dense_20_layer_call_fn_310000

inputs
unknown:T

	unknown_0: 
	unknown_1: 
	unknown_2:

	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_307609o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿT: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
 
_user_specified_nameinputs
» 
Û
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_307574

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:xTJ
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:TK
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1´
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:xT*
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0°
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype0¶
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:xT*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿTP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
NoOpNoOp^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿx: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
ðQ
	
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_309699

inputsI
/lastvaluequant_batchmin_readvariableop_resource:3
%lastvaluequant_assignminlast_resource:3
%lastvaluequant_assignmaxlast_resource:-
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0~
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0~
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0·
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0Â
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype0Â
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype0ð
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(·
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             x
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: r
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             z
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
ñ
/__inference_quant_dense_18_layer_call_fn_309809

inputs
unknown:	x
	unknown_0: 
	unknown_1: 
	unknown_2:x
	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_307936o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
P
4__inference_average_pooling2d_6_layer_call_fn_310102

inputs
identityÝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_307383
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ÿ
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_307402

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1²
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
ñ
/__inference_quant_dense_18_layer_call_fn_309792

inputs
unknown:	x
	unknown_0: 
	unknown_1: 
	unknown_2:x
	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_307539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
P
4__inference_average_pooling2d_5_layer_call_fn_310092

inputs
identityÝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_307371
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ðQ
	
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_309541

inputsI
/lastvaluequant_batchmin_readvariableop_resource:3
%lastvaluequant_assignminlast_resource:3
%lastvaluequant_assignmaxlast_resource:-
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0~
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0~
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0·
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:*
dtype0Â
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype0Â
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype0ð
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(·
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             x
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: r
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             z
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ#
§
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_307480

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:-
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity¢BiasAdd/ReadVariableOp¢?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1¢ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ð
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:*
dtype0È
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype0È
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype0ð
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:*
narrow_range(·
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype0¶
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
NoOpNoOp^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

:__inference_quant_average_pooling2d_5_layer_call_fn_309550

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *^
fYRW
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_307453w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
L
0__inference_quant_flatten_4_layer_call_fn_309758

inputs
identity·
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_307516a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
N
Ù
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_309879

inputsB
/lastvaluequant_batchmin_readvariableop_resource:	x/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:x@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢LastValueQuant/AssignMaxLast¢LastValueQuant/AssignMinLast¢&LastValueQuant/BatchMax/ReadVariableOp¢&LastValueQuant/BatchMin/ReadVariableOp¢5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1¢7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1e
LastValueQuant/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes
:	x*
dtype0
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/Const:output:0*
T0*
_output_shapes
: g
LastValueQuant/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes
:	x*
dtype0
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/Const_1:output:0*
T0*
_output_shapes
: ]
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: Y
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿{
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: |
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype0
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype0¦
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*
_output_shapes
:	x*
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype0´
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype0·
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	x*
narrow_range(|
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxh
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       x
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: j
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       z
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÝ
NoOpNoOp^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
g
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_307516

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
ð
/__inference_quant_dense_19_layer_call_fn_309913

inputs
unknown:xT
	unknown_0: 
	unknown_1: 
	unknown_2:T
	unknown_3: 
	unknown_4: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_307852o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿx: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
ô*
º
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_308006

inputs@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity¢2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMaxEma/ReadVariableOp¢2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp¢-MovingAvgQuantize/AssignMinEma/ReadVariableOp¢8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp¢:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
p
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             v
MovingAvgQuantize/BatchMinMinAvgPool:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: r
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             x
MovingAvgQuantize/BatchMaxMaxAvgPool:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: `
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: i
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype0i
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype0 
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: ¡
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: ü
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype0Ü
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype0Þ
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype0
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsAvgPool:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 2h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ç
serving_default³
Q
conv2d_5_input?
 serving_default_conv2d_5_input:0ÿÿÿÿÿÿÿÿÿB
quant_dense_200
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:ÛÃ
Å
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential

quantize_layer_3_min
quantize_layer_3_max
quantizer_vars
optimizer_step
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Û
	layer
optimizer_step
_weight_vars
 
kernel_min
!
kernel_max
"_quantize_activations
#post_activation_min
$post_activation_max
%_output_quantizers
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
Å
	,layer
-optimizer_step
._weight_vars
/_quantize_activations
0_output_quantizers
1
output_min
2
output_max
3_output_quantizer_vars
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
Û
	:layer
;optimizer_step
<_weight_vars
=
kernel_min
>
kernel_max
?_quantize_activations
@post_activation_min
Apost_activation_max
B_output_quantizers
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
Å
	Ilayer
Joptimizer_step
K_weight_vars
L_quantize_activations
M_output_quantizers
N
output_min
O
output_max
P_output_quantizer_vars
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer

	Wlayer
Xoptimizer_step
Y_weight_vars
Z_quantize_activations
[_output_quantizers
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
Û
	blayer
coptimizer_step
d_weight_vars
e
kernel_min
f
kernel_max
g_quantize_activations
hpost_activation_min
ipost_activation_max
j_output_quantizers
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
Û
	qlayer
roptimizer_step
s_weight_vars
t
kernel_min
u
kernel_max
v_quantize_activations
wpost_activation_min
xpost_activation_max
y_output_quantizers
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
è

layer
optimizer_step
_weight_vars

kernel_min

kernel_max
_quantize_activations
pre_activation_min
pre_activation_max
_output_quantizers
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer

	iter

decay
learning_rate
momentummomentum½momentum¾momentum¿momentumÀmomentumÁmomentumÂmomentumÃmomentumÄmomentumÅmomentumÆ"
	optimizer

0
1
2
3
4
5
 6
!7
#8
$9
-10
111
212
13
14
;15
=16
>17
@18
A19
J20
N21
O22
X23
24
25
c26
e27
f28
h29
i30
31
32
r33
t34
u35
w36
x37
38
39
40
41
42
43
44"
trackable_list_wrapper
p
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_4_layer_call_fn_307699
-__inference_sequential_4_layer_call_fn_308833
-__inference_sequential_4_layer_call_fn_308910
-__inference_sequential_4_layer_call_fn_308582À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_4_layer_call_and_return_conditional_losses_309018
H__inference_sequential_4_layer_call_and_return_conditional_losses_309310
H__inference_sequential_4_layer_call_and_return_conditional_losses_308667
H__inference_sequential_4_layer_call_and_return_conditional_losses_308752À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÓBÐ
!__inference__wrapped_model_307362conv2d_5_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
-
¢serving_default"
signature_map
-:+ 2%quantize_layer_3/quantize_layer_3_min
-:+ 2%quantize_layer_3/quantize_layer_3_max
:
min_var
max_var"
trackable_dict_wrapper
':% 2quantize_layer_3/optimizer_step
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 2
1__inference_quantize_layer_3_layer_call_fn_309398
1__inference_quantize_layer_3_layer_call_fn_309407´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_309416
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_309437´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ã
kernel
	bias
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses"
_tf_keras_layer
%:# 2quant_conv2d_5/optimizer_step
(
®0"
trackable_list_wrapper
%:#2quant_conv2d_5/kernel_min
%:#2quant_conv2d_5/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_5/post_activation_min
*:( 2"quant_conv2d_5/post_activation_max
 "
trackable_list_wrapper
S
0
1
2
 3
!4
#5
$6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
¢2
/__inference_quant_conv2d_5_layer_call_fn_309454
/__inference_quant_conv2d_5_layer_call_fn_309471º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_309492
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_309541º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
«
´	variables
µtrainable_variables
¶regularization_losses
·	keras_api
¸__call__
+¹&call_and_return_all_conditional_losses"
_tf_keras_layer
0:. 2(quant_average_pooling2d_5/optimizer_step
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
,:* 2$quant_average_pooling2d_5/output_min
,:* 2$quant_average_pooling2d_5/output_max
:
1min_var
2max_var"
trackable_dict_wrapper
5
-0
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
¸2µ
:__inference_quant_average_pooling2d_5_layer_call_fn_309550
:__inference_quant_average_pooling2d_5_layer_call_fn_309559º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_309569
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_309595º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ã
kernel
	bias
¿	variables
Àtrainable_variables
Áregularization_losses
Â	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"
_tf_keras_layer
%:# 2quant_conv2d_6/optimizer_step
(
Å0"
trackable_list_wrapper
%:#2quant_conv2d_6/kernel_min
%:#2quant_conv2d_6/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_6/post_activation_min
*:( 2"quant_conv2d_6/post_activation_max
 "
trackable_list_wrapper
S
0
1
;2
=3
>4
@5
A6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
¢2
/__inference_quant_conv2d_6_layer_call_fn_309612
/__inference_quant_conv2d_6_layer_call_fn_309629º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_309650
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_309699º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
«
Ë	variables
Ìtrainable_variables
Íregularization_losses
Î	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"
_tf_keras_layer
0:. 2(quant_average_pooling2d_6/optimizer_step
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
,:* 2$quant_average_pooling2d_6/output_min
,:* 2$quant_average_pooling2d_6/output_max
:
Nmin_var
Omax_var"
trackable_dict_wrapper
5
J0
N1
O2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
¸2µ
:__inference_quant_average_pooling2d_6_layer_call_fn_309708
:__inference_quant_average_pooling2d_6_layer_call_fn_309717º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_309727
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_309753º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
«
Ö	variables
×trainable_variables
Øregularization_losses
Ù	keras_api
Ú__call__
+Û&call_and_return_all_conditional_losses"
_tf_keras_layer
&:$ 2quant_flatten_4/optimizer_step
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
X0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ünon_trainable_variables
Ýlayers
Þmetrics
 ßlayer_regularization_losses
àlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
¤2¡
0__inference_quant_flatten_4_layer_call_fn_309758
0__inference_quant_flatten_4_layer_call_fn_309763º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ú2×
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_309769
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_309775º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ã
kernel
	bias
á	variables
âtrainable_variables
ãregularization_losses
ä	keras_api
å__call__
+æ&call_and_return_all_conditional_losses"
_tf_keras_layer
%:# 2quant_dense_18/optimizer_step
(
ç0"
trackable_list_wrapper
!: 2quant_dense_18/kernel_min
!: 2quant_dense_18/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_dense_18/post_activation_min
*:( 2"quant_dense_18/post_activation_max
 "
trackable_list_wrapper
S
0
1
c2
e3
f4
h5
i6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
¢2
/__inference_quant_dense_18_layer_call_fn_309792
/__inference_quant_dense_18_layer_call_fn_309809º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_309830
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_309879º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ã
kernel
	bias
í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses"
_tf_keras_layer
%:# 2quant_dense_19/optimizer_step
(
ó0"
trackable_list_wrapper
!: 2quant_dense_19/kernel_min
!: 2quant_dense_19/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_dense_19/post_activation_min
*:( 2"quant_dense_19/post_activation_max
 "
trackable_list_wrapper
S
0
1
r2
t3
u4
w5
x6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ônon_trainable_variables
õlayers
ömetrics
 ÷layer_regularization_losses
ølayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
¢2
/__inference_quant_dense_19_layer_call_fn_309896
/__inference_quant_dense_19_layer_call_fn_309913º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_309934
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_309983º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ã
kernel
	bias
ù	variables
útrainable_variables
ûregularization_losses
ü	keras_api
ý__call__
+þ&call_and_return_all_conditional_losses"
_tf_keras_layer
%:# 2quant_dense_20/optimizer_step
(
ÿ0"
trackable_list_wrapper
!: 2quant_dense_20/kernel_min
!: 2quant_dense_20/kernel_max
 "
trackable_list_wrapper
):' 2!quant_dense_20/pre_activation_min
):' 2!quant_dense_20/pre_activation_max
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¢2
/__inference_quant_dense_20_layer_call_fn_310000
/__inference_quant_dense_20_layer_call_fn_310017º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_310038
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_310087º
±²­
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
):'2conv2d_5/kernel
:2conv2d_5/bias
):'2conv2d_6/kernel
:2conv2d_6/bias
": 	x2dense_18/kernel
:x2dense_18/bias
!:xT2dense_19/kernel
:T2dense_19/bias
!:T
2dense_20/kernel
:
2dense_20/bias
³
0
1
2
3
 4
!5
#6
$7
-8
19
210
;11
=12
>13
@14
A15
J16
N17
O18
X19
c20
e21
f22
h23
i24
r25
t26
u27
w28
x29
30
31
32
33
34"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÒBÏ
$__inference_signature_wrapper_309389conv2d_5_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
1
0
2"
trackable_tuple_wrapper
C
0
 1
!2
#3
$4"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
´	variables
µtrainable_variables
¶regularization_losses
¸__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses"
_generic_user_object
Þ2Û
4__inference_average_pooling2d_5_layer_call_fn_310092¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ù2ö
O__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_310097¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
-0
11
22"
trackable_list_wrapper
'
,0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¿	variables
Àtrainable_variables
Áregularization_losses
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
1
0
2"
trackable_tuple_wrapper
C
;0
=1
>2
@3
A4"
trackable_list_wrapper
'
:0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ë	variables
Ìtrainable_variables
Íregularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
Þ2Û
4__inference_average_pooling2d_6_layer_call_fn_310102¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ù2ö
O__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_310107¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
J0
N1
O2"
trackable_list_wrapper
'
I0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
Ö	variables
×trainable_variables
Øregularization_losses
Ú__call__
+Û&call_and_return_all_conditional_losses
'Û"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
X0"
trackable_list_wrapper
'
W0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
á	variables
âtrainable_variables
ãregularization_losses
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
1
0
§2"
trackable_tuple_wrapper
C
c0
e1
f2
h3
i4"
trackable_list_wrapper
'
b0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
1
0
­2"
trackable_tuple_wrapper
C
r0
t1
u2
w3
x4"
trackable_list_wrapper
'
q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
®non_trainable_variables
¯layers
°metrics
 ±layer_regularization_losses
²layer_metrics
ù	variables
útrainable_variables
ûregularization_losses
ý__call__
+þ&call_and_return_all_conditional_losses
'þ"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
1
0
³2"
trackable_tuple_wrapper
H
0
1
2
3
4"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

´total

µcount
¶	variables
·	keras_api"
_tf_keras_metric
c

¸total

¹count
º
_fn_kwargs
»	variables
¼	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:
 min_var
!max_var"
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:
=min_var
>max_var"
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:
emin_var
fmax_var"
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:
tmin_var
umax_var"
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
min_var
max_var"
trackable_dict_wrapper
:  (2total
:  (2count
0
´0
µ1"
trackable_list_wrapper
.
¶	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
¸0
¹1"
trackable_list_wrapper
.
»	variables"
_generic_user_object
4:22SGD/conv2d_5/kernel/momentum
&:$2SGD/conv2d_5/bias/momentum
4:22SGD/conv2d_6/kernel/momentum
&:$2SGD/conv2d_6/bias/momentum
-:+	x2SGD/dense_18/kernel/momentum
&:$x2SGD/dense_18/bias/momentum
,:*xT2SGD/dense_19/kernel/momentum
&:$T2SGD/dense_19/bias/momentum
,:*T
2SGD/dense_20/kernel/momentum
&:$
2SGD/dense_20/bias/momentumÜ
!__inference__wrapped_model_307362¶2 !#$12=>@ANOefhituwx?¢<
5¢2
0-
conv2d_5_inputÿÿÿÿÿÿÿÿÿ
ª "?ª<
:
quant_dense_20(%
quant_dense_20ÿÿÿÿÿÿÿÿÿ
ò
O__inference_average_pooling2d_5_layer_call_and_return_conditional_losses_310097R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ê
4__inference_average_pooling2d_5_layer_call_fn_310092R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿò
O__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_310107R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ê
4__inference_average_pooling2d_6_layer_call_fn_310102R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_309569p12;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 É
U__inference_quant_average_pooling2d_5_layer_call_and_return_conditional_losses_309595p12;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 ¡
:__inference_quant_average_pooling2d_5_layer_call_fn_309550c12;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿ¡
:__inference_quant_average_pooling2d_5_layer_call_fn_309559c12;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿÉ
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_309727pNO;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 É
U__inference_quant_average_pooling2d_6_layer_call_and_return_conditional_losses_309753pNO;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 ¡
:__inference_quant_average_pooling2d_6_layer_call_fn_309708cNO;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿ¡
:__inference_quant_average_pooling2d_6_layer_call_fn_309717cNO;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿÄ
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_309492v !#$;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 Ä
J__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_309541v !#$;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
/__inference_quant_conv2d_5_layer_call_fn_309454i !#$;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿ
/__inference_quant_conv2d_5_layer_call_fn_309471i !#$;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿÄ
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_309650v=>@A;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 Ä
J__inference_quant_conv2d_6_layer_call_and_return_conditional_losses_309699v=>@A;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
/__inference_quant_conv2d_6_layer_call_fn_309612i=>@A;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿ
/__inference_quant_conv2d_6_layer_call_fn_309629i=>@A;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿµ
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_309830gefhi4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿx
 µ
J__inference_quant_dense_18_layer_call_and_return_conditional_losses_309879gefhi4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿx
 
/__inference_quant_dense_18_layer_call_fn_309792Zefhi4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿx
/__inference_quant_dense_18_layer_call_fn_309809Zefhi4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿx´
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_309934ftuwx3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿx
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿT
 ´
J__inference_quant_dense_19_layer_call_and_return_conditional_losses_309983ftuwx3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿx
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿT
 
/__inference_quant_dense_19_layer_call_fn_309896Ytuwx3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿx
p 
ª "ÿÿÿÿÿÿÿÿÿT
/__inference_quant_dense_19_layer_call_fn_309913Ytuwx3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿx
p
ª "ÿÿÿÿÿÿÿÿÿT¸
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_310038j3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿT
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¸
J__inference_quant_dense_20_layer_call_and_return_conditional_losses_310087j3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿT
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
/__inference_quant_dense_20_layer_call_fn_310000]3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿT
p 
ª "ÿÿÿÿÿÿÿÿÿ

/__inference_quant_dense_20_layer_call_fn_310017]3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿT
p
ª "ÿÿÿÿÿÿÿÿÿ
´
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_309769e;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ´
K__inference_quant_flatten_4_layer_call_and_return_conditional_losses_309775e;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_quant_flatten_4_layer_call_fn_309758X;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_quant_flatten_4_layer_call_fn_309763X;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÀ
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_309416p;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 À
L__inference_quantize_layer_3_layer_call_and_return_conditional_losses_309437p;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
1__inference_quantize_layer_3_layer_call_fn_309398c;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿ
1__inference_quantize_layer_3_layer_call_fn_309407c;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿñ
H__inference_sequential_4_layer_call_and_return_conditional_losses_308667¤2 !#$12=>@ANOefhituwxG¢D
=¢:
0-
conv2d_5_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ñ
H__inference_sequential_4_layer_call_and_return_conditional_losses_308752¤2 !#$12=>@ANOefhituwxG¢D
=¢:
0-
conv2d_5_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 é
H__inference_sequential_4_layer_call_and_return_conditional_losses_3090182 !#$12=>@ANOefhituwx?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 é
H__inference_sequential_4_layer_call_and_return_conditional_losses_3093102 !#$12=>@ANOefhituwx?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 É
-__inference_sequential_4_layer_call_fn_3076992 !#$12=>@ANOefhituwxG¢D
=¢:
0-
conv2d_5_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
É
-__inference_sequential_4_layer_call_fn_3085822 !#$12=>@ANOefhituwxG¢D
=¢:
0-
conv2d_5_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
Á
-__inference_sequential_4_layer_call_fn_3088332 !#$12=>@ANOefhituwx?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
Á
-__inference_sequential_4_layer_call_fn_3089102 !#$12=>@ANOefhituwx?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
ñ
$__inference_signature_wrapper_309389È2 !#$12=>@ANOefhituwxQ¢N
¢ 
GªD
B
conv2d_5_input0-
conv2d_5_inputÿÿÿÿÿÿÿÿÿ"?ª<
:
quant_dense_20(%
quant_dense_20ÿÿÿÿÿÿÿÿÿ

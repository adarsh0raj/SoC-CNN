ā
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
|
first/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		@*
shared_namefirst/kernel
u
 first/kernel/Read/ReadVariableOpReadVariableOpfirst/kernel*&
_output_shapes
:		@*
dtype0
l

first/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
first/bias
e
first/bias/Read/ReadVariableOpReadVariableOp
first/bias*
_output_shapes
:@*
dtype0
~
second/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *
shared_namesecond/kernel
w
!second/kernel/Read/ReadVariableOpReadVariableOpsecond/kernel*&
_output_shapes
:@ *
dtype0
n
second/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namesecond/bias
g
second/bias/Read/ReadVariableOpReadVariableOpsecond/bias*
_output_shapes
: *
dtype0
z
last/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelast/kernel
s
last/kernel/Read/ReadVariableOpReadVariableOplast/kernel*&
_output_shapes
: *
dtype0
j
	last/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	last/bias
c
last/bias/Read/ReadVariableOpReadVariableOp	last/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
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
?
Adam/first/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		@*$
shared_nameAdam/first/kernel/m
?
'Adam/first/kernel/m/Read/ReadVariableOpReadVariableOpAdam/first/kernel/m*&
_output_shapes
:		@*
dtype0
z
Adam/first/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/first/bias/m
s
%Adam/first/bias/m/Read/ReadVariableOpReadVariableOpAdam/first/bias/m*
_output_shapes
:@*
dtype0
?
Adam/second/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *%
shared_nameAdam/second/kernel/m
?
(Adam/second/kernel/m/Read/ReadVariableOpReadVariableOpAdam/second/kernel/m*&
_output_shapes
:@ *
dtype0
|
Adam/second/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/second/bias/m
u
&Adam/second/bias/m/Read/ReadVariableOpReadVariableOpAdam/second/bias/m*
_output_shapes
: *
dtype0
?
Adam/last/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/last/kernel/m
?
&Adam/last/kernel/m/Read/ReadVariableOpReadVariableOpAdam/last/kernel/m*&
_output_shapes
: *
dtype0
x
Adam/last/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/last/bias/m
q
$Adam/last/bias/m/Read/ReadVariableOpReadVariableOpAdam/last/bias/m*
_output_shapes
:*
dtype0
?
Adam/first/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		@*$
shared_nameAdam/first/kernel/v
?
'Adam/first/kernel/v/Read/ReadVariableOpReadVariableOpAdam/first/kernel/v*&
_output_shapes
:		@*
dtype0
z
Adam/first/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/first/bias/v
s
%Adam/first/bias/v/Read/ReadVariableOpReadVariableOpAdam/first/bias/v*
_output_shapes
:@*
dtype0
?
Adam/second/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *%
shared_nameAdam/second/kernel/v
?
(Adam/second/kernel/v/Read/ReadVariableOpReadVariableOpAdam/second/kernel/v*&
_output_shapes
:@ *
dtype0
|
Adam/second/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/second/bias/v
u
&Adam/second/bias/v/Read/ReadVariableOpReadVariableOpAdam/second/bias/v*
_output_shapes
: *
dtype0
?
Adam/last/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/last/kernel/v
?
&Adam/last/kernel/v/Read/ReadVariableOpReadVariableOpAdam/last/kernel/v*&
_output_shapes
: *
dtype0
x
Adam/last/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/last/bias/v
q
$Adam/last/bias/v/Read/ReadVariableOpReadVariableOpAdam/last/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?$
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?$
value?$B?$ B?$
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
h


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK
*

0
1
2
3
4
5
*

0
1
2
3
4
5
 
?

!layers
trainable_variables
"metrics
#layer_regularization_losses
$layer_metrics
	variables
%non_trainable_variables
regularization_losses
 
XV
VARIABLE_VALUEfirst/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
first/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1


0
1
 
?

&layers
'layer_regularization_losses
(metrics
trainable_variables
)layer_metrics
	variables
*non_trainable_variables
regularization_losses
YW
VARIABLE_VALUEsecond/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEsecond/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

+layers
,layer_regularization_losses
-metrics
trainable_variables
.layer_metrics
	variables
/non_trainable_variables
regularization_losses
WU
VARIABLE_VALUElast/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	last/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

0layers
1layer_regularization_losses
2metrics
trainable_variables
3layer_metrics
	variables
4non_trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
2

50
61
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	7total
	8count
9	variables
:	keras_api
D
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

70
81

9	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1

>	variables
{y
VARIABLE_VALUEAdam/first/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/first/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/second/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/second/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/last/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/last/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/first/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/first/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/second/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/second/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/last/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/last/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_first_inputPlaceholder*/
_output_shapes
:?????????22*
dtype0*$
shape:?????????22
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_first_inputfirst/kernel
first/biassecond/kernelsecond/biaslast/kernel	last/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_135623
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename first/kernel/Read/ReadVariableOpfirst/bias/Read/ReadVariableOp!second/kernel/Read/ReadVariableOpsecond/bias/Read/ReadVariableOplast/kernel/Read/ReadVariableOplast/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/first/kernel/m/Read/ReadVariableOp%Adam/first/bias/m/Read/ReadVariableOp(Adam/second/kernel/m/Read/ReadVariableOp&Adam/second/bias/m/Read/ReadVariableOp&Adam/last/kernel/m/Read/ReadVariableOp$Adam/last/bias/m/Read/ReadVariableOp'Adam/first/kernel/v/Read/ReadVariableOp%Adam/first/bias/v/Read/ReadVariableOp(Adam/second/kernel/v/Read/ReadVariableOp&Adam/second/bias/v/Read/ReadVariableOp&Adam/last/kernel/v/Read/ReadVariableOp$Adam/last/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_135871
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefirst/kernel
first/biassecond/kernelsecond/biaslast/kernel	last/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/first/kernel/mAdam/first/bias/mAdam/second/kernel/mAdam/second/bias/mAdam/last/kernel/mAdam/last/bias/mAdam/first/kernel/vAdam/first/bias/vAdam/second/kernel/vAdam/second/bias/vAdam/last/kernel/vAdam/last/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_135962??
?t
?
"__inference__traced_restore_135962
file_prefix7
assignvariableop_first_kernel:		@+
assignvariableop_1_first_bias:@:
 assignvariableop_2_second_kernel:@ ,
assignvariableop_3_second_bias: 8
assignvariableop_4_last_kernel: *
assignvariableop_5_last_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: A
'assignvariableop_15_adam_first_kernel_m:		@3
%assignvariableop_16_adam_first_bias_m:@B
(assignvariableop_17_adam_second_kernel_m:@ 4
&assignvariableop_18_adam_second_bias_m: @
&assignvariableop_19_adam_last_kernel_m: 2
$assignvariableop_20_adam_last_bias_m:A
'assignvariableop_21_adam_first_kernel_v:		@3
%assignvariableop_22_adam_first_bias_v:@B
(assignvariableop_23_adam_second_kernel_v:@ 4
&assignvariableop_24_adam_second_bias_v: @
&assignvariableop_25_adam_last_kernel_v: 2
$assignvariableop_26_adam_last_bias_v:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_first_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_first_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_second_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_second_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_last_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_last_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_first_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_adam_first_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_second_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_second_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_last_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp$assignvariableop_20_adam_last_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_first_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_first_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_second_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_second_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_last_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp$assignvariableop_26_adam_last_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_135673

inputs>
$first_conv2d_readvariableop_resource:		@3
%first_biasadd_readvariableop_resource:@?
%second_conv2d_readvariableop_resource:@ 4
&second_biasadd_readvariableop_resource: =
#last_conv2d_readvariableop_resource: 2
$last_biasadd_readvariableop_resource:
identity??first/BiasAdd/ReadVariableOp?first/Conv2D/ReadVariableOp?last/BiasAdd/ReadVariableOp?last/Conv2D/ReadVariableOp?second/BiasAdd/ReadVariableOp?second/Conv2D/ReadVariableOp?
first/Conv2D/ReadVariableOpReadVariableOp$first_conv2d_readvariableop_resource*&
_output_shapes
:		@*
dtype02
first/Conv2D/ReadVariableOp?
first/Conv2DConv2Dinputs#first/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@*
paddingVALID*
strides
2
first/Conv2D?
first/BiasAdd/ReadVariableOpReadVariableOp%first_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
first/BiasAdd/ReadVariableOp?
first/BiasAddBiasAddfirst/Conv2D:output:0$first/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@2
first/BiasAddr

first/ReluRelufirst/BiasAdd:output:0*
T0*/
_output_shapes
:?????????**@2

first/Relu?
second/Conv2D/ReadVariableOpReadVariableOp%second_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
second/Conv2D/ReadVariableOp?
second/Conv2DConv2Dfirst/Relu:activations:0$second/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** *
paddingVALID*
strides
2
second/Conv2D?
second/BiasAdd/ReadVariableOpReadVariableOp&second_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
second/BiasAdd/ReadVariableOp?
second/BiasAddBiasAddsecond/Conv2D:output:0%second/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** 2
second/BiasAddu
second/ReluRelusecond/BiasAdd:output:0*
T0*/
_output_shapes
:?????????** 2
second/Relu?
last/Conv2D/ReadVariableOpReadVariableOp#last_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
last/Conv2D/ReadVariableOp?
last/Conv2DConv2Dsecond/Relu:activations:0"last/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&*
paddingVALID*
strides
2
last/Conv2D?
last/BiasAdd/ReadVariableOpReadVariableOp$last_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
last/BiasAdd/ReadVariableOp?
last/BiasAddBiasAddlast/Conv2D:output:0#last/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&2
last/BiasAddo
	last/ReluRelulast/BiasAdd:output:0*
T0*/
_output_shapes
:?????????&&2
	last/Relu?
IdentityIdentitylast/Relu:activations:0^first/BiasAdd/ReadVariableOp^first/Conv2D/ReadVariableOp^last/BiasAdd/ReadVariableOp^last/Conv2D/ReadVariableOp^second/BiasAdd/ReadVariableOp^second/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 2<
first/BiasAdd/ReadVariableOpfirst/BiasAdd/ReadVariableOp2:
first/Conv2D/ReadVariableOpfirst/Conv2D/ReadVariableOp2:
last/BiasAdd/ReadVariableOplast/BiasAdd/ReadVariableOp28
last/Conv2D/ReadVariableOplast/Conv2D/ReadVariableOp2>
second/BiasAdd/ReadVariableOpsecond/BiasAdd/ReadVariableOp2<
second/Conv2D/ReadVariableOpsecond/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????22
 
_user_specified_nameinputs
?
?
'__inference_second_layer_call_fn_135747

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????** *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_second_layer_call_and_return_conditional_losses_1354212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????** 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????**@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????**@
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_135623
first_input!
unknown:		@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfirst_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_1353862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????22
%
_user_specified_namefirst_input
?
?
@__inference_last_layer_call_and_return_conditional_losses_135758

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????&&2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????** : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????** 
 
_user_specified_nameinputs
?
?
@__inference_last_layer_call_and_return_conditional_losses_135438

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????&&2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????** : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????** 
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_135560
first_input!
unknown:		@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfirst_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1355282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????22
%
_user_specified_namefirst_input
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_135445

inputs&
first_135405:		@
first_135407:@'
second_135422:@ 
second_135424: %
last_135439: 
last_135441:
identity??first/StatefulPartitionedCall?last/StatefulPartitionedCall?second/StatefulPartitionedCall?
first/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_135405first_135407*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????**@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_first_layer_call_and_return_conditional_losses_1354042
first/StatefulPartitionedCall?
second/StatefulPartitionedCallStatefulPartitionedCall&first/StatefulPartitionedCall:output:0second_135422second_135424*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????** *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_second_layer_call_and_return_conditional_losses_1354212 
second/StatefulPartitionedCall?
last/StatefulPartitionedCallStatefulPartitionedCall'second/StatefulPartitionedCall:output:0last_135439last_135441*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_last_layer_call_and_return_conditional_losses_1354382
last/StatefulPartitionedCall?
IdentityIdentity%last/StatefulPartitionedCall:output:0^first/StatefulPartitionedCall^last/StatefulPartitionedCall^second/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 2>
first/StatefulPartitionedCallfirst/StatefulPartitionedCall2<
last/StatefulPartitionedCalllast/StatefulPartitionedCall2@
second/StatefulPartitionedCallsecond/StatefulPartitionedCall:W S
/
_output_shapes
:?????????22
 
_user_specified_nameinputs
?%
?
!__inference__wrapped_model_135386
first_inputI
/sequential_first_conv2d_readvariableop_resource:		@>
0sequential_first_biasadd_readvariableop_resource:@J
0sequential_second_conv2d_readvariableop_resource:@ ?
1sequential_second_biasadd_readvariableop_resource: H
.sequential_last_conv2d_readvariableop_resource: =
/sequential_last_biasadd_readvariableop_resource:
identity??'sequential/first/BiasAdd/ReadVariableOp?&sequential/first/Conv2D/ReadVariableOp?&sequential/last/BiasAdd/ReadVariableOp?%sequential/last/Conv2D/ReadVariableOp?(sequential/second/BiasAdd/ReadVariableOp?'sequential/second/Conv2D/ReadVariableOp?
&sequential/first/Conv2D/ReadVariableOpReadVariableOp/sequential_first_conv2d_readvariableop_resource*&
_output_shapes
:		@*
dtype02(
&sequential/first/Conv2D/ReadVariableOp?
sequential/first/Conv2DConv2Dfirst_input.sequential/first/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@*
paddingVALID*
strides
2
sequential/first/Conv2D?
'sequential/first/BiasAdd/ReadVariableOpReadVariableOp0sequential_first_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'sequential/first/BiasAdd/ReadVariableOp?
sequential/first/BiasAddBiasAdd sequential/first/Conv2D:output:0/sequential/first/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@2
sequential/first/BiasAdd?
sequential/first/ReluRelu!sequential/first/BiasAdd:output:0*
T0*/
_output_shapes
:?????????**@2
sequential/first/Relu?
'sequential/second/Conv2D/ReadVariableOpReadVariableOp0sequential_second_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02)
'sequential/second/Conv2D/ReadVariableOp?
sequential/second/Conv2DConv2D#sequential/first/Relu:activations:0/sequential/second/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** *
paddingVALID*
strides
2
sequential/second/Conv2D?
(sequential/second/BiasAdd/ReadVariableOpReadVariableOp1sequential_second_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/second/BiasAdd/ReadVariableOp?
sequential/second/BiasAddBiasAdd!sequential/second/Conv2D:output:00sequential/second/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** 2
sequential/second/BiasAdd?
sequential/second/ReluRelu"sequential/second/BiasAdd:output:0*
T0*/
_output_shapes
:?????????** 2
sequential/second/Relu?
%sequential/last/Conv2D/ReadVariableOpReadVariableOp.sequential_last_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02'
%sequential/last/Conv2D/ReadVariableOp?
sequential/last/Conv2DConv2D$sequential/second/Relu:activations:0-sequential/last/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&*
paddingVALID*
strides
2
sequential/last/Conv2D?
&sequential/last/BiasAdd/ReadVariableOpReadVariableOp/sequential_last_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&sequential/last/BiasAdd/ReadVariableOp?
sequential/last/BiasAddBiasAddsequential/last/Conv2D:output:0.sequential/last/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&2
sequential/last/BiasAdd?
sequential/last/ReluRelu sequential/last/BiasAdd:output:0*
T0*/
_output_shapes
:?????????&&2
sequential/last/Relu?
IdentityIdentity"sequential/last/Relu:activations:0(^sequential/first/BiasAdd/ReadVariableOp'^sequential/first/Conv2D/ReadVariableOp'^sequential/last/BiasAdd/ReadVariableOp&^sequential/last/Conv2D/ReadVariableOp)^sequential/second/BiasAdd/ReadVariableOp(^sequential/second/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 2R
'sequential/first/BiasAdd/ReadVariableOp'sequential/first/BiasAdd/ReadVariableOp2P
&sequential/first/Conv2D/ReadVariableOp&sequential/first/Conv2D/ReadVariableOp2P
&sequential/last/BiasAdd/ReadVariableOp&sequential/last/BiasAdd/ReadVariableOp2N
%sequential/last/Conv2D/ReadVariableOp%sequential/last/Conv2D/ReadVariableOp2T
(sequential/second/BiasAdd/ReadVariableOp(sequential/second/BiasAdd/ReadVariableOp2R
'sequential/second/Conv2D/ReadVariableOp'sequential/second/Conv2D/ReadVariableOp:\ X
/
_output_shapes
:?????????22
%
_user_specified_namefirst_input
?	
?
+__inference_sequential_layer_call_fn_135690

inputs!
unknown:		@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1354452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????22
 
_user_specified_nameinputs
?
?
A__inference_first_layer_call_and_return_conditional_losses_135718

inputs8
conv2d_readvariableop_resource:		@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????**@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????**@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????22
 
_user_specified_nameinputs
?
?
A__inference_first_layer_call_and_return_conditional_losses_135404

inputs8
conv2d_readvariableop_resource:		@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????**@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????**@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????22
 
_user_specified_nameinputs
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_135648

inputs>
$first_conv2d_readvariableop_resource:		@3
%first_biasadd_readvariableop_resource:@?
%second_conv2d_readvariableop_resource:@ 4
&second_biasadd_readvariableop_resource: =
#last_conv2d_readvariableop_resource: 2
$last_biasadd_readvariableop_resource:
identity??first/BiasAdd/ReadVariableOp?first/Conv2D/ReadVariableOp?last/BiasAdd/ReadVariableOp?last/Conv2D/ReadVariableOp?second/BiasAdd/ReadVariableOp?second/Conv2D/ReadVariableOp?
first/Conv2D/ReadVariableOpReadVariableOp$first_conv2d_readvariableop_resource*&
_output_shapes
:		@*
dtype02
first/Conv2D/ReadVariableOp?
first/Conv2DConv2Dinputs#first/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@*
paddingVALID*
strides
2
first/Conv2D?
first/BiasAdd/ReadVariableOpReadVariableOp%first_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
first/BiasAdd/ReadVariableOp?
first/BiasAddBiasAddfirst/Conv2D:output:0$first/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????**@2
first/BiasAddr

first/ReluRelufirst/BiasAdd:output:0*
T0*/
_output_shapes
:?????????**@2

first/Relu?
second/Conv2D/ReadVariableOpReadVariableOp%second_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
second/Conv2D/ReadVariableOp?
second/Conv2DConv2Dfirst/Relu:activations:0$second/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** *
paddingVALID*
strides
2
second/Conv2D?
second/BiasAdd/ReadVariableOpReadVariableOp&second_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
second/BiasAdd/ReadVariableOp?
second/BiasAddBiasAddsecond/Conv2D:output:0%second/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** 2
second/BiasAddu
second/ReluRelusecond/BiasAdd:output:0*
T0*/
_output_shapes
:?????????** 2
second/Relu?
last/Conv2D/ReadVariableOpReadVariableOp#last_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
last/Conv2D/ReadVariableOp?
last/Conv2DConv2Dsecond/Relu:activations:0"last/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&*
paddingVALID*
strides
2
last/Conv2D?
last/BiasAdd/ReadVariableOpReadVariableOp$last_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
last/BiasAdd/ReadVariableOp?
last/BiasAddBiasAddlast/Conv2D:output:0#last/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&&2
last/BiasAddo
	last/ReluRelulast/BiasAdd:output:0*
T0*/
_output_shapes
:?????????&&2
	last/Relu?
IdentityIdentitylast/Relu:activations:0^first/BiasAdd/ReadVariableOp^first/Conv2D/ReadVariableOp^last/BiasAdd/ReadVariableOp^last/Conv2D/ReadVariableOp^second/BiasAdd/ReadVariableOp^second/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 2<
first/BiasAdd/ReadVariableOpfirst/BiasAdd/ReadVariableOp2:
first/Conv2D/ReadVariableOpfirst/Conv2D/ReadVariableOp2:
last/BiasAdd/ReadVariableOplast/BiasAdd/ReadVariableOp28
last/Conv2D/ReadVariableOplast/Conv2D/ReadVariableOp2>
second/BiasAdd/ReadVariableOpsecond/BiasAdd/ReadVariableOp2<
second/Conv2D/ReadVariableOpsecond/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????22
 
_user_specified_nameinputs
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_135598
first_input&
first_135582:		@
first_135584:@'
second_135587:@ 
second_135589: %
last_135592: 
last_135594:
identity??first/StatefulPartitionedCall?last/StatefulPartitionedCall?second/StatefulPartitionedCall?
first/StatefulPartitionedCallStatefulPartitionedCallfirst_inputfirst_135582first_135584*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????**@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_first_layer_call_and_return_conditional_losses_1354042
first/StatefulPartitionedCall?
second/StatefulPartitionedCallStatefulPartitionedCall&first/StatefulPartitionedCall:output:0second_135587second_135589*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????** *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_second_layer_call_and_return_conditional_losses_1354212 
second/StatefulPartitionedCall?
last/StatefulPartitionedCallStatefulPartitionedCall'second/StatefulPartitionedCall:output:0last_135592last_135594*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_last_layer_call_and_return_conditional_losses_1354382
last/StatefulPartitionedCall?
IdentityIdentity%last/StatefulPartitionedCall:output:0^first/StatefulPartitionedCall^last/StatefulPartitionedCall^second/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 2>
first/StatefulPartitionedCallfirst/StatefulPartitionedCall2<
last/StatefulPartitionedCalllast/StatefulPartitionedCall2@
second/StatefulPartitionedCallsecond/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????22
%
_user_specified_namefirst_input
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_135528

inputs&
first_135512:		@
first_135514:@'
second_135517:@ 
second_135519: %
last_135522: 
last_135524:
identity??first/StatefulPartitionedCall?last/StatefulPartitionedCall?second/StatefulPartitionedCall?
first/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_135512first_135514*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????**@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_first_layer_call_and_return_conditional_losses_1354042
first/StatefulPartitionedCall?
second/StatefulPartitionedCallStatefulPartitionedCall&first/StatefulPartitionedCall:output:0second_135517second_135519*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????** *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_second_layer_call_and_return_conditional_losses_1354212 
second/StatefulPartitionedCall?
last/StatefulPartitionedCallStatefulPartitionedCall'second/StatefulPartitionedCall:output:0last_135522last_135524*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_last_layer_call_and_return_conditional_losses_1354382
last/StatefulPartitionedCall?
IdentityIdentity%last/StatefulPartitionedCall:output:0^first/StatefulPartitionedCall^last/StatefulPartitionedCall^second/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 2>
first/StatefulPartitionedCallfirst/StatefulPartitionedCall2<
last/StatefulPartitionedCalllast/StatefulPartitionedCall2@
second/StatefulPartitionedCallsecond/StatefulPartitionedCall:W S
/
_output_shapes
:?????????22
 
_user_specified_nameinputs
?
?
&__inference_first_layer_call_fn_135727

inputs!
unknown:		@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????**@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_first_layer_call_and_return_conditional_losses_1354042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????**@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????22: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????22
 
_user_specified_nameinputs
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_135579
first_input&
first_135563:		@
first_135565:@'
second_135568:@ 
second_135570: %
last_135573: 
last_135575:
identity??first/StatefulPartitionedCall?last/StatefulPartitionedCall?second/StatefulPartitionedCall?
first/StatefulPartitionedCallStatefulPartitionedCallfirst_inputfirst_135563first_135565*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????**@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_first_layer_call_and_return_conditional_losses_1354042
first/StatefulPartitionedCall?
second/StatefulPartitionedCallStatefulPartitionedCall&first/StatefulPartitionedCall:output:0second_135568second_135570*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????** *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_second_layer_call_and_return_conditional_losses_1354212 
second/StatefulPartitionedCall?
last/StatefulPartitionedCallStatefulPartitionedCall'second/StatefulPartitionedCall:output:0last_135573last_135575*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_last_layer_call_and_return_conditional_losses_1354382
last/StatefulPartitionedCall?
IdentityIdentity%last/StatefulPartitionedCall:output:0^first/StatefulPartitionedCall^last/StatefulPartitionedCall^second/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 2>
first/StatefulPartitionedCallfirst/StatefulPartitionedCall2<
last/StatefulPartitionedCalllast/StatefulPartitionedCall2@
second/StatefulPartitionedCallsecond/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????22
%
_user_specified_namefirst_input
?
?
B__inference_second_layer_call_and_return_conditional_losses_135738

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????** 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????** 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????**@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????**@
 
_user_specified_nameinputs
?
?
%__inference_last_layer_call_fn_135767

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_last_layer_call_and_return_conditional_losses_1354382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????** : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????** 
 
_user_specified_nameinputs
?=
?

__inference__traced_save_135871
file_prefix+
'savev2_first_kernel_read_readvariableop)
%savev2_first_bias_read_readvariableop,
(savev2_second_kernel_read_readvariableop*
&savev2_second_bias_read_readvariableop*
&savev2_last_kernel_read_readvariableop(
$savev2_last_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_first_kernel_m_read_readvariableop0
,savev2_adam_first_bias_m_read_readvariableop3
/savev2_adam_second_kernel_m_read_readvariableop1
-savev2_adam_second_bias_m_read_readvariableop1
-savev2_adam_last_kernel_m_read_readvariableop/
+savev2_adam_last_bias_m_read_readvariableop2
.savev2_adam_first_kernel_v_read_readvariableop0
,savev2_adam_first_bias_v_read_readvariableop3
/savev2_adam_second_kernel_v_read_readvariableop1
-savev2_adam_second_bias_v_read_readvariableop1
-savev2_adam_last_kernel_v_read_readvariableop/
+savev2_adam_last_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_first_kernel_read_readvariableop%savev2_first_bias_read_readvariableop(savev2_second_kernel_read_readvariableop&savev2_second_bias_read_readvariableop&savev2_last_kernel_read_readvariableop$savev2_last_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_first_kernel_m_read_readvariableop,savev2_adam_first_bias_m_read_readvariableop/savev2_adam_second_kernel_m_read_readvariableop-savev2_adam_second_bias_m_read_readvariableop-savev2_adam_last_kernel_m_read_readvariableop+savev2_adam_last_bias_m_read_readvariableop.savev2_adam_first_kernel_v_read_readvariableop,savev2_adam_first_bias_v_read_readvariableop/savev2_adam_second_kernel_v_read_readvariableop-savev2_adam_second_bias_v_read_readvariableop-savev2_adam_last_kernel_v_read_readvariableop+savev2_adam_last_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :		@:@:@ : : :: : : : : : : : : :		@:@:@ : : ::		@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:		@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:		@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
:		@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::

_output_shapes
: 
?
?
B__inference_second_layer_call_and_return_conditional_losses_135421

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????** 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????** 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????** 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????**@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????**@
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_135707

inputs!
unknown:		@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1355282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????22
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_135460
first_input!
unknown:		@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfirst_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1354452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&&2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????22
%
_user_specified_namefirst_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
first_input<
serving_default_first_input:0?????????22@
last8
StatefulPartitionedCall:0?????????&&tensorflow/serving/predict:??
?3
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
*L&call_and_return_all_conditional_losses
M_default_save_signature
N__call__"?0
_tf_keras_sequential?0{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "first_input"}}, {"class_name": "Conv2D", "config": {"name": "first", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "second", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "last", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 50, 50, 1]}, "float32", "first_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "first_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "first", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Conv2D", "config": {"name": "second", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Conv2D", "config": {"name": "last", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}, "shared_object_id": 12}, "metrics": [[{"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 13}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"?

_tf_keras_layer?
{"name": "first", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "first", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 1]}}
?


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*Q&call_and_return_all_conditional_losses
R__call__"?	
_tf_keras_layer?	{"name": "second", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "second", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 42, 42, 64]}}
?


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*S&call_and_return_all_conditional_losses
T__call__"?	
_tf_keras_layer?	{"name": "last", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "last", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 42, 42, 32]}}
?
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK"
	optimizer
J

0
1
2
3
4
5"
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?

!layers
trainable_variables
"metrics
#layer_regularization_losses
$layer_metrics
	variables
%non_trainable_variables
regularization_losses
N__call__
M_default_save_signature
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
,
Userving_default"
signature_map
&:$		@2first/kernel
:@2
first/bias
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

&layers
'layer_regularization_losses
(metrics
trainable_variables
)layer_metrics
	variables
*non_trainable_variables
regularization_losses
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
':%@ 2second/kernel
: 2second/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

+layers
,layer_regularization_losses
-metrics
trainable_variables
.layer_metrics
	variables
/non_trainable_variables
regularization_losses
R__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
%:# 2last/kernel
:2	last/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

0layers
1layer_regularization_losses
2metrics
trainable_variables
3layer_metrics
	variables
4non_trainable_variables
regularization_losses
T__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
0
1
2"
trackable_list_wrapper
.
50
61"
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
?
	7total
	8count
9	variables
:	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 16}
?
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 13}
:  (2total
:  (2count
.
70
81"
trackable_list_wrapper
-
9	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
;0
<1"
trackable_list_wrapper
-
>	variables"
_generic_user_object
+:)		@2Adam/first/kernel/m
:@2Adam/first/bias/m
,:*@ 2Adam/second/kernel/m
: 2Adam/second/bias/m
*:( 2Adam/last/kernel/m
:2Adam/last/bias/m
+:)		@2Adam/first/kernel/v
:@2Adam/first/bias/v
,:*@ 2Adam/second/kernel/v
: 2Adam/second/bias/v
*:( 2Adam/last/kernel/v
:2Adam/last/bias/v
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_135648
F__inference_sequential_layer_call_and_return_conditional_losses_135673
F__inference_sequential_layer_call_and_return_conditional_losses_135579
F__inference_sequential_layer_call_and_return_conditional_losses_135598?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_135386?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *2?/
-?*
first_input?????????22
?2?
+__inference_sequential_layer_call_fn_135460
+__inference_sequential_layer_call_fn_135690
+__inference_sequential_layer_call_fn_135707
+__inference_sequential_layer_call_fn_135560?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_first_layer_call_and_return_conditional_losses_135718?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_first_layer_call_fn_135727?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_second_layer_call_and_return_conditional_losses_135738?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_second_layer_call_fn_135747?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_last_layer_call_and_return_conditional_losses_135758?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_last_layer_call_fn_135767?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_135623first_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_135386{
<?9
2?/
-?*
first_input?????????22
? "3?0
.
last&?#
last?????????&&?
A__inference_first_layer_call_and_return_conditional_losses_135718l
7?4
-?*
(?%
inputs?????????22
? "-?*
#? 
0?????????**@
? ?
&__inference_first_layer_call_fn_135727_
7?4
-?*
(?%
inputs?????????22
? " ??????????**@?
@__inference_last_layer_call_and_return_conditional_losses_135758l7?4
-?*
(?%
inputs?????????** 
? "-?*
#? 
0?????????&&
? ?
%__inference_last_layer_call_fn_135767_7?4
-?*
(?%
inputs?????????** 
? " ??????????&&?
B__inference_second_layer_call_and_return_conditional_losses_135738l7?4
-?*
(?%
inputs?????????**@
? "-?*
#? 
0?????????** 
? ?
'__inference_second_layer_call_fn_135747_7?4
-?*
(?%
inputs?????????**@
? " ??????????** ?
F__inference_sequential_layer_call_and_return_conditional_losses_135579}
D?A
:?7
-?*
first_input?????????22
p 

 
? "-?*
#? 
0?????????&&
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_135598}
D?A
:?7
-?*
first_input?????????22
p

 
? "-?*
#? 
0?????????&&
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_135648x
??<
5?2
(?%
inputs?????????22
p 

 
? "-?*
#? 
0?????????&&
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_135673x
??<
5?2
(?%
inputs?????????22
p

 
? "-?*
#? 
0?????????&&
? ?
+__inference_sequential_layer_call_fn_135460p
D?A
:?7
-?*
first_input?????????22
p 

 
? " ??????????&&?
+__inference_sequential_layer_call_fn_135560p
D?A
:?7
-?*
first_input?????????22
p

 
? " ??????????&&?
+__inference_sequential_layer_call_fn_135690k
??<
5?2
(?%
inputs?????????22
p 

 
? " ??????????&&?
+__inference_sequential_layer_call_fn_135707k
??<
5?2
(?%
inputs?????????22
p

 
? " ??????????&&?
$__inference_signature_wrapper_135623?
K?H
? 
A?>
<
first_input-?*
first_input?????????22"3?0
.
last&?#
last?????????&&

C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
dtype0*
shared_name *
shape: *
	container 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@global_step
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
/
Add/yConst*
value	B :*
dtype0
,
AddAddglobal_step/readAdd/y*
T0
t
AssignAssignglobal_stepAdd*
T0*
use_locking(*
validate_shape(*
_class
loc:@global_step
5

batch_sizePlaceholder*
dtype0*
shape:
:
sequence_lengthPlaceholder*
dtype0*
shape:
;
masksPlaceholder*
dtype0*
shape:’’’’’’’’’
+
CastCastmasks*

DstT0*

SrcT0
M
#is_continuous_control/initial_valueConst*
value	B : *
dtype0
a
is_continuous_control
VariableV2*
dtype0*
shared_name *
shape: *
	container 
¾
is_continuous_control/AssignAssignis_continuous_control#is_continuous_control/initial_value*
T0*
use_locking(*
validate_shape(*(
_class
loc:@is_continuous_control
p
is_continuous_control/readIdentityis_continuous_control*
T0*(
_class
loc:@is_continuous_control
F
version_number/initial_valueConst*
value	B :*
dtype0
Z
version_number
VariableV2*
dtype0*
shared_name *
shape: *
	container 
¢
version_number/AssignAssignversion_numberversion_number/initial_value*
T0*
use_locking(*
validate_shape(*!
_class
loc:@version_number
[
version_number/readIdentityversion_number*
T0*!
_class
loc:@version_number
C
memory_size/initial_valueConst*
value	B : *
dtype0
W
memory_size
VariableV2*
dtype0*
shared_name *
shape: *
	container 

memory_size/AssignAssignmemory_sizememory_size/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@memory_size
R
memory_size/readIdentitymemory_size*
T0*
_class
loc:@memory_size
K
!action_output_shape/initial_valueConst*
value	B :*
dtype0
_
action_output_shape
VariableV2*
dtype0*
shared_name *
shape: *
	container 
¶
action_output_shape/AssignAssignaction_output_shape!action_output_shape/initial_value*
T0*
use_locking(*
validate_shape(*&
_class
loc:@action_output_shape
j
action_output_shape/readIdentityaction_output_shape*
T0*&
_class
loc:@action_output_shape
F
last_reward/initial_valueConst*
valueB
 *    *
dtype0
W
last_reward
VariableV2*
dtype0*
shared_name *
shape: *
	container 

last_reward/AssignAssignlast_rewardlast_reward/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@last_reward
R
last_reward/readIdentitylast_reward*
T0*
_class
loc:@last_reward
3

new_rewardPlaceholder*
dtype0*
shape: 
}
Assign_1Assignlast_reward
new_reward*
T0*
use_locking(*
validate_shape(*
_class
loc:@last_reward
M
vector_observationPlaceholder*
dtype0*
shape:’’’’’’’’’Ļ
~
.running_mean/Initializer/zeros/shape_as_tensorConst*
valueB:Ļ*
dtype0*
_class
loc:@running_mean
r
$running_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@running_mean
ø
running_mean/Initializer/zerosFill.running_mean/Initializer/zeros/shape_as_tensor$running_mean/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@running_mean
~
running_mean
VariableV2*
dtype0*
shared_name *
shape:Ļ*
	container *
_class
loc:@running_mean

running_mean/AssignAssignrunning_meanrunning_mean/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@running_mean
U
running_mean/readIdentityrunning_mean*
T0*
_class
loc:@running_mean

1running_variance/Initializer/ones/shape_as_tensorConst*
valueB:Ļ*
dtype0*#
_class
loc:@running_variance
y
'running_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*#
_class
loc:@running_variance
Å
!running_variance/Initializer/onesFill1running_variance/Initializer/ones/shape_as_tensor'running_variance/Initializer/ones/Const*
T0*

index_type0*#
_class
loc:@running_variance

running_variance
VariableV2*
dtype0*
shared_name *
shape:Ļ*
	container *#
_class
loc:@running_variance
­
running_variance/AssignAssignrunning_variance!running_variance/Initializer/ones*
T0*
use_locking(*
validate_shape(*#
_class
loc:@running_variance
a
running_variance/readIdentityrunning_variance*
T0*#
_class
loc:@running_variance
@
Mean/reduction_indicesConst*
value	B : *
dtype0
^
MeanMeanvector_observationMean/reduction_indices*
	keep_dims( *
T0*

Tidx0
,
subSubMeanrunning_mean/read*
T0
1
Add_1/yConst*
value	B :*
dtype0
0
Add_1Addglobal_step/readAdd_1/y*
T0
-
Cast_1CastAdd_1*

DstT0*

SrcT0
(
truedivRealDivsubCast_1*
T0
/
addAddrunning_mean/readtruediv*
T0
 
sub_1SubMeanadd*
T0
.
sub_2SubMeanrunning_mean/read*
T0
!
mulMulsub_1sub_2*
T0
1
add_1Addrunning_variance/readmul*
T0
x
Assign_2Assignrunning_meanadd*
T0*
use_locking(*
validate_shape(*
_class
loc:@running_mean

Assign_3Assignrunning_varianceadd_1*
T0*
use_locking(*
validate_shape(*#
_class
loc:@running_variance
<
sub_3Subvector_observationrunning_mean/read*
T0
8
Cast_2Castglobal_step/read*

DstT0*

SrcT0
4
add_2/yConst*
valueB
 *  ?*
dtype0
&
add_2AddCast_2add_2/y*
T0
;
	truediv_1RealDivrunning_variance/readadd_2*
T0
 
SqrtSqrt	truediv_1*
T0
*
	truediv_2RealDivsub_3Sqrt*
T0
G
normalized_state/Minimum/yConst*
valueB
 *   @*
dtype0
S
normalized_state/MinimumMinimum	truediv_2normalized_state/Minimum/y*
T0
?
normalized_state/yConst*
valueB
 *   Ą*
dtype0
R
normalized_stateMaximumnormalized_state/Minimumnormalized_state/y*
T0
„
?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shapeConst*
valueB"Ļ      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *L¢=*
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
ž
Imain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2J*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
seed÷,

=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
ł
9main_graph_0/hidden_0/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
£
main_graph_0/hidden_0/kernel
VariableV2*
dtype0*
shared_name *
shape:
Ļ*
	container */
_class%
#!loc:@main_graph_0/hidden_0/kernel
é
#main_graph_0/hidden_0/kernel/AssignAssignmain_graph_0/hidden_0/kernel9main_graph_0/hidden_0/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

!main_graph_0/hidden_0/kernel/readIdentitymain_graph_0/hidden_0/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias

2main_graph_0/hidden_0/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias
š
,main_graph_0/hidden_0/bias/Initializer/zerosFill<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_0/bias/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_0/bias
Ö
!main_graph_0/hidden_0/bias/AssignAssignmain_graph_0/hidden_0/bias,main_graph_0/hidden_0/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/bias/readIdentitymain_graph_0/hidden_0/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/MatMulMatMulnormalized_state!main_graph_0/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_0/hidden_0/BiasAddBiasAddmain_graph_0/hidden_0/MatMulmain_graph_0/hidden_0/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_0/SigmoidSigmoidmain_graph_0/hidden_0/BiasAdd*
T0
g
main_graph_0/hidden_0/MulMulmain_graph_0/hidden_0/BiasAddmain_graph_0/hidden_0/Sigmoid*
T0
„
?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *ŠdĪ=*
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
ž
Imain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2]*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
seed÷,

=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
ł
9main_graph_0/hidden_1/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
£
main_graph_0/hidden_1/kernel
VariableV2*
dtype0*
shared_name *
shape:
*
	container */
_class%
#!loc:@main_graph_0/hidden_1/kernel
é
#main_graph_0/hidden_1/kernel/AssignAssignmain_graph_0/hidden_1/kernel9main_graph_0/hidden_1/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

!main_graph_0/hidden_1/kernel/readIdentitymain_graph_0/hidden_1/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias

2main_graph_0/hidden_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias
š
,main_graph_0/hidden_1/bias/Initializer/zerosFill<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_1/bias/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_1/bias
Ö
!main_graph_0/hidden_1/bias/AssignAssignmain_graph_0/hidden_1/bias,main_graph_0/hidden_1/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/bias/readIdentitymain_graph_0/hidden_1/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/MatMulMatMulmain_graph_0/hidden_0/Mul!main_graph_0/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_0/hidden_1/BiasAddBiasAddmain_graph_0/hidden_1/MatMulmain_graph_0/hidden_1/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_1/SigmoidSigmoidmain_graph_0/hidden_1/BiasAdd*
T0
g
main_graph_0/hidden_1/MulMulmain_graph_0/hidden_1/BiasAddmain_graph_0/hidden_1/Sigmoid*
T0

/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel
|
.dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *s%<*
dtype0*
_class
loc:@dense/kernel
Ī
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2p*
_class
loc:@dense/kernel*
seed÷,
Ė
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
¹
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
dtype0*
shared_name *
shape:	*
	container *
_class
loc:@dense/kernel
©
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
s
dense/MatMulMatMulmain_graph_0/hidden_1/Muldense/kernel/read*
transpose_b( *
T0*
transpose_a( 

1dense_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel

0dense_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel

2dense_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *s%<*
dtype0*!
_class
loc:@dense_1/kernel
Ō
;dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_1/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2z*!
_class
loc:@dense_1/kernel*
seed÷,
Ó
/dense_1/kernel/Initializer/truncated_normal/mulMul;dense_1/kernel/Initializer/truncated_normal/TruncatedNormal2dense_1/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_1/kernel
Į
+dense_1/kernel/Initializer/truncated_normalAdd/dense_1/kernel/Initializer/truncated_normal/mul0dense_1/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_1/kernel
±
dense_1/kernel/AssignAssigndense_1/kernel+dense_1/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
w
dense_1/MatMulMatMulmain_graph_0/hidden_1/Muldense_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

1dense_2/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel

0dense_2/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel

2dense_2/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *s%<*
dtype0*!
_class
loc:@dense_2/kernel
Õ
;dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_2/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2*!
_class
loc:@dense_2/kernel*
seed÷,
Ó
/dense_2/kernel/Initializer/truncated_normal/mulMul;dense_2/kernel/Initializer/truncated_normal/TruncatedNormal2dense_2/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_2/kernel
Į
+dense_2/kernel/Initializer/truncated_normalAdd/dense_2/kernel/Initializer/truncated_normal/mul0dense_2/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_2/kernel
±
dense_2/kernel/AssignAssigndense_2/kernel+dense_2/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
w
dense_2/MatMulMatMulmain_graph_0/hidden_1/Muldense_2/kernel/read*
transpose_b( *
T0*
transpose_a( 
;
action_probs/axisConst*
value	B :*
dtype0
w
action_probsConcatV2dense/MatMuldense_1/MatMuldense_2/MatMulaction_probs/axis*
T0*
N*

Tidx0
F
action_masksPlaceholder*
dtype0*
shape:’’’’’’’’’
H
strided_slice/stackConst*
valueB"        *
dtype0
J
strided_slice/stack_1Const*
valueB"       *
dtype0
J
strided_slice/stack_2Const*
valueB"      *
dtype0
č
strided_sliceStridedSliceaction_probsstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
J
strided_slice_1/stackConst*
valueB"       *
dtype0
L
strided_slice_1/stack_1Const*
valueB"       *
dtype0
L
strided_slice_1/stack_2Const*
valueB"      *
dtype0
š
strided_slice_1StridedSliceaction_probsstrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
J
strided_slice_2/stackConst*
valueB"       *
dtype0
L
strided_slice_2/stack_1Const*
valueB"       *
dtype0
L
strided_slice_2/stack_2Const*
valueB"      *
dtype0
š
strided_slice_2StridedSliceaction_probsstrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
J
strided_slice_3/stackConst*
valueB"        *
dtype0
L
strided_slice_3/stack_1Const*
valueB"       *
dtype0
L
strided_slice_3/stack_2Const*
valueB"      *
dtype0
š
strided_slice_3StridedSliceaction_masksstrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
J
strided_slice_4/stackConst*
valueB"       *
dtype0
L
strided_slice_4/stack_1Const*
valueB"       *
dtype0
L
strided_slice_4/stack_2Const*
valueB"      *
dtype0
š
strided_slice_4StridedSliceaction_masksstrided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
J
strided_slice_5/stackConst*
valueB"       *
dtype0
L
strided_slice_5/stack_1Const*
valueB"       *
dtype0
L
strided_slice_5/stack_2Const*
valueB"      *
dtype0
š
strided_slice_5StridedSliceaction_masksstrided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
*
SoftmaxSoftmaxstrided_slice*
T0
4
add_3/yConst*
valueB
 *’ęŪ.*
dtype0
'
add_3AddSoftmaxadd_3/y*
T0
+
MulMuladd_3strided_slice_3*
T0
.
	Softmax_1Softmaxstrided_slice_1*
T0
4
add_4/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_4Add	Softmax_1add_4/y*
T0
-
Mul_1Muladd_4strided_slice_4*
T0
.
	Softmax_2Softmaxstrided_slice_2*
T0
4
add_5/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_5Add	Softmax_2add_5/y*
T0
-
Mul_2Muladd_5strided_slice_5*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
L
SumSumMulSum/reduction_indices*
	keep_dims(*
T0*

Tidx0
'
	truediv_3RealDivMulSum*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
R
Sum_1SumMul_1Sum_1/reduction_indices*
	keep_dims(*
T0*

Tidx0
+
	truediv_4RealDivMul_1Sum_1*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
R
Sum_2SumMul_2Sum_2/reduction_indices*
	keep_dims(*
T0*

Tidx0
+
	truediv_5RealDivMul_2Sum_2*
T0

LogLog	truediv_3*
T0
M
#multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial/MultinomialMultinomialLog#multinomial/Multinomial/num_samples*
T0*
seed2¼*
output_dtype0	*
seed÷,
 
Log_1Log	truediv_4*
T0
O
%multinomial_1/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_1/MultinomialMultinomialLog_1%multinomial_1/Multinomial/num_samples*
T0*
seed2æ*
output_dtype0	*
seed÷,
 
Log_2Log	truediv_5*
T0
O
%multinomial_2/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_2/MultinomialMultinomialLog_2%multinomial_2/Multinomial/num_samples*
T0*
seed2Ā*
output_dtype0	*
seed÷,
5
concat/axisConst*
value	B :*
dtype0

concatConcatV2multinomial/Multinomialmultinomial_1/Multinomialmultinomial_2/Multinomialconcat/axis*
T0	*
N*

Tidx0
4
add_6/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_6Add	truediv_3add_6/y*
T0

Log_3Logadd_6*
T0
4
add_7/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_7Add	truediv_4add_7/y*
T0

Log_4Logadd_7*
T0
4
add_8/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_8Add	truediv_5add_8/y*
T0

Log_5Logadd_8*
T0
7
concat_1/axisConst*
value	B :*
dtype0
V
concat_1ConcatV2Log_3Log_4Log_5concat_1/axis*
T0*
N*

Tidx0
%
IdentityIdentityconcat*
T0	
%
actionIdentityconcat_1*
T0

/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel
}
-dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *n×\¾*
dtype0*!
_class
loc:@dense_3/kernel
}
-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *n×\>*
dtype0*!
_class
loc:@dense_3/kernel
Ķ
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2Ö*!
_class
loc:@dense_3/kernel*
seed÷,
¾
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel
Č
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel
ŗ
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel

dense_3/kernel
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_3/kernel
Æ
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
}
.dense_3/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_3/bias
r
$dense_3/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_3/bias
ø
dense_3/bias/Initializer/zerosFill.dense_3/bias/Initializer/zeros/shape_as_tensor$dense_3/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_3/bias
}
dense_3/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_3/bias

dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias
U
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias
w
dense_3/MatMulMatMulmain_graph_0/hidden_1/Muldense_3/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC
4
value_estimateIdentitydense_3/BiasAdd*
T0
G
action_holderPlaceholder*
dtype0*
shape:’’’’’’’’’
J
strided_slice_6/stackConst*
valueB"        *
dtype0
L
strided_slice_6/stack_1Const*
valueB"       *
dtype0
L
strided_slice_6/stack_2Const*
valueB"      *
dtype0
ń
strided_slice_6StridedSliceaction_holderstrided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
Index0*
end_mask*
shrink_axis_mask*
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
=
one_hot/on_valueConst*
valueB
 *  ?*
dtype0
>
one_hot/off_valueConst*
valueB
 *    *
dtype0
7
one_hot/depthConst*
value	B :*
dtype0
~
one_hotOneHotstrided_slice_6one_hot/depthone_hot/on_valueone_hot/off_value*
axis’’’’’’’’’*
T0*
TI0
J
strided_slice_7/stackConst*
valueB"       *
dtype0
L
strided_slice_7/stack_1Const*
valueB"       *
dtype0
L
strided_slice_7/stack_2Const*
valueB"      *
dtype0
ń
strided_slice_7StridedSliceaction_holderstrided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
Index0*
end_mask*
shrink_axis_mask*
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
?
one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0
@
one_hot_1/off_valueConst*
valueB
 *    *
dtype0
9
one_hot_1/depthConst*
value	B :*
dtype0

	one_hot_1OneHotstrided_slice_7one_hot_1/depthone_hot_1/on_valueone_hot_1/off_value*
axis’’’’’’’’’*
T0*
TI0
J
strided_slice_8/stackConst*
valueB"       *
dtype0
L
strided_slice_8/stack_1Const*
valueB"       *
dtype0
L
strided_slice_8/stack_2Const*
valueB"      *
dtype0
ń
strided_slice_8StridedSliceaction_holderstrided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
Index0*
end_mask*
shrink_axis_mask*
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
?
one_hot_2/on_valueConst*
valueB
 *  ?*
dtype0
@
one_hot_2/off_valueConst*
valueB
 *    *
dtype0
9
one_hot_2/depthConst*
value	B :*
dtype0

	one_hot_2OneHotstrided_slice_8one_hot_2/depthone_hot_2/on_valueone_hot_2/off_value*
axis’’’’’’’’’*
T0*
TI0
7
concat_2/axisConst*
value	B :*
dtype0
`
concat_2ConcatV2one_hot	one_hot_1	one_hot_2concat_2/axis*
T0*
N*

Tidx0
/
StopGradientStopGradientconcat_2*
T0
K
old_probabilitiesPlaceholder*
dtype0*
shape:’’’’’’’’’
J
strided_slice_9/stackConst*
valueB"        *
dtype0
L
strided_slice_9/stack_1Const*
valueB"       *
dtype0
L
strided_slice_9/stack_2Const*
valueB"      *
dtype0
õ
strided_slice_9StridedSliceold_probabilitiesstrided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_10/stackConst*
valueB"       *
dtype0
M
strided_slice_10/stack_1Const*
valueB"       *
dtype0
M
strided_slice_10/stack_2Const*
valueB"      *
dtype0
ł
strided_slice_10StridedSliceold_probabilitiesstrided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_11/stackConst*
valueB"       *
dtype0
M
strided_slice_11/stack_1Const*
valueB"       *
dtype0
M
strided_slice_11/stack_2Const*
valueB"      *
dtype0
ł
strided_slice_11StridedSliceold_probabilitiesstrided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_12/stackConst*
valueB"        *
dtype0
M
strided_slice_12/stack_1Const*
valueB"       *
dtype0
M
strided_slice_12/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_12StridedSliceaction_masksstrided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_13/stackConst*
valueB"       *
dtype0
M
strided_slice_13/stack_1Const*
valueB"       *
dtype0
M
strided_slice_13/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_13StridedSliceaction_masksstrided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_14/stackConst*
valueB"       *
dtype0
M
strided_slice_14/stack_1Const*
valueB"       *
dtype0
M
strided_slice_14/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_14StridedSliceaction_masksstrided_slice_14/stackstrided_slice_14/stack_1strided_slice_14/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
.
	Softmax_3Softmaxstrided_slice_9*
T0
4
add_9/yConst*
valueB
 *’ęŪ.*
dtype0
)
add_9Add	Softmax_3add_9/y*
T0
.
Mul_3Muladd_9strided_slice_12*
T0
/
	Softmax_4Softmaxstrided_slice_10*
T0
5
add_10/yConst*
valueB
 *’ęŪ.*
dtype0
+
add_10Add	Softmax_4add_10/y*
T0
/
Mul_4Muladd_10strided_slice_13*
T0
/
	Softmax_5Softmaxstrided_slice_11*
T0
5
add_11/yConst*
valueB
 *’ęŪ.*
dtype0
+
add_11Add	Softmax_5add_11/y*
T0
/
Mul_5Muladd_11strided_slice_14*
T0
A
Sum_3/reduction_indicesConst*
value	B :*
dtype0
R
Sum_3SumMul_3Sum_3/reduction_indices*
	keep_dims(*
T0*

Tidx0
+
	truediv_6RealDivMul_3Sum_3*
T0
A
Sum_4/reduction_indicesConst*
value	B :*
dtype0
R
Sum_4SumMul_4Sum_4/reduction_indices*
	keep_dims(*
T0*

Tidx0
+
	truediv_7RealDivMul_4Sum_4*
T0
A
Sum_5/reduction_indicesConst*
value	B :*
dtype0
R
Sum_5SumMul_5Sum_5/reduction_indices*
	keep_dims(*
T0*

Tidx0
+
	truediv_8RealDivMul_5Sum_5*
T0
 
Log_6Log	truediv_6*
T0
O
%multinomial_3/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_3/MultinomialMultinomialLog_6%multinomial_3/Multinomial/num_samples*
T0*
seed2±*
output_dtype0	*
seed÷,
 
Log_7Log	truediv_7*
T0
O
%multinomial_4/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_4/MultinomialMultinomialLog_7%multinomial_4/Multinomial/num_samples*
T0*
seed2“*
output_dtype0	*
seed÷,
 
Log_8Log	truediv_8*
T0
O
%multinomial_5/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_5/MultinomialMultinomialLog_8%multinomial_5/Multinomial/num_samples*
T0*
seed2·*
output_dtype0	*
seed÷,
7
concat_3/axisConst*
value	B :*
dtype0

concat_3ConcatV2multinomial_3/Multinomialmultinomial_4/Multinomialmultinomial_5/Multinomialconcat_3/axis*
T0	*
N*

Tidx0
5
add_12/yConst*
valueB
 *’ęŪ.*
dtype0
+
add_12Add	truediv_6add_12/y*
T0

Log_9Logadd_12*
T0
5
add_13/yConst*
valueB
 *’ęŪ.*
dtype0
+
add_13Add	truediv_7add_13/y*
T0

Log_10Logadd_13*
T0
5
add_14/yConst*
valueB
 *’ęŪ.*
dtype0
+
add_14Add	truediv_8add_14/y*
T0

Log_11Logadd_14*
T0
7
concat_4/axisConst*
value	B :*
dtype0
X
concat_4ConcatV2Log_9Log_10Log_11concat_4/axis*
T0*
N*

Tidx0
K
strided_slice_15/stackConst*
valueB"        *
dtype0
M
strided_slice_15/stack_1Const*
valueB"       *
dtype0
M
strided_slice_15/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_15StridedSliceaction_probsstrided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
/
	Softmax_6Softmaxstrided_slice_15*
T0
K
strided_slice_16/stackConst*
valueB"        *
dtype0
M
strided_slice_16/stack_1Const*
valueB"       *
dtype0
M
strided_slice_16/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_16StridedSliceaction_probsstrided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
P
&softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0
[
'softmax_cross_entropy_with_logits/ShapeShapestrided_slice_16*
T0*
out_type0
R
(softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits/Shape_1Shapestrided_slice_16*
T0*
out_type0
Q
'softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0

%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
T0
z
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*

axis *
T0*
N
Z
,softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0
Ī
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0
h
1softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
W
-softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0
Ż
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*
T0*
N*

Tidx0

)softmax_cross_entropy_with_logits/ReshapeReshapestrided_slice_16(softmax_cross_entropy_with_logits/concat*
T0*
Tshape0
R
(softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0
V
)softmax_cross_entropy_with_logits/Shape_2Shape	Softmax_6*
T0*
out_type0
S
)softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0
~
/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0
Ō
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits/Reshape_1Reshape	Softmax_6*softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0
£
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*
T0
S
)softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0
]
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0
}
.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*

axis *
T0*
N
Ņ
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0

+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0
K
strided_slice_17/stackConst*
valueB"       *
dtype0
M
strided_slice_17/stack_1Const*
valueB"       *
dtype0
M
strided_slice_17/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_17StridedSliceaction_probsstrided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
/
	Softmax_7Softmaxstrided_slice_17*
T0
K
strided_slice_18/stackConst*
valueB"       *
dtype0
M
strided_slice_18/stack_1Const*
valueB"       *
dtype0
M
strided_slice_18/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_18StridedSliceaction_probsstrided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_1/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_1/ShapeShapestrided_slice_18*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_1/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_1/Shape_1Shapestrided_slice_18*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_1/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_1/SubSub*softmax_cross_entropy_with_logits_1/Rank_1)softmax_cross_entropy_with_logits_1/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_1/Slice/beginPack'softmax_cross_entropy_with_logits_1/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_1/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_1/SliceSlice+softmax_cross_entropy_with_logits_1/Shape_1/softmax_cross_entropy_with_logits_1/Slice/begin.softmax_cross_entropy_with_logits_1/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_1/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_1/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_1/concatConcatV23softmax_cross_entropy_with_logits_1/concat/values_0)softmax_cross_entropy_with_logits_1/Slice/softmax_cross_entropy_with_logits_1/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_1/ReshapeReshapestrided_slice_18*softmax_cross_entropy_with_logits_1/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_1/Rank_2Const*
value	B :*
dtype0
X
+softmax_cross_entropy_with_logits_1/Shape_2Shape	Softmax_7*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_1/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_1/Sub_1Sub*softmax_cross_entropy_with_logits_1/Rank_2+softmax_cross_entropy_with_logits_1/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_1/Slice_1/beginPack)softmax_cross_entropy_with_logits_1/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_1/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_1/Slice_1Slice+softmax_cross_entropy_with_logits_1/Shape_21softmax_cross_entropy_with_logits_1/Slice_1/begin0softmax_cross_entropy_with_logits_1/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_1/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_1/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_1/concat_1ConcatV25softmax_cross_entropy_with_logits_1/concat_1/values_0+softmax_cross_entropy_with_logits_1/Slice_11softmax_cross_entropy_with_logits_1/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_1/Reshape_1Reshape	Softmax_7,softmax_cross_entropy_with_logits_1/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_1SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_1/Reshape-softmax_cross_entropy_with_logits_1/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_1/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_1/Sub_2Sub(softmax_cross_entropy_with_logits_1/Rank+softmax_cross_entropy_with_logits_1/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_1/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_1/Slice_2/sizePack)softmax_cross_entropy_with_logits_1/Sub_2*

axis *
T0*
N
Ś
+softmax_cross_entropy_with_logits_1/Slice_2Slice)softmax_cross_entropy_with_logits_1/Shape1softmax_cross_entropy_with_logits_1/Slice_2/begin0softmax_cross_entropy_with_logits_1/Slice_2/size*
Index0*
T0
”
-softmax_cross_entropy_with_logits_1/Reshape_2Reshape#softmax_cross_entropy_with_logits_1+softmax_cross_entropy_with_logits_1/Slice_2*
T0*
Tshape0
K
strided_slice_19/stackConst*
valueB"       *
dtype0
M
strided_slice_19/stack_1Const*
valueB"       *
dtype0
M
strided_slice_19/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_19StridedSliceaction_probsstrided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
/
	Softmax_8Softmaxstrided_slice_19*
T0
K
strided_slice_20/stackConst*
valueB"       *
dtype0
M
strided_slice_20/stack_1Const*
valueB"       *
dtype0
M
strided_slice_20/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_20StridedSliceaction_probsstrided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_2/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_2/ShapeShapestrided_slice_20*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_2/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_2/Shape_1Shapestrided_slice_20*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_2/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_2/SubSub*softmax_cross_entropy_with_logits_2/Rank_1)softmax_cross_entropy_with_logits_2/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_2/Slice/beginPack'softmax_cross_entropy_with_logits_2/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_2/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_2/SliceSlice+softmax_cross_entropy_with_logits_2/Shape_1/softmax_cross_entropy_with_logits_2/Slice/begin.softmax_cross_entropy_with_logits_2/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_2/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_2/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_2/concatConcatV23softmax_cross_entropy_with_logits_2/concat/values_0)softmax_cross_entropy_with_logits_2/Slice/softmax_cross_entropy_with_logits_2/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_2/ReshapeReshapestrided_slice_20*softmax_cross_entropy_with_logits_2/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_2/Rank_2Const*
value	B :*
dtype0
X
+softmax_cross_entropy_with_logits_2/Shape_2Shape	Softmax_8*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_2/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_2/Sub_1Sub*softmax_cross_entropy_with_logits_2/Rank_2+softmax_cross_entropy_with_logits_2/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_2/Slice_1/beginPack)softmax_cross_entropy_with_logits_2/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_2/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_2/Slice_1Slice+softmax_cross_entropy_with_logits_2/Shape_21softmax_cross_entropy_with_logits_2/Slice_1/begin0softmax_cross_entropy_with_logits_2/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_2/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_2/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_2/concat_1ConcatV25softmax_cross_entropy_with_logits_2/concat_1/values_0+softmax_cross_entropy_with_logits_2/Slice_11softmax_cross_entropy_with_logits_2/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_2/Reshape_1Reshape	Softmax_8,softmax_cross_entropy_with_logits_2/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_2SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_2/Reshape-softmax_cross_entropy_with_logits_2/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_2/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_2/Sub_2Sub(softmax_cross_entropy_with_logits_2/Rank+softmax_cross_entropy_with_logits_2/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_2/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_2/Slice_2/sizePack)softmax_cross_entropy_with_logits_2/Sub_2*

axis *
T0*
N
Ś
+softmax_cross_entropy_with_logits_2/Slice_2Slice)softmax_cross_entropy_with_logits_2/Shape1softmax_cross_entropy_with_logits_2/Slice_2/begin0softmax_cross_entropy_with_logits_2/Slice_2/size*
Index0*
T0
”
-softmax_cross_entropy_with_logits_2/Reshape_2Reshape#softmax_cross_entropy_with_logits_2+softmax_cross_entropy_with_logits_2/Slice_2*
T0*
Tshape0
¶
stackPack+softmax_cross_entropy_with_logits/Reshape_2-softmax_cross_entropy_with_logits_1/Reshape_2-softmax_cross_entropy_with_logits_2/Reshape_2*

axis*
T0*
N
A
Sum_6/reduction_indicesConst*
value	B :*
dtype0
R
Sum_6SumstackSum_6/reduction_indices*
	keep_dims( *
T0*

Tidx0
K
strided_slice_21/stackConst*
valueB"        *
dtype0
M
strided_slice_21/stack_1Const*
valueB"       *
dtype0
M
strided_slice_21/stack_2Const*
valueB"      *
dtype0
š
strided_slice_21StridedSliceconcat_2strided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_22/stackConst*
valueB"        *
dtype0
M
strided_slice_22/stack_1Const*
valueB"       *
dtype0
M
strided_slice_22/stack_2Const*
valueB"      *
dtype0
š
strided_slice_22StridedSliceconcat_1strided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_3/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_3/ShapeShapestrided_slice_22*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_3/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_3/Shape_1Shapestrided_slice_22*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_3/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_3/SubSub*softmax_cross_entropy_with_logits_3/Rank_1)softmax_cross_entropy_with_logits_3/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_3/Slice/beginPack'softmax_cross_entropy_with_logits_3/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_3/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_3/SliceSlice+softmax_cross_entropy_with_logits_3/Shape_1/softmax_cross_entropy_with_logits_3/Slice/begin.softmax_cross_entropy_with_logits_3/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_3/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_3/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_3/concatConcatV23softmax_cross_entropy_with_logits_3/concat/values_0)softmax_cross_entropy_with_logits_3/Slice/softmax_cross_entropy_with_logits_3/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_3/ReshapeReshapestrided_slice_22*softmax_cross_entropy_with_logits_3/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_3/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_3/Shape_2Shapestrided_slice_21*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_3/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_3/Sub_1Sub*softmax_cross_entropy_with_logits_3/Rank_2+softmax_cross_entropy_with_logits_3/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_3/Slice_1/beginPack)softmax_cross_entropy_with_logits_3/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_3/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_3/Slice_1Slice+softmax_cross_entropy_with_logits_3/Shape_21softmax_cross_entropy_with_logits_3/Slice_1/begin0softmax_cross_entropy_with_logits_3/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_3/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_3/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_3/concat_1ConcatV25softmax_cross_entropy_with_logits_3/concat_1/values_0+softmax_cross_entropy_with_logits_3/Slice_11softmax_cross_entropy_with_logits_3/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_3/Reshape_1Reshapestrided_slice_21,softmax_cross_entropy_with_logits_3/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_3SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_3/Reshape-softmax_cross_entropy_with_logits_3/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_3/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_3/Sub_2Sub(softmax_cross_entropy_with_logits_3/Rank+softmax_cross_entropy_with_logits_3/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_3/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_3/Slice_2/sizePack)softmax_cross_entropy_with_logits_3/Sub_2*

axis *
T0*
N
Ś
+softmax_cross_entropy_with_logits_3/Slice_2Slice)softmax_cross_entropy_with_logits_3/Shape1softmax_cross_entropy_with_logits_3/Slice_2/begin0softmax_cross_entropy_with_logits_3/Slice_2/size*
Index0*
T0
”
-softmax_cross_entropy_with_logits_3/Reshape_2Reshape#softmax_cross_entropy_with_logits_3+softmax_cross_entropy_with_logits_3/Slice_2*
T0*
Tshape0
B
NegNeg-softmax_cross_entropy_with_logits_3/Reshape_2*
T0
K
strided_slice_23/stackConst*
valueB"       *
dtype0
M
strided_slice_23/stack_1Const*
valueB"       *
dtype0
M
strided_slice_23/stack_2Const*
valueB"      *
dtype0
š
strided_slice_23StridedSliceconcat_2strided_slice_23/stackstrided_slice_23/stack_1strided_slice_23/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_24/stackConst*
valueB"       *
dtype0
M
strided_slice_24/stack_1Const*
valueB"       *
dtype0
M
strided_slice_24/stack_2Const*
valueB"      *
dtype0
š
strided_slice_24StridedSliceconcat_1strided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_4/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_4/ShapeShapestrided_slice_24*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_4/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_4/Shape_1Shapestrided_slice_24*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_4/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_4/SubSub*softmax_cross_entropy_with_logits_4/Rank_1)softmax_cross_entropy_with_logits_4/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_4/Slice/beginPack'softmax_cross_entropy_with_logits_4/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_4/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_4/SliceSlice+softmax_cross_entropy_with_logits_4/Shape_1/softmax_cross_entropy_with_logits_4/Slice/begin.softmax_cross_entropy_with_logits_4/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_4/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_4/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_4/concatConcatV23softmax_cross_entropy_with_logits_4/concat/values_0)softmax_cross_entropy_with_logits_4/Slice/softmax_cross_entropy_with_logits_4/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_4/ReshapeReshapestrided_slice_24*softmax_cross_entropy_with_logits_4/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_4/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_4/Shape_2Shapestrided_slice_23*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_4/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_4/Sub_1Sub*softmax_cross_entropy_with_logits_4/Rank_2+softmax_cross_entropy_with_logits_4/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_4/Slice_1/beginPack)softmax_cross_entropy_with_logits_4/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_4/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_4/Slice_1Slice+softmax_cross_entropy_with_logits_4/Shape_21softmax_cross_entropy_with_logits_4/Slice_1/begin0softmax_cross_entropy_with_logits_4/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_4/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_4/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_4/concat_1ConcatV25softmax_cross_entropy_with_logits_4/concat_1/values_0+softmax_cross_entropy_with_logits_4/Slice_11softmax_cross_entropy_with_logits_4/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_4/Reshape_1Reshapestrided_slice_23,softmax_cross_entropy_with_logits_4/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_4SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_4/Reshape-softmax_cross_entropy_with_logits_4/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_4/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_4/Sub_2Sub(softmax_cross_entropy_with_logits_4/Rank+softmax_cross_entropy_with_logits_4/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_4/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_4/Slice_2/sizePack)softmax_cross_entropy_with_logits_4/Sub_2*

axis *
T0*
N
Ś
+softmax_cross_entropy_with_logits_4/Slice_2Slice)softmax_cross_entropy_with_logits_4/Shape1softmax_cross_entropy_with_logits_4/Slice_2/begin0softmax_cross_entropy_with_logits_4/Slice_2/size*
Index0*
T0
”
-softmax_cross_entropy_with_logits_4/Reshape_2Reshape#softmax_cross_entropy_with_logits_4+softmax_cross_entropy_with_logits_4/Slice_2*
T0*
Tshape0
D
Neg_1Neg-softmax_cross_entropy_with_logits_4/Reshape_2*
T0
K
strided_slice_25/stackConst*
valueB"       *
dtype0
M
strided_slice_25/stack_1Const*
valueB"       *
dtype0
M
strided_slice_25/stack_2Const*
valueB"      *
dtype0
š
strided_slice_25StridedSliceconcat_2strided_slice_25/stackstrided_slice_25/stack_1strided_slice_25/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_26/stackConst*
valueB"       *
dtype0
M
strided_slice_26/stack_1Const*
valueB"       *
dtype0
M
strided_slice_26/stack_2Const*
valueB"      *
dtype0
š
strided_slice_26StridedSliceconcat_1strided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_5/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_5/ShapeShapestrided_slice_26*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_5/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_5/Shape_1Shapestrided_slice_26*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_5/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_5/SubSub*softmax_cross_entropy_with_logits_5/Rank_1)softmax_cross_entropy_with_logits_5/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_5/Slice/beginPack'softmax_cross_entropy_with_logits_5/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_5/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_5/SliceSlice+softmax_cross_entropy_with_logits_5/Shape_1/softmax_cross_entropy_with_logits_5/Slice/begin.softmax_cross_entropy_with_logits_5/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_5/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_5/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_5/concatConcatV23softmax_cross_entropy_with_logits_5/concat/values_0)softmax_cross_entropy_with_logits_5/Slice/softmax_cross_entropy_with_logits_5/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_5/ReshapeReshapestrided_slice_26*softmax_cross_entropy_with_logits_5/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_5/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_5/Shape_2Shapestrided_slice_25*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_5/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_5/Sub_1Sub*softmax_cross_entropy_with_logits_5/Rank_2+softmax_cross_entropy_with_logits_5/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_5/Slice_1/beginPack)softmax_cross_entropy_with_logits_5/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_5/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_5/Slice_1Slice+softmax_cross_entropy_with_logits_5/Shape_21softmax_cross_entropy_with_logits_5/Slice_1/begin0softmax_cross_entropy_with_logits_5/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_5/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_5/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_5/concat_1ConcatV25softmax_cross_entropy_with_logits_5/concat_1/values_0+softmax_cross_entropy_with_logits_5/Slice_11softmax_cross_entropy_with_logits_5/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_5/Reshape_1Reshapestrided_slice_25,softmax_cross_entropy_with_logits_5/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_5SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_5/Reshape-softmax_cross_entropy_with_logits_5/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_5/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_5/Sub_2Sub(softmax_cross_entropy_with_logits_5/Rank+softmax_cross_entropy_with_logits_5/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_5/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_5/Slice_2/sizePack)softmax_cross_entropy_with_logits_5/Sub_2*

axis *
T0*
N
Ś
+softmax_cross_entropy_with_logits_5/Slice_2Slice)softmax_cross_entropy_with_logits_5/Shape1softmax_cross_entropy_with_logits_5/Slice_2/begin0softmax_cross_entropy_with_logits_5/Slice_2/size*
Index0*
T0
”
-softmax_cross_entropy_with_logits_5/Reshape_2Reshape#softmax_cross_entropy_with_logits_5+softmax_cross_entropy_with_logits_5/Slice_2*
T0*
Tshape0
D
Neg_2Neg-softmax_cross_entropy_with_logits_5/Reshape_2*
T0
@
stack_1PackNegNeg_1Neg_2*

axis*
T0*
N
A
Sum_7/reduction_indicesConst*
value	B :*
dtype0
T
Sum_7Sumstack_1Sum_7/reduction_indices*
	keep_dims(*
T0*

Tidx0
K
strided_slice_27/stackConst*
valueB"        *
dtype0
M
strided_slice_27/stack_1Const*
valueB"       *
dtype0
M
strided_slice_27/stack_2Const*
valueB"      *
dtype0
š
strided_slice_27StridedSliceconcat_2strided_slice_27/stackstrided_slice_27/stack_1strided_slice_27/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_28/stackConst*
valueB"        *
dtype0
M
strided_slice_28/stack_1Const*
valueB"       *
dtype0
M
strided_slice_28/stack_2Const*
valueB"      *
dtype0
š
strided_slice_28StridedSliceconcat_4strided_slice_28/stackstrided_slice_28/stack_1strided_slice_28/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_6/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_6/ShapeShapestrided_slice_28*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_6/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_6/Shape_1Shapestrided_slice_28*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_6/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_6/SubSub*softmax_cross_entropy_with_logits_6/Rank_1)softmax_cross_entropy_with_logits_6/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_6/Slice/beginPack'softmax_cross_entropy_with_logits_6/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_6/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_6/SliceSlice+softmax_cross_entropy_with_logits_6/Shape_1/softmax_cross_entropy_with_logits_6/Slice/begin.softmax_cross_entropy_with_logits_6/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_6/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_6/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_6/concatConcatV23softmax_cross_entropy_with_logits_6/concat/values_0)softmax_cross_entropy_with_logits_6/Slice/softmax_cross_entropy_with_logits_6/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_6/ReshapeReshapestrided_slice_28*softmax_cross_entropy_with_logits_6/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_6/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_6/Shape_2Shapestrided_slice_27*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_6/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_6/Sub_1Sub*softmax_cross_entropy_with_logits_6/Rank_2+softmax_cross_entropy_with_logits_6/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_6/Slice_1/beginPack)softmax_cross_entropy_with_logits_6/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_6/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_6/Slice_1Slice+softmax_cross_entropy_with_logits_6/Shape_21softmax_cross_entropy_with_logits_6/Slice_1/begin0softmax_cross_entropy_with_logits_6/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_6/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_6/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_6/concat_1ConcatV25softmax_cross_entropy_with_logits_6/concat_1/values_0+softmax_cross_entropy_with_logits_6/Slice_11softmax_cross_entropy_with_logits_6/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_6/Reshape_1Reshapestrided_slice_27,softmax_cross_entropy_with_logits_6/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_6SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_6/Reshape-softmax_cross_entropy_with_logits_6/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_6/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_6/Sub_2Sub(softmax_cross_entropy_with_logits_6/Rank+softmax_cross_entropy_with_logits_6/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_6/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_6/Slice_2/sizePack)softmax_cross_entropy_with_logits_6/Sub_2*

axis *
T0*
N
Ś
+softmax_cross_entropy_with_logits_6/Slice_2Slice)softmax_cross_entropy_with_logits_6/Shape1softmax_cross_entropy_with_logits_6/Slice_2/begin0softmax_cross_entropy_with_logits_6/Slice_2/size*
Index0*
T0
”
-softmax_cross_entropy_with_logits_6/Reshape_2Reshape#softmax_cross_entropy_with_logits_6+softmax_cross_entropy_with_logits_6/Slice_2*
T0*
Tshape0
D
Neg_3Neg-softmax_cross_entropy_with_logits_6/Reshape_2*
T0
K
strided_slice_29/stackConst*
valueB"       *
dtype0
M
strided_slice_29/stack_1Const*
valueB"       *
dtype0
M
strided_slice_29/stack_2Const*
valueB"      *
dtype0
š
strided_slice_29StridedSliceconcat_2strided_slice_29/stackstrided_slice_29/stack_1strided_slice_29/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_30/stackConst*
valueB"       *
dtype0
M
strided_slice_30/stack_1Const*
valueB"       *
dtype0
M
strided_slice_30/stack_2Const*
valueB"      *
dtype0
š
strided_slice_30StridedSliceconcat_4strided_slice_30/stackstrided_slice_30/stack_1strided_slice_30/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_7/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_7/ShapeShapestrided_slice_30*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_7/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_7/Shape_1Shapestrided_slice_30*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_7/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_7/SubSub*softmax_cross_entropy_with_logits_7/Rank_1)softmax_cross_entropy_with_logits_7/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_7/Slice/beginPack'softmax_cross_entropy_with_logits_7/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_7/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_7/SliceSlice+softmax_cross_entropy_with_logits_7/Shape_1/softmax_cross_entropy_with_logits_7/Slice/begin.softmax_cross_entropy_with_logits_7/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_7/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_7/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_7/concatConcatV23softmax_cross_entropy_with_logits_7/concat/values_0)softmax_cross_entropy_with_logits_7/Slice/softmax_cross_entropy_with_logits_7/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_7/ReshapeReshapestrided_slice_30*softmax_cross_entropy_with_logits_7/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_7/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_7/Shape_2Shapestrided_slice_29*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_7/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_7/Sub_1Sub*softmax_cross_entropy_with_logits_7/Rank_2+softmax_cross_entropy_with_logits_7/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_7/Slice_1/beginPack)softmax_cross_entropy_with_logits_7/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_7/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_7/Slice_1Slice+softmax_cross_entropy_with_logits_7/Shape_21softmax_cross_entropy_with_logits_7/Slice_1/begin0softmax_cross_entropy_with_logits_7/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_7/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_7/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_7/concat_1ConcatV25softmax_cross_entropy_with_logits_7/concat_1/values_0+softmax_cross_entropy_with_logits_7/Slice_11softmax_cross_entropy_with_logits_7/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_7/Reshape_1Reshapestrided_slice_29,softmax_cross_entropy_with_logits_7/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_7SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_7/Reshape-softmax_cross_entropy_with_logits_7/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_7/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_7/Sub_2Sub(softmax_cross_entropy_with_logits_7/Rank+softmax_cross_entropy_with_logits_7/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_7/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_7/Slice_2/sizePack)softmax_cross_entropy_with_logits_7/Sub_2*

axis *
T0*
N
Ś
+softmax_cross_entropy_with_logits_7/Slice_2Slice)softmax_cross_entropy_with_logits_7/Shape1softmax_cross_entropy_with_logits_7/Slice_2/begin0softmax_cross_entropy_with_logits_7/Slice_2/size*
Index0*
T0
”
-softmax_cross_entropy_with_logits_7/Reshape_2Reshape#softmax_cross_entropy_with_logits_7+softmax_cross_entropy_with_logits_7/Slice_2*
T0*
Tshape0
D
Neg_4Neg-softmax_cross_entropy_with_logits_7/Reshape_2*
T0
K
strided_slice_31/stackConst*
valueB"       *
dtype0
M
strided_slice_31/stack_1Const*
valueB"       *
dtype0
M
strided_slice_31/stack_2Const*
valueB"      *
dtype0
š
strided_slice_31StridedSliceconcat_2strided_slice_31/stackstrided_slice_31/stack_1strided_slice_31/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_32/stackConst*
valueB"       *
dtype0
M
strided_slice_32/stack_1Const*
valueB"       *
dtype0
M
strided_slice_32/stack_2Const*
valueB"      *
dtype0
š
strided_slice_32StridedSliceconcat_4strided_slice_32/stackstrided_slice_32/stack_1strided_slice_32/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_8/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_8/ShapeShapestrided_slice_32*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_8/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_8/Shape_1Shapestrided_slice_32*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_8/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_8/SubSub*softmax_cross_entropy_with_logits_8/Rank_1)softmax_cross_entropy_with_logits_8/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_8/Slice/beginPack'softmax_cross_entropy_with_logits_8/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_8/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_8/SliceSlice+softmax_cross_entropy_with_logits_8/Shape_1/softmax_cross_entropy_with_logits_8/Slice/begin.softmax_cross_entropy_with_logits_8/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_8/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_8/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_8/concatConcatV23softmax_cross_entropy_with_logits_8/concat/values_0)softmax_cross_entropy_with_logits_8/Slice/softmax_cross_entropy_with_logits_8/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_8/ReshapeReshapestrided_slice_32*softmax_cross_entropy_with_logits_8/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_8/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_8/Shape_2Shapestrided_slice_31*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_8/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_8/Sub_1Sub*softmax_cross_entropy_with_logits_8/Rank_2+softmax_cross_entropy_with_logits_8/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_8/Slice_1/beginPack)softmax_cross_entropy_with_logits_8/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_8/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_8/Slice_1Slice+softmax_cross_entropy_with_logits_8/Shape_21softmax_cross_entropy_with_logits_8/Slice_1/begin0softmax_cross_entropy_with_logits_8/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_8/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_8/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_8/concat_1ConcatV25softmax_cross_entropy_with_logits_8/concat_1/values_0+softmax_cross_entropy_with_logits_8/Slice_11softmax_cross_entropy_with_logits_8/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_8/Reshape_1Reshapestrided_slice_31,softmax_cross_entropy_with_logits_8/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_8SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_8/Reshape-softmax_cross_entropy_with_logits_8/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_8/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_8/Sub_2Sub(softmax_cross_entropy_with_logits_8/Rank+softmax_cross_entropy_with_logits_8/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_8/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_8/Slice_2/sizePack)softmax_cross_entropy_with_logits_8/Sub_2*

axis *
T0*
N
Ś
+softmax_cross_entropy_with_logits_8/Slice_2Slice)softmax_cross_entropy_with_logits_8/Shape1softmax_cross_entropy_with_logits_8/Slice_2/begin0softmax_cross_entropy_with_logits_8/Slice_2/size*
Index0*
T0
”
-softmax_cross_entropy_with_logits_8/Reshape_2Reshape#softmax_cross_entropy_with_logits_8+softmax_cross_entropy_with_logits_8/Slice_2*
T0*
Tshape0
D
Neg_5Neg-softmax_cross_entropy_with_logits_8/Reshape_2*
T0
B
stack_2PackNeg_3Neg_4Neg_5*

axis*
T0*
N
A
Sum_8/reduction_indicesConst*
value	B :*
dtype0
T
Sum_8Sumstack_2Sum_8/reduction_indices*
	keep_dims(*
T0*

Tidx0
H
discounted_rewardsPlaceholder*
dtype0*
shape:’’’’’’’’’
D

advantagesPlaceholder*
dtype0*
shape:’’’’’’’’’
J
PolynomialDecay/learning_rateConst*
valueB
 *RI9*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

DstT0*

SrcT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * $ōH*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *’ęŪ.*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
I
old_value_estimatesPlaceholder*
dtype0*
shape:’’’’’’’’’
L
PolynomialDecay_1/learning_rateConst*
valueB
 *ĶĢL>*
dtype0
H
PolynomialDecay_1/CastCastglobal_step/read*

DstT0*

SrcT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 * $ōH*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *ĶĢĢ=*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *
×£;*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

DstT0*

SrcT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * $ōH*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
A
Sum_9/reduction_indicesConst*
value	B :*
dtype0
[
Sum_9Sumvalue_estimateSum_9/reduction_indices*
	keep_dims( *
T0*

Tidx0
1
sub_4SubSum_9old_value_estimates*
T0
(
Neg_6NegPolynomialDecay_1*
T0
C
clip_by_value/MinimumMinimumsub_4PolynomialDecay_1*
T0
?
clip_by_valueMaximumclip_by_value/MinimumNeg_6*
T0
:
add_15Addold_value_estimatesclip_by_value*
T0
B
Sum_10/reduction_indicesConst*
value	B :*
dtype0
]
Sum_10Sumvalue_estimateSum_10/reduction_indices*
	keep_dims( *
T0*

Tidx0
K
SquaredDifferenceSquaredDifferencediscounted_rewardsSum_10*
T0
M
SquaredDifference_1SquaredDifferencediscounted_rewardsadd_15*
T0
C
MaximumMaximumSquaredDifferenceSquaredDifference_1*
T0
R
DynamicPartitionDynamicPartitionMaximumCast*
T0*
num_partitions
3
ConstConst*
valueB: *
dtype0
O
Mean_1MeanDynamicPartition:1Const*
	keep_dims( *
T0*

Tidx0
#
sub_5SubSum_7Sum_8*
T0

ExpExpsub_5*
T0
&
mul_1MulExp
advantages*
T0
4
sub_6/xConst*
valueB
 *  ?*
dtype0
1
sub_6Subsub_6/xPolynomialDecay_1*
T0
5
add_16/xConst*
valueB
 *  ?*
dtype0
3
add_16Addadd_16/xPolynomialDecay_1*
T0
8
clip_by_value_1/MinimumMinimumExpadd_16*
T0
C
clip_by_value_1Maximumclip_by_value_1/Minimumsub_6*
T0
2
mul_2Mulclip_by_value_1
advantages*
T0
)
MinimumMinimummul_1mul_2*
T0
T
DynamicPartition_1DynamicPartitionMinimumCast*
T0*
num_partitions
<
Const_1Const*
valueB"       *
dtype0
S
Mean_2MeanDynamicPartition_1:1Const_1*
	keep_dims( *
T0*

Tidx0

Neg_7NegMean_2*
T0
4
mul_3/xConst*
valueB
 *   ?*
dtype0
&
mul_3Mulmul_3/xMean_1*
T0
$
add_17AddNeg_7mul_3*
T0
R
DynamicPartition_2DynamicPartitionSum_6Cast*
T0*
num_partitions
5
Const_2Const*
valueB: *
dtype0
S
Mean_3MeanDynamicPartition_2:1Const_2*
	keep_dims( *
T0*

Tidx0
0
mul_4MulPolynomialDecay_2Mean_3*
T0
$
sub_7Subadd_17mul_4*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
8
gradients/sub_7_grad/NegNeggradients/Fill*
T0
Y
%gradients/sub_7_grad/tuple/group_depsNoOp^gradients/Fill^gradients/sub_7_grad/Neg

-gradients/sub_7_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/sub_7_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
³
/gradients/sub_7_grad/tuple/control_dependency_1Identitygradients/sub_7_grad/Neg&^gradients/sub_7_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_7_grad/Neg
^
&gradients/add_17_grad/tuple/group_depsNoOp.^gradients/sub_7_grad/tuple/control_dependency
¾
.gradients/add_17_grad/tuple/control_dependencyIdentity-gradients/sub_7_grad/tuple/control_dependency'^gradients/add_17_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Ą
0gradients/add_17_grad/tuple/control_dependency_1Identity-gradients/sub_7_grad/tuple/control_dependency'^gradients/add_17_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
a
gradients/mul_4_grad/MulMul/gradients/sub_7_grad/tuple/control_dependency_1Mean_3*
T0
n
gradients/mul_4_grad/Mul_1Mul/gradients/sub_7_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
e
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Mul^gradients/mul_4_grad/Mul_1
±
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Mul&^gradients/mul_4_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_4_grad/Mul
·
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Mul_1&^gradients/mul_4_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
X
gradients/Neg_7_grad/NegNeg.gradients/add_17_grad/tuple/control_dependency*
T0
b
gradients/mul_3_grad/MulMul0gradients/add_17_grad/tuple/control_dependency_1Mean_1*
T0
e
gradients/mul_3_grad/Mul_1Mul0gradients/add_17_grad/tuple/control_dependency_1mul_3/x*
T0
e
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Mul^gradients/mul_3_grad/Mul_1
±
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Mul&^gradients/mul_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_3_grad/Mul
·
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Mul_1&^gradients/mul_3_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_3_grad/Mul_1
Q
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_3_grad/ReshapeReshape/gradients/mul_4_grad/tuple/control_dependency_1#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_3_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*
T0*

Tmultiples0
U
gradients/Mean_3_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_3_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
	keep_dims( *
T0*

Tidx0
K
gradients/Mean_3_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0
n
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
T0
Z
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0
X
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB"      *
dtype0
~
gradients/Mean_2_grad/ReshapeReshapegradients/Neg_7_grad/Neg#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_2_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*
T0*

Tmultiples0
U
gradients/Mean_2_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*
	keep_dims( *
T0*

Tidx0
K
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0
n
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape/gradients/mul_3_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
Q
gradients/Mean_1_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0
S
gradients/Mean_1_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
	keep_dims( *
T0*

Tidx0
K
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0
n
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
>
gradients/zeros_like	ZerosLikeDynamicPartition_2*
T0
O
'gradients/DynamicPartition_2_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_2_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_2_grad/ProdProd'gradients/DynamicPartition_2_grad/Shape'gradients/DynamicPartition_2_grad/Const*
	keep_dims( *
T0*

Tidx0
W
-gradients/DynamicPartition_2_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_2_grad/range/deltaConst*
value	B :*
dtype0
Ā
'gradients/DynamicPartition_2_grad/rangeRange-gradients/DynamicPartition_2_grad/range/start&gradients/DynamicPartition_2_grad/Prod-gradients/DynamicPartition_2_grad/range/delta*

Tidx0

)gradients/DynamicPartition_2_grad/ReshapeReshape'gradients/DynamicPartition_2_grad/range'gradients/DynamicPartition_2_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_2_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_2_grad/ReshapeCast*
T0*
num_partitions
ń
/gradients/DynamicPartition_2_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_2_grad/DynamicPartition4gradients/DynamicPartition_2_grad/DynamicPartition:1gradients/zeros_likegradients/Mean_3_grad/truediv*
T0*
N
R
)gradients/DynamicPartition_2_grad/Shape_1ShapeSum_6*
T0*
out_type0
©
+gradients/DynamicPartition_2_grad/Reshape_1Reshape/gradients/DynamicPartition_2_grad/DynamicStitch)gradients/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
@
gradients/zeros_like_1	ZerosLikeDynamicPartition_1*
T0
O
'gradients/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_1_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_1_grad/ProdProd'gradients/DynamicPartition_1_grad/Shape'gradients/DynamicPartition_1_grad/Const*
	keep_dims( *
T0*

Tidx0
W
-gradients/DynamicPartition_1_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_1_grad/range/deltaConst*
value	B :*
dtype0
Ā
'gradients/DynamicPartition_1_grad/rangeRange-gradients/DynamicPartition_1_grad/range/start&gradients/DynamicPartition_1_grad/Prod-gradients/DynamicPartition_1_grad/range/delta*

Tidx0

)gradients/DynamicPartition_1_grad/ReshapeReshape'gradients/DynamicPartition_1_grad/range'gradients/DynamicPartition_1_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_1_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_1_grad/ReshapeCast*
T0*
num_partitions
ó
/gradients/DynamicPartition_1_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_1_grad/DynamicPartition4gradients/DynamicPartition_1_grad/DynamicPartition:1gradients/zeros_like_1gradients/Mean_2_grad/truediv*
T0*
N
T
)gradients/DynamicPartition_1_grad/Shape_1ShapeMinimum*
T0*
out_type0
©
+gradients/DynamicPartition_1_grad/Reshape_1Reshape/gradients/DynamicPartition_1_grad/DynamicStitch)gradients/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
>
gradients/zeros_like_2	ZerosLikeDynamicPartition*
T0
M
%gradients/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
S
%gradients/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
 
$gradients/DynamicPartition_grad/ProdProd%gradients/DynamicPartition_grad/Shape%gradients/DynamicPartition_grad/Const*
	keep_dims( *
T0*

Tidx0
U
+gradients/DynamicPartition_grad/range/startConst*
value	B : *
dtype0
U
+gradients/DynamicPartition_grad/range/deltaConst*
value	B :*
dtype0
ŗ
%gradients/DynamicPartition_grad/rangeRange+gradients/DynamicPartition_grad/range/start$gradients/DynamicPartition_grad/Prod+gradients/DynamicPartition_grad/range/delta*

Tidx0

'gradients/DynamicPartition_grad/ReshapeReshape%gradients/DynamicPartition_grad/range%gradients/DynamicPartition_grad/Shape*
T0*
Tshape0

0gradients/DynamicPartition_grad/DynamicPartitionDynamicPartition'gradients/DynamicPartition_grad/ReshapeCast*
T0*
num_partitions
ķ
-gradients/DynamicPartition_grad/DynamicStitchDynamicStitch0gradients/DynamicPartition_grad/DynamicPartition2gradients/DynamicPartition_grad/DynamicPartition:1gradients/zeros_like_2gradients/Mean_1_grad/truediv*
T0*
N
R
'gradients/DynamicPartition_grad/Shape_1ShapeMaximum*
T0*
out_type0
£
)gradients/DynamicPartition_grad/Reshape_1Reshape-gradients/DynamicPartition_grad/DynamicStitch'gradients/DynamicPartition_grad/Shape_1*
T0*
Tshape0
C
gradients/Sum_6_grad/ShapeShapestack*
T0*
out_type0
r
gradients/Sum_6_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/addAddSum_6/reduction_indicesgradients/Sum_6_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/modFloorModgradients/Sum_6_grad/addgradients/Sum_6_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
t
gradients/Sum_6_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
y
 gradients/Sum_6_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
y
 gradients/Sum_6_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
½
gradients/Sum_6_grad/rangeRange gradients/Sum_6_grad/range/startgradients/Sum_6_grad/Size gradients/Sum_6_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
x
gradients/Sum_6_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
Ŗ
gradients/Sum_6_grad/FillFillgradients/Sum_6_grad/Shape_1gradients/Sum_6_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
į
"gradients/Sum_6_grad/DynamicStitchDynamicStitchgradients/Sum_6_grad/rangegradients/Sum_6_grad/modgradients/Sum_6_grad/Shapegradients/Sum_6_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_6_grad/Shape
w
gradients/Sum_6_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
£
gradients/Sum_6_grad/MaximumMaximum"gradients/Sum_6_grad/DynamicStitchgradients/Sum_6_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/floordivFloorDivgradients/Sum_6_grad/Shapegradients/Sum_6_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/ReshapeReshape+gradients/DynamicPartition_2_grad/Reshape_1"gradients/Sum_6_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_6_grad/TileTilegradients/Sum_6_grad/Reshapegradients/Sum_6_grad/floordiv*
T0*

Tmultiples0
E
gradients/Minimum_grad/ShapeShapemul_1*
T0*
out_type0
G
gradients/Minimum_grad/Shape_1Shapemul_2*
T0*
out_type0
m
gradients/Minimum_grad/Shape_2Shape+gradients/DynamicPartition_1_grad/Reshape_1*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0*

index_type0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_1mul_2*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual+gradients/DynamicPartition_1_grad/Reshape_1gradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros+gradients/DynamicPartition_1_grad/Reshape_1*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Į
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Ē
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
Q
gradients/Maximum_grad/ShapeShapeSquaredDifference*
T0*
out_type0
U
gradients/Maximum_grad/Shape_1ShapeSquaredDifference_1*
T0*
out_type0
k
gradients/Maximum_grad/Shape_2Shape)gradients/DynamicPartition_grad/Reshape_1*
T0*
out_type0
O
"gradients/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
T0*

index_type0
d
#gradients/Maximum_grad/GreaterEqualGreaterEqualSquaredDifferenceSquaredDifference_1*
T0

,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
T0

gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqual)gradients/DynamicPartition_grad/Reshape_1gradients/Maximum_grad/zeros*
T0
 
gradients/Maximum_grad/Select_1Select#gradients/Maximum_grad/GreaterEqualgradients/Maximum_grad/zeros)gradients/DynamicPartition_grad/Reshape_1*
T0

gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
T0*
Tshape0

gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Maximum_grad/tuple/group_depsNoOp^gradients/Maximum_grad/Reshape!^gradients/Maximum_grad/Reshape_1
Į
/gradients/Maximum_grad/tuple/control_dependencyIdentitygradients/Maximum_grad/Reshape(^gradients/Maximum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Maximum_grad/Reshape
Ē
1gradients/Maximum_grad/tuple/control_dependency_1Identity gradients/Maximum_grad/Reshape_1(^gradients/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Maximum_grad/Reshape_1
a
gradients/stack_grad/unstackUnpackgradients/Sum_6_grad/Tile*

axis*
T0*	
num
L
%gradients/stack_grad/tuple/group_depsNoOp^gradients/stack_grad/unstack
¹
-gradients/stack_grad/tuple/control_dependencyIdentitygradients/stack_grad/unstack&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
½
/gradients/stack_grad/tuple/control_dependency_1Identitygradients/stack_grad/unstack:1&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
½
/gradients/stack_grad/tuple/control_dependency_2Identitygradients/stack_grad/unstack:2&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
A
gradients/mul_1_grad/ShapeShapeExp*
T0*
out_type0
J
gradients/mul_1_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
e
gradients/mul_1_grad/MulMul/gradients/Minimum_grad/tuple/control_dependency
advantages*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
`
gradients/mul_1_grad/Mul_1MulExp/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
æ
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1
M
gradients/mul_2_grad/ShapeShapeclip_by_value_1*
T0*
out_type0
J
gradients/mul_2_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
T0
g
gradients/mul_2_grad/MulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
T0*
Tshape0
n
gradients/mul_2_grad/Mul_1Mulclip_by_value_11gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
¹
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape
æ
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1
\
&gradients/SquaredDifference_grad/ShapeShapediscounted_rewards*
T0*
out_type0
R
(gradients/SquaredDifference_grad/Shape_1ShapeSum_10*
T0*
out_type0
Ŗ
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0

'gradients/SquaredDifference_grad/scalarConst0^gradients/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalar/gradients/Maximum_grad/tuple/control_dependency*
T0

$gradients/SquaredDifference_grad/subSubdiscounted_rewardsSum_100^gradients/Maximum_grad/tuple/control_dependency*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ć
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
^
(gradients/SquaredDifference_1_grad/ShapeShapediscounted_rewards*
T0*
out_type0
T
*gradients/SquaredDifference_1_grad/Shape_1Shapeadd_15*
T0*
out_type0
°
8gradients/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_1_grad/Shape*gradients/SquaredDifference_1_grad/Shape_1*
T0

)gradients/SquaredDifference_1_grad/scalarConst2^gradients/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_1_grad/mulMul)gradients/SquaredDifference_1_grad/scalar1gradients/Maximum_grad/tuple/control_dependency_1*
T0

&gradients/SquaredDifference_1_grad/subSubdiscounted_rewardsadd_152^gradients/Maximum_grad/tuple/control_dependency_1*
T0

(gradients/SquaredDifference_1_grad/mul_1Mul&gradients/SquaredDifference_1_grad/mul&gradients/SquaredDifference_1_grad/sub*
T0
·
&gradients/SquaredDifference_1_grad/SumSum(gradients/SquaredDifference_1_grad/mul_18gradients/SquaredDifference_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

*gradients/SquaredDifference_1_grad/ReshapeReshape&gradients/SquaredDifference_1_grad/Sum(gradients/SquaredDifference_1_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_1_grad/Sum_1Sum(gradients/SquaredDifference_1_grad/mul_1:gradients/SquaredDifference_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¤
,gradients/SquaredDifference_1_grad/Reshape_1Reshape(gradients/SquaredDifference_1_grad/Sum_1*gradients/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_1_grad/NegNeg,gradients/SquaredDifference_1_grad/Reshape_1*
T0

3gradients/SquaredDifference_1_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_1_grad/Reshape'^gradients/SquaredDifference_1_grad/Neg
ń
;gradients/SquaredDifference_1_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_1_grad/Reshape4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape
ė
=gradients/SquaredDifference_1_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_1_grad/Neg4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg

@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0
Õ
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape-gradients/stack_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_1*
T0*
out_type0
Ū
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshape/gradients/stack_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_2*
T0*
out_type0
Ū
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeReshape/gradients/stack_grad/tuple/control_dependency_2Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/Shape*
T0*
Tshape0
_
$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
w
&gradients/clip_by_value_1_grad/Shape_2Shape-gradients/mul_2_grad/tuple/control_dependency*
T0*
out_type0
W
*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/Minimumsub_6*
T0
¤
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0
ŗ
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqual-gradients/mul_2_grad/tuple/control_dependency$gradients/clip_by_value_1_grad/zeros*
T0
¼
'gradients/clip_by_value_1_grad/Select_1Select+gradients/clip_by_value_1_grad/GreaterEqual$gradients/clip_by_value_1_grad/zeros-gradients/mul_2_grad/tuple/control_dependency*
T0
¬
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*
Tshape0
²
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_1_grad/tuple/group_depsNoOp'^gradients/clip_by_value_1_grad/Reshape)^gradients/clip_by_value_1_grad/Reshape_1
į
7gradients/clip_by_value_1_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_1_grad/Reshape0^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_1_grad/Reshape
ē
9gradients/clip_by_value_1_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_1_grad/Reshape_10^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_1_grad/Reshape_1
M
gradients/Sum_10_grad/ShapeShapevalue_estimate*
T0*
out_type0
t
gradients/Sum_10_grad/SizeConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Sum_10_grad/Shape

gradients/Sum_10_grad/addAddSum_10/reduction_indicesgradients/Sum_10_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape

gradients/Sum_10_grad/modFloorModgradients/Sum_10_grad/addgradients/Sum_10_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
v
gradients/Sum_10_grad/Shape_1Const*
valueB *
dtype0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
{
!gradients/Sum_10_grad/range/startConst*
value	B : *
dtype0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
{
!gradients/Sum_10_grad/range/deltaConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
Ā
gradients/Sum_10_grad/rangeRange!gradients/Sum_10_grad/range/startgradients/Sum_10_grad/Size!gradients/Sum_10_grad/range/delta*

Tidx0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
z
 gradients/Sum_10_grad/Fill/valueConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
®
gradients/Sum_10_grad/FillFillgradients/Sum_10_grad/Shape_1 gradients/Sum_10_grad/Fill/value*
T0*

index_type0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
ē
#gradients/Sum_10_grad/DynamicStitchDynamicStitchgradients/Sum_10_grad/rangegradients/Sum_10_grad/modgradients/Sum_10_grad/Shapegradients/Sum_10_grad/Fill*
T0*
N*.
_class$
" loc:@gradients/Sum_10_grad/Shape
y
gradients/Sum_10_grad/Maximum/yConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
§
gradients/Sum_10_grad/MaximumMaximum#gradients/Sum_10_grad/DynamicStitchgradients/Sum_10_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape

gradients/Sum_10_grad/floordivFloorDivgradients/Sum_10_grad/Shapegradients/Sum_10_grad/Maximum*
T0*.
_class$
" loc:@gradients/Sum_10_grad/Shape
”
gradients/Sum_10_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1#gradients/Sum_10_grad/DynamicStitch*
T0*
Tshape0
|
gradients/Sum_10_grad/TileTilegradients/Sum_10_grad/Reshapegradients/Sum_10_grad/floordiv*
T0*

Tmultiples0
R
gradients/add_15_grad/ShapeShapeold_value_estimates*
T0*
out_type0
N
gradients/add_15_grad/Shape_1Shapeclip_by_value*
T0*
out_type0

+gradients/add_15_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_15_grad/Shapegradients/add_15_grad/Shape_1*
T0
²
gradients/add_15_grad/SumSum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1+gradients/add_15_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
w
gradients/add_15_grad/ReshapeReshapegradients/add_15_grad/Sumgradients/add_15_grad/Shape*
T0*
Tshape0
¶
gradients/add_15_grad/Sum_1Sum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1-gradients/add_15_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
}
gradients/add_15_grad/Reshape_1Reshapegradients/add_15_grad/Sum_1gradients/add_15_grad/Shape_1*
T0*
Tshape0
p
&gradients/add_15_grad/tuple/group_depsNoOp^gradients/add_15_grad/Reshape ^gradients/add_15_grad/Reshape_1
½
.gradients/add_15_grad/tuple/control_dependencyIdentitygradients/add_15_grad/Reshape'^gradients/add_15_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/add_15_grad/Reshape
Ć
0gradients/add_15_grad/tuple/control_dependency_1Identitygradients/add_15_grad/Reshape_1'^gradients/add_15_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/add_15_grad/Reshape_1
Q
gradients/zeros_like_3	ZerosLike#softmax_cross_entropy_with_logits:1*
T0
r
?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
ć
;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0
¦
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0
}
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0

4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0
t
Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ē
=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*

Tdim0
»
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0
¹
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
”
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/softmax_cross_entropy_with_logits_grad/mul
§
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1
S
gradients/zeros_like_4	ZerosLike%softmax_cross_entropy_with_logits_1:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*
T0*

Tdim0
¬
6gradients/softmax_cross_entropy_with_logits_1_grad/mulMul=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims%softmax_cross_entropy_with_logits_1:1*
T0

=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_1/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_1_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*
T0*

Tdim0
Į
8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_1_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_1_grad/mul9^gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_1_grad/mulD^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
S
gradients/zeros_like_5	ZerosLike%softmax_cross_entropy_with_logits_2:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dim*
T0*

Tdim0
¬
6gradients/softmax_cross_entropy_with_logits_2_grad/mulMul=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims%softmax_cross_entropy_with_logits_2:1*
T0

=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_2/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_2_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dim*
T0*

Tdim0
Į
8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_2_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_2_grad/mul9^gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_2_grad/mulD^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
S
,gradients/clip_by_value_1/Minimum_grad/ShapeShapeExp*
T0*
out_type0
W
.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
S
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqualExpadd_16*
T0
¼
<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0
Ł
-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual7gradients/clip_by_value_1_grad/tuple/control_dependency,gradients/clip_by_value_1/Minimum_grad/zeros*
T0
Ū
/gradients/clip_by_value_1/Minimum_grad/Select_1Select0gradients/clip_by_value_1/Minimum_grad/LessEqual,gradients/clip_by_value_1/Minimum_grad/zeros7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
Ź
,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
°
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_1/Minimum_grad/Reshape1^gradients/clip_by_value_1/Minimum_grad/Reshape_1

?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_1/Minimum_grad/Reshape8^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_1/Minimum_grad/Reshape

Agradients/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_1/Minimum_grad/Reshape_18^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_1/Minimum_grad/Reshape_1
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
x
$gradients/clip_by_value_grad/Shape_2Shape0gradients/add_15_grad/tuple/control_dependency_1*
T0*
out_type0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*
T0*

index_type0
`
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/MinimumNeg_6*
T0

2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0
·
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqual0gradients/add_15_grad/tuple/control_dependency_1"gradients/clip_by_value_grad/zeros*
T0
¹
%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zeros0gradients/add_15_grad/tuple/control_dependency_1*
T0
¦
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0
¬
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
Ł
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape
ß
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1
r
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapestrided_slice_16*
T0*
out_type0
ķ
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
m
@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ShapeShape	Softmax_6*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShapestrided_slice_18*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*
T0*
Tshape0
o
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ShapeShape	Softmax_7*
T0*
out_type0
ł
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ReshapeReshapeMgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ShapeShapestrided_slice_20*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Shape*
T0*
Tshape0
o
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/ShapeShape	Softmax_8*
T0*
out_type0
ł
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/ReshapeReshapeMgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Shape*
T0*
Tshape0
É
gradients/AddNAddN-gradients/mul_1_grad/tuple/control_dependency?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency*
T0*
N*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
;
gradients/Exp_grad/mulMulgradients/AddNExp*
T0
S
*gradients/clip_by_value/Minimum_grad/ShapeShapesub_4*
T0*
out_type0
U
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0

,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
]
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
­
*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0
^
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqualsub_4PolynomialDecay_1*
T0
¶
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
Ń
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
Ó
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0
¾
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ä
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ŗ
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
ł
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape
’
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1
C
gradients/sub_5_grad/ShapeShapeSum_7*
T0*
out_type0
E
gradients/sub_5_grad/Shape_1ShapeSum_8*
T0*
out_type0

*gradients/sub_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_5_grad/Shapegradients/sub_5_grad/Shape_1*
T0

gradients/sub_5_grad/SumSumgradients/Exp_grad/mul*gradients/sub_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/sub_5_grad/ReshapeReshapegradients/sub_5_grad/Sumgradients/sub_5_grad/Shape*
T0*
Tshape0

gradients/sub_5_grad/Sum_1Sumgradients/Exp_grad/mul,gradients/sub_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
D
gradients/sub_5_grad/NegNeggradients/sub_5_grad/Sum_1*
T0
x
gradients/sub_5_grad/Reshape_1Reshapegradients/sub_5_grad/Neggradients/sub_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_5_grad/tuple/group_depsNoOp^gradients/sub_5_grad/Reshape^gradients/sub_5_grad/Reshape_1
¹
-gradients/sub_5_grad/tuple/control_dependencyIdentitygradients/sub_5_grad/Reshape&^gradients/sub_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_5_grad/Reshape
æ
/gradients/sub_5_grad/tuple/control_dependency_1Identitygradients/sub_5_grad/Reshape_1&^gradients/sub_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_5_grad/Reshape_1
C
gradients/sub_4_grad/ShapeShapeSum_9*
T0*
out_type0
S
gradients/sub_4_grad/Shape_1Shapeold_value_estimates*
T0*
out_type0

*gradients/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_4_grad/Shapegradients/sub_4_grad/Shape_1*
T0
°
gradients/sub_4_grad/SumSum=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*gradients/sub_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/sub_4_grad/ReshapeReshapegradients/sub_4_grad/Sumgradients/sub_4_grad/Shape*
T0*
Tshape0
“
gradients/sub_4_grad/Sum_1Sum=gradients/clip_by_value/Minimum_grad/tuple/control_dependency,gradients/sub_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
D
gradients/sub_4_grad/NegNeggradients/sub_4_grad/Sum_1*
T0
x
gradients/sub_4_grad/Reshape_1Reshapegradients/sub_4_grad/Neggradients/sub_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_4_grad/tuple/group_depsNoOp^gradients/sub_4_grad/Reshape^gradients/sub_4_grad/Reshape_1
¹
-gradients/sub_4_grad/tuple/control_dependencyIdentitygradients/sub_4_grad/Reshape&^gradients/sub_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_4_grad/Reshape
æ
/gradients/sub_4_grad/tuple/control_dependency_1Identitygradients/sub_4_grad/Reshape_1&^gradients/sub_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_4_grad/Reshape_1
E
gradients/Sum_7_grad/ShapeShapestack_1*
T0*
out_type0
r
gradients/Sum_7_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/addAddSum_7/reduction_indicesgradients/Sum_7_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/modFloorModgradients/Sum_7_grad/addgradients/Sum_7_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
t
gradients/Sum_7_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
y
 gradients/Sum_7_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
y
 gradients/Sum_7_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
½
gradients/Sum_7_grad/rangeRange gradients/Sum_7_grad/range/startgradients/Sum_7_grad/Size gradients/Sum_7_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
x
gradients/Sum_7_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
Ŗ
gradients/Sum_7_grad/FillFillgradients/Sum_7_grad/Shape_1gradients/Sum_7_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
į
"gradients/Sum_7_grad/DynamicStitchDynamicStitchgradients/Sum_7_grad/rangegradients/Sum_7_grad/modgradients/Sum_7_grad/Shapegradients/Sum_7_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_7_grad/Shape
w
gradients/Sum_7_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
£
gradients/Sum_7_grad/MaximumMaximum"gradients/Sum_7_grad/DynamicStitchgradients/Sum_7_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/floordivFloorDivgradients/Sum_7_grad/Shapegradients/Sum_7_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/ReshapeReshape-gradients/sub_5_grad/tuple/control_dependency"gradients/Sum_7_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_7_grad/TileTilegradients/Sum_7_grad/Reshapegradients/Sum_7_grad/floordiv*
T0*

Tmultiples0
L
gradients/Sum_9_grad/ShapeShapevalue_estimate*
T0*
out_type0
r
gradients/Sum_9_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/addAddSum_9/reduction_indicesgradients/Sum_9_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/modFloorModgradients/Sum_9_grad/addgradients/Sum_9_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
t
gradients/Sum_9_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
y
 gradients/Sum_9_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
y
 gradients/Sum_9_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
½
gradients/Sum_9_grad/rangeRange gradients/Sum_9_grad/range/startgradients/Sum_9_grad/Size gradients/Sum_9_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
x
gradients/Sum_9_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
Ŗ
gradients/Sum_9_grad/FillFillgradients/Sum_9_grad/Shape_1gradients/Sum_9_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
į
"gradients/Sum_9_grad/DynamicStitchDynamicStitchgradients/Sum_9_grad/rangegradients/Sum_9_grad/modgradients/Sum_9_grad/Shapegradients/Sum_9_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_9_grad/Shape
w
gradients/Sum_9_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
£
gradients/Sum_9_grad/MaximumMaximum"gradients/Sum_9_grad/DynamicStitchgradients/Sum_9_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/floordivFloorDivgradients/Sum_9_grad/Shapegradients/Sum_9_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/ReshapeReshape-gradients/sub_4_grad/tuple/control_dependency"gradients/Sum_9_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_9_grad/TileTilegradients/Sum_9_grad/Reshapegradients/Sum_9_grad/floordiv*
T0*

Tmultiples0
c
gradients/stack_1_grad/unstackUnpackgradients/Sum_7_grad/Tile*

axis*
T0*	
num
P
'gradients/stack_1_grad/tuple/group_depsNoOp^gradients/stack_1_grad/unstack
Į
/gradients/stack_1_grad/tuple/control_dependencyIdentitygradients/stack_1_grad/unstack(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
Å
1gradients/stack_1_grad/tuple/control_dependency_1Identity gradients/stack_1_grad/unstack:1(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
Å
1gradients/stack_1_grad/tuple/control_dependency_2Identity gradients/stack_1_grad/unstack:2(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack

gradients/AddN_1AddNgradients/Sum_10_grad/Tilegradients/Sum_9_grad/Tile*
T0*
N*-
_class#
!loc:@gradients/Sum_10_grad/Tile
U
%gradients/strided_slice_16_grad/ShapeShapeaction_probs*
T0*
out_type0
ó
0gradients/strided_slice_16_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_16_grad/Shapestrided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
{
gradients/Softmax_6_grad/mulMulBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape	Softmax_6*
T0
\
.gradients/Softmax_6_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_6_grad/SumSumgradients/Softmax_6_grad/mul.gradients/Softmax_6_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
[
&gradients/Softmax_6_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

 gradients/Softmax_6_grad/ReshapeReshapegradients/Softmax_6_grad/Sum&gradients/Softmax_6_grad/Reshape/shape*
T0*
Tshape0

gradients/Softmax_6_grad/subSubBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape gradients/Softmax_6_grad/Reshape*
T0
W
gradients/Softmax_6_grad/mul_1Mulgradients/Softmax_6_grad/sub	Softmax_6*
T0
U
%gradients/strided_slice_18_grad/ShapeShapeaction_probs*
T0*
out_type0
õ
0gradients/strided_slice_18_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_18_grad/Shapestrided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
}
gradients/Softmax_7_grad/mulMulDgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshape	Softmax_7*
T0
\
.gradients/Softmax_7_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_7_grad/SumSumgradients/Softmax_7_grad/mul.gradients/Softmax_7_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
[
&gradients/Softmax_7_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

 gradients/Softmax_7_grad/ReshapeReshapegradients/Softmax_7_grad/Sum&gradients/Softmax_7_grad/Reshape/shape*
T0*
Tshape0

gradients/Softmax_7_grad/subSubDgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshape gradients/Softmax_7_grad/Reshape*
T0
W
gradients/Softmax_7_grad/mul_1Mulgradients/Softmax_7_grad/sub	Softmax_7*
T0
U
%gradients/strided_slice_20_grad/ShapeShapeaction_probs*
T0*
out_type0
õ
0gradients/strided_slice_20_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_20_grad/Shapestrided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
}
gradients/Softmax_8_grad/mulMulDgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Reshape	Softmax_8*
T0
\
.gradients/Softmax_8_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_8_grad/SumSumgradients/Softmax_8_grad/mul.gradients/Softmax_8_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
[
&gradients/Softmax_8_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

 gradients/Softmax_8_grad/ReshapeReshapegradients/Softmax_8_grad/Sum&gradients/Softmax_8_grad/Reshape/shape*
T0*
Tshape0

gradients/Softmax_8_grad/subSubDgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Reshape gradients/Softmax_8_grad/Reshape*
T0
W
gradients/Softmax_8_grad/mul_1Mulgradients/Softmax_8_grad/sub	Softmax_8*
T0
W
gradients/Neg_grad/NegNeg/gradients/stack_1_grad/tuple/control_dependency*
T0
[
gradients/Neg_1_grad/NegNeg1gradients/stack_1_grad/tuple/control_dependency_1*
T0
[
gradients/Neg_2_grad/NegNeg1gradients/stack_1_grad/tuple/control_dependency_2*
T0
k
*gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC
w
/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1+^gradients/dense_3/BiasAdd_grad/BiasAddGrad
æ
7gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_10^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Sum_10_grad/Tile
ė
9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_3/BiasAdd_grad/BiasAddGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_3/BiasAdd_grad/BiasAddGrad
U
%gradients/strided_slice_15_grad/ShapeShapeaction_probs*
T0*
out_type0
Ń
0gradients/strided_slice_15_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_15_grad/Shapestrided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2gradients/Softmax_6_grad/mul_1*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
U
%gradients/strided_slice_17_grad/ShapeShapeaction_probs*
T0*
out_type0
Ń
0gradients/strided_slice_17_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_17_grad/Shapestrided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2gradients/Softmax_7_grad/mul_1*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
U
%gradients/strided_slice_19_grad/ShapeShapeaction_probs*
T0*
out_type0
Ń
0gradients/strided_slice_19_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_19_grad/Shapestrided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2gradients/Softmax_8_grad/mul_1*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 

Bgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_3*
T0*
out_type0
Ā
Dgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeReshapegradients/Neg_grad/NegBgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_4*
T0*
out_type0
Ä
Dgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeReshapegradients/Neg_1_grad/NegBgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_5*
T0*
out_type0
Ä
Dgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeReshapegradients/Neg_2_grad/NegBgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/Shape*
T0*
Tshape0
«
$gradients/dense_3/MatMul_grad/MatMulMatMul7gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_b(*
T0*
transpose_a( 
³
&gradients/dense_3/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul7gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Ū
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
į
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1
S
gradients/zeros_like_6	ZerosLike%softmax_cross_entropy_with_logits_3:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dim*
T0*

Tdim0
¬
6gradients/softmax_cross_entropy_with_logits_3_grad/mulMul=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims%softmax_cross_entropy_with_logits_3:1*
T0

=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_3/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_3_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dim*
T0*

Tdim0
Į
8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_3_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_3_grad/mul9^gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_3_grad/mulD^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
S
gradients/zeros_like_7	ZerosLike%softmax_cross_entropy_with_logits_4:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims/dim*
T0*

Tdim0
¬
6gradients/softmax_cross_entropy_with_logits_4_grad/mulMul=gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims%softmax_cross_entropy_with_logits_4:1*
T0

=gradients/softmax_cross_entropy_with_logits_4_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_4/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_4_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_4_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1/dim*
T0*

Tdim0
Į
8gradients/softmax_cross_entropy_with_logits_4_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_4_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_4_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_4_grad/mul9^gradients/softmax_cross_entropy_with_logits_4_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_4_grad/mulD^gradients/softmax_cross_entropy_with_logits_4_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_4_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_4_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_4_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_4_grad/mul_1
S
gradients/zeros_like_8	ZerosLike%softmax_cross_entropy_with_logits_5:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims/dim*
T0*

Tdim0
¬
6gradients/softmax_cross_entropy_with_logits_5_grad/mulMul=gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims%softmax_cross_entropy_with_logits_5:1*
T0

=gradients/softmax_cross_entropy_with_logits_5_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_5/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_5_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_5_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1/dim*
T0*

Tdim0
Į
8gradients/softmax_cross_entropy_with_logits_5_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_5_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_5_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_5_grad/mul9^gradients/softmax_cross_entropy_with_logits_5_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_5_grad/mulD^gradients/softmax_cross_entropy_with_logits_5_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_5_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_5_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_5_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_5_grad/mul_1
t
@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ShapeShapestrided_slice_22*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_4/Reshape_grad/ShapeShapestrided_slice_24*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_4/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_4/Reshape_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_5/Reshape_grad/ShapeShapestrided_slice_26*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_5/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_5/Reshape_grad/Shape*
T0*
Tshape0
Q
%gradients/strided_slice_22_grad/ShapeShapeconcat_1*
T0*
out_type0
õ
0gradients/strided_slice_22_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_22_grad/Shapestrided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
Q
%gradients/strided_slice_24_grad/ShapeShapeconcat_1*
T0*
out_type0
õ
0gradients/strided_slice_24_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_24_grad/Shapestrided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2Bgradients/softmax_cross_entropy_with_logits_4/Reshape_grad/Reshape*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
Q
%gradients/strided_slice_26_grad/ShapeShapeconcat_1*
T0*
out_type0
õ
0gradients/strided_slice_26_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_26_grad/Shapestrided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2Bgradients/softmax_cross_entropy_with_logits_5/Reshape_grad/Reshape*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 

gradients/AddN_2AddN0gradients/strided_slice_22_grad/StridedSliceGrad0gradients/strided_slice_24_grad/StridedSliceGrad0gradients/strided_slice_26_grad/StridedSliceGrad*
T0*
N*C
_class9
75loc:@gradients/strided_slice_22_grad/StridedSliceGrad
F
gradients/concat_1_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_1_grad/modFloorModconcat_1/axisgradients/concat_1_grad/Rank*
T0
F
gradients/concat_1_grad/ShapeShapeLog_3*
T0*
out_type0
_
gradients/concat_1_grad/ShapeNShapeNLog_3Log_4Log_5*
T0*
out_type0*
N
¾
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/modgradients/concat_1_grad/ShapeN gradients/concat_1_grad/ShapeN:1 gradients/concat_1_grad/ShapeN:2*
N

gradients/concat_1_grad/SliceSlicegradients/AddN_2$gradients/concat_1_grad/ConcatOffsetgradients/concat_1_grad/ShapeN*
Index0*
T0

gradients/concat_1_grad/Slice_1Slicegradients/AddN_2&gradients/concat_1_grad/ConcatOffset:1 gradients/concat_1_grad/ShapeN:1*
Index0*
T0

gradients/concat_1_grad/Slice_2Slicegradients/AddN_2&gradients/concat_1_grad/ConcatOffset:2 gradients/concat_1_grad/ShapeN:2*
Index0*
T0

(gradients/concat_1_grad/tuple/group_depsNoOp^gradients/concat_1_grad/Slice ^gradients/concat_1_grad/Slice_1 ^gradients/concat_1_grad/Slice_2
Į
0gradients/concat_1_grad/tuple/control_dependencyIdentitygradients/concat_1_grad/Slice)^gradients/concat_1_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_1_grad/Slice
Ē
2gradients/concat_1_grad/tuple/control_dependency_1Identitygradients/concat_1_grad/Slice_1)^gradients/concat_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_1_grad/Slice_1
Ē
2gradients/concat_1_grad/tuple/control_dependency_2Identitygradients/concat_1_grad/Slice_2)^gradients/concat_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_1_grad/Slice_2
p
gradients/Log_3_grad/Reciprocal
Reciprocaladd_61^gradients/concat_1_grad/tuple/control_dependency*
T0
{
gradients/Log_3_grad/mulMul0gradients/concat_1_grad/tuple/control_dependencygradients/Log_3_grad/Reciprocal*
T0
r
gradients/Log_4_grad/Reciprocal
Reciprocaladd_73^gradients/concat_1_grad/tuple/control_dependency_1*
T0
}
gradients/Log_4_grad/mulMul2gradients/concat_1_grad/tuple/control_dependency_1gradients/Log_4_grad/Reciprocal*
T0
r
gradients/Log_5_grad/Reciprocal
Reciprocaladd_83^gradients/concat_1_grad/tuple/control_dependency_2*
T0
}
gradients/Log_5_grad/mulMul2gradients/concat_1_grad/tuple/control_dependency_2gradients/Log_5_grad/Reciprocal*
T0
G
gradients/add_6_grad/ShapeShape	truediv_3*
T0*
out_type0
E
gradients/add_6_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0

gradients/add_6_grad/SumSumgradients/Log_3_grad/mul*gradients/add_6_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
T0*
Tshape0

gradients/add_6_grad/Sum_1Sumgradients/Log_3_grad/mul,gradients/add_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
¹
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_6_grad/Reshape
æ
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1
G
gradients/add_7_grad/ShapeShape	truediv_4*
T0*
out_type0
E
gradients/add_7_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*
T0

gradients/add_7_grad/SumSumgradients/Log_4_grad/mul*gradients/add_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
T0*
Tshape0

gradients/add_7_grad/Sum_1Sumgradients/Log_4_grad/mul,gradients/add_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
¹
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_7_grad/Reshape
æ
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1
G
gradients/add_8_grad/ShapeShape	truediv_5*
T0*
out_type0
E
gradients/add_8_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*
T0

gradients/add_8_grad/SumSumgradients/Log_5_grad/mul*gradients/add_8_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
T0*
Tshape0

gradients/add_8_grad/Sum_1Sumgradients/Log_5_grad/mul,gradients/add_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
¹
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_8_grad/Reshape
æ
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1
E
gradients/truediv_3_grad/ShapeShapeMul*
T0*
out_type0
G
 gradients/truediv_3_grad/Shape_1ShapeSum*
T0*
out_type0

.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*
T0
h
 gradients/truediv_3_grad/RealDivRealDiv-gradients/add_6_grad/tuple/control_dependencySum*
T0

gradients/truediv_3_grad/SumSum gradients/truediv_3_grad/RealDiv.gradients/truediv_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*
T0*
Tshape0
1
gradients/truediv_3_grad/NegNegMul*
T0
Y
"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/NegSum*
T0
_
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1Sum*
T0

gradients/truediv_3_grad/mulMul-gradients/add_6_grad/tuple/control_dependency"gradients/truediv_3_grad/RealDiv_2*
T0

gradients/truediv_3_grad/Sum_1Sumgradients/truediv_3_grad/mul0gradients/truediv_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_3_grad/tuple/group_depsNoOp!^gradients/truediv_3_grad/Reshape#^gradients/truediv_3_grad/Reshape_1
É
1gradients/truediv_3_grad/tuple/control_dependencyIdentity gradients/truediv_3_grad/Reshape*^gradients/truediv_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_3_grad/Reshape
Ļ
3gradients/truediv_3_grad/tuple/control_dependency_1Identity"gradients/truediv_3_grad/Reshape_1*^gradients/truediv_3_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_3_grad/Reshape_1
G
gradients/truediv_4_grad/ShapeShapeMul_1*
T0*
out_type0
I
 gradients/truediv_4_grad/Shape_1ShapeSum_1*
T0*
out_type0

.gradients/truediv_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_4_grad/Shape gradients/truediv_4_grad/Shape_1*
T0
j
 gradients/truediv_4_grad/RealDivRealDiv-gradients/add_7_grad/tuple/control_dependencySum_1*
T0

gradients/truediv_4_grad/SumSum gradients/truediv_4_grad/RealDiv.gradients/truediv_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_4_grad/ReshapeReshapegradients/truediv_4_grad/Sumgradients/truediv_4_grad/Shape*
T0*
Tshape0
3
gradients/truediv_4_grad/NegNegMul_1*
T0
[
"gradients/truediv_4_grad/RealDiv_1RealDivgradients/truediv_4_grad/NegSum_1*
T0
a
"gradients/truediv_4_grad/RealDiv_2RealDiv"gradients/truediv_4_grad/RealDiv_1Sum_1*
T0

gradients/truediv_4_grad/mulMul-gradients/add_7_grad/tuple/control_dependency"gradients/truediv_4_grad/RealDiv_2*
T0

gradients/truediv_4_grad/Sum_1Sumgradients/truediv_4_grad/mul0gradients/truediv_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

"gradients/truediv_4_grad/Reshape_1Reshapegradients/truediv_4_grad/Sum_1 gradients/truediv_4_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_4_grad/tuple/group_depsNoOp!^gradients/truediv_4_grad/Reshape#^gradients/truediv_4_grad/Reshape_1
É
1gradients/truediv_4_grad/tuple/control_dependencyIdentity gradients/truediv_4_grad/Reshape*^gradients/truediv_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_4_grad/Reshape
Ļ
3gradients/truediv_4_grad/tuple/control_dependency_1Identity"gradients/truediv_4_grad/Reshape_1*^gradients/truediv_4_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_4_grad/Reshape_1
G
gradients/truediv_5_grad/ShapeShapeMul_2*
T0*
out_type0
I
 gradients/truediv_5_grad/Shape_1ShapeSum_2*
T0*
out_type0

.gradients/truediv_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_5_grad/Shape gradients/truediv_5_grad/Shape_1*
T0
j
 gradients/truediv_5_grad/RealDivRealDiv-gradients/add_8_grad/tuple/control_dependencySum_2*
T0

gradients/truediv_5_grad/SumSum gradients/truediv_5_grad/RealDiv.gradients/truediv_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_5_grad/ReshapeReshapegradients/truediv_5_grad/Sumgradients/truediv_5_grad/Shape*
T0*
Tshape0
3
gradients/truediv_5_grad/NegNegMul_2*
T0
[
"gradients/truediv_5_grad/RealDiv_1RealDivgradients/truediv_5_grad/NegSum_2*
T0
a
"gradients/truediv_5_grad/RealDiv_2RealDiv"gradients/truediv_5_grad/RealDiv_1Sum_2*
T0

gradients/truediv_5_grad/mulMul-gradients/add_8_grad/tuple/control_dependency"gradients/truediv_5_grad/RealDiv_2*
T0

gradients/truediv_5_grad/Sum_1Sumgradients/truediv_5_grad/mul0gradients/truediv_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

"gradients/truediv_5_grad/Reshape_1Reshapegradients/truediv_5_grad/Sum_1 gradients/truediv_5_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_5_grad/tuple/group_depsNoOp!^gradients/truediv_5_grad/Reshape#^gradients/truediv_5_grad/Reshape_1
É
1gradients/truediv_5_grad/tuple/control_dependencyIdentity gradients/truediv_5_grad/Reshape*^gradients/truediv_5_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_5_grad/Reshape
Ļ
3gradients/truediv_5_grad/tuple/control_dependency_1Identity"gradients/truediv_5_grad/Reshape_1*^gradients/truediv_5_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_5_grad/Reshape_1
?
gradients/Sum_grad/ShapeShapeMul*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*
valueB *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
u
gradients/Sum_grad/range/startConst*
value	B : *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
u
gradients/Sum_grad/range/deltaConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
³
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape
t
gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
¢
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape
Õ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*
N*+
_class!
loc:@gradients/Sum_grad/Shape
s
gradients/Sum_grad/Maximum/yConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/ReshapeReshape3gradients/truediv_3_grad/tuple/control_dependency_1 gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
T0*

Tmultiples0
C
gradients/Sum_1_grad/ShapeShapeMul_1*
T0*
out_type0
r
gradients/Sum_1_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
t
gradients/Sum_1_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
y
 gradients/Sum_1_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
y
 gradients/Sum_1_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
½
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
x
gradients/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
Ŗ
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
į
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_1_grad/Shape
w
gradients/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
£
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/ReshapeReshape3gradients/truediv_4_grad/tuple/control_dependency_1"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*
T0*

Tmultiples0
C
gradients/Sum_2_grad/ShapeShapeMul_2*
T0*
out_type0
r
gradients/Sum_2_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/addAddSum_2/reduction_indicesgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
t
gradients/Sum_2_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
y
 gradients/Sum_2_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
y
 gradients/Sum_2_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
½
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
x
gradients/Sum_2_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
Ŗ
gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
į
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_2_grad/Shape
w
gradients/Sum_2_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
£
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/ReshapeReshape3gradients/truediv_5_grad/tuple/control_dependency_1"gradients/Sum_2_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*
T0*

Tmultiples0
«
gradients/AddN_3AddN1gradients/truediv_3_grad/tuple/control_dependencygradients/Sum_grad/Tile*
T0*
N*3
_class)
'%loc:@gradients/truediv_3_grad/Reshape
A
gradients/Mul_grad/ShapeShapeadd_3*
T0*
out_type0
M
gradients/Mul_grad/Shape_1Shapestrided_slice_3*
T0*
out_type0

(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
I
gradients/Mul_grad/MulMulgradients/AddN_3strided_slice_3*
T0

gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
A
gradients/Mul_grad/Mul_1Muladd_3gradients/AddN_3*
T0

gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/Mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
t
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
±
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape
·
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1
­
gradients/AddN_4AddN1gradients/truediv_4_grad/tuple/control_dependencygradients/Sum_1_grad/Tile*
T0*
N*3
_class)
'%loc:@gradients/truediv_4_grad/Reshape
C
gradients/Mul_1_grad/ShapeShapeadd_4*
T0*
out_type0
O
gradients/Mul_1_grad/Shape_1Shapestrided_slice_4*
T0*
out_type0

*gradients/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_1_grad/Shapegradients/Mul_1_grad/Shape_1*
T0
K
gradients/Mul_1_grad/MulMulgradients/AddN_4strided_slice_4*
T0

gradients/Mul_1_grad/SumSumgradients/Mul_1_grad/Mul*gradients/Mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/Mul_1_grad/ReshapeReshapegradients/Mul_1_grad/Sumgradients/Mul_1_grad/Shape*
T0*
Tshape0
C
gradients/Mul_1_grad/Mul_1Muladd_4gradients/AddN_4*
T0

gradients/Mul_1_grad/Sum_1Sumgradients/Mul_1_grad/Mul_1,gradients/Mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/Mul_1_grad/Reshape_1Reshapegradients/Mul_1_grad/Sum_1gradients/Mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_1_grad/tuple/group_depsNoOp^gradients/Mul_1_grad/Reshape^gradients/Mul_1_grad/Reshape_1
¹
-gradients/Mul_1_grad/tuple/control_dependencyIdentitygradients/Mul_1_grad/Reshape&^gradients/Mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_1_grad/Reshape
æ
/gradients/Mul_1_grad/tuple/control_dependency_1Identitygradients/Mul_1_grad/Reshape_1&^gradients/Mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_1_grad/Reshape_1
­
gradients/AddN_5AddN1gradients/truediv_5_grad/tuple/control_dependencygradients/Sum_2_grad/Tile*
T0*
N*3
_class)
'%loc:@gradients/truediv_5_grad/Reshape
C
gradients/Mul_2_grad/ShapeShapeadd_5*
T0*
out_type0
O
gradients/Mul_2_grad/Shape_1Shapestrided_slice_5*
T0*
out_type0

*gradients/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_2_grad/Shapegradients/Mul_2_grad/Shape_1*
T0
K
gradients/Mul_2_grad/MulMulgradients/AddN_5strided_slice_5*
T0

gradients/Mul_2_grad/SumSumgradients/Mul_2_grad/Mul*gradients/Mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/Mul_2_grad/ReshapeReshapegradients/Mul_2_grad/Sumgradients/Mul_2_grad/Shape*
T0*
Tshape0
C
gradients/Mul_2_grad/Mul_1Muladd_5gradients/AddN_5*
T0

gradients/Mul_2_grad/Sum_1Sumgradients/Mul_2_grad/Mul_1,gradients/Mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/Mul_2_grad/Reshape_1Reshapegradients/Mul_2_grad/Sum_1gradients/Mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_2_grad/tuple/group_depsNoOp^gradients/Mul_2_grad/Reshape^gradients/Mul_2_grad/Reshape_1
¹
-gradients/Mul_2_grad/tuple/control_dependencyIdentitygradients/Mul_2_grad/Reshape&^gradients/Mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_2_grad/Reshape
æ
/gradients/Mul_2_grad/tuple/control_dependency_1Identitygradients/Mul_2_grad/Reshape_1&^gradients/Mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_2_grad/Reshape_1
E
gradients/add_3_grad/ShapeShapeSoftmax*
T0*
out_type0
E
gradients/add_3_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0

gradients/add_3_grad/SumSum+gradients/Mul_grad/tuple/control_dependency*gradients/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
Tshape0
¢
gradients/add_3_grad/Sum_1Sum+gradients/Mul_grad/tuple/control_dependency,gradients/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
¹
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape
æ
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
G
gradients/add_4_grad/ShapeShape	Softmax_1*
T0*
out_type0
E
gradients/add_4_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0
 
gradients/add_4_grad/SumSum-gradients/Mul_1_grad/tuple/control_dependency*gradients/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0
¤
gradients/add_4_grad/Sum_1Sum-gradients/Mul_1_grad/tuple/control_dependency,gradients/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
¹
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape
æ
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
G
gradients/add_5_grad/ShapeShape	Softmax_2*
T0*
out_type0
E
gradients/add_5_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0
 
gradients/add_5_grad/SumSum-gradients/Mul_2_grad/tuple/control_dependency*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
Tshape0
¤
gradients/add_5_grad/Sum_1Sum-gradients/Mul_2_grad/tuple/control_dependency,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
¹
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_5_grad/Reshape
æ
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
b
gradients/Softmax_grad/mulMul-gradients/add_3_grad/tuple/control_dependencySoftmax*
T0
Z
,gradients/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
Y
$gradients/Softmax_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*
T0*
Tshape0
y
gradients/Softmax_grad/subSub-gradients/add_3_grad/tuple/control_dependencygradients/Softmax_grad/Reshape*
T0
Q
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0
f
gradients/Softmax_1_grad/mulMul-gradients/add_4_grad/tuple/control_dependency	Softmax_1*
T0
\
.gradients/Softmax_1_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_1_grad/SumSumgradients/Softmax_1_grad/mul.gradients/Softmax_1_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
[
&gradients/Softmax_1_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

 gradients/Softmax_1_grad/ReshapeReshapegradients/Softmax_1_grad/Sum&gradients/Softmax_1_grad/Reshape/shape*
T0*
Tshape0
}
gradients/Softmax_1_grad/subSub-gradients/add_4_grad/tuple/control_dependency gradients/Softmax_1_grad/Reshape*
T0
W
gradients/Softmax_1_grad/mul_1Mulgradients/Softmax_1_grad/sub	Softmax_1*
T0
f
gradients/Softmax_2_grad/mulMul-gradients/add_5_grad/tuple/control_dependency	Softmax_2*
T0
\
.gradients/Softmax_2_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_2_grad/SumSumgradients/Softmax_2_grad/mul.gradients/Softmax_2_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
[
&gradients/Softmax_2_grad/Reshape/shapeConst*
valueB"’’’’   *
dtype0

 gradients/Softmax_2_grad/ReshapeReshapegradients/Softmax_2_grad/Sum&gradients/Softmax_2_grad/Reshape/shape*
T0*
Tshape0
}
gradients/Softmax_2_grad/subSub-gradients/add_5_grad/tuple/control_dependency gradients/Softmax_2_grad/Reshape*
T0
W
gradients/Softmax_2_grad/mul_1Mulgradients/Softmax_2_grad/sub	Softmax_2*
T0
R
"gradients/strided_slice_grad/ShapeShapeaction_probs*
T0*
out_type0
Ą
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad"gradients/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2gradients/Softmax_grad/mul_1*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
T
$gradients/strided_slice_1_grad/ShapeShapeaction_probs*
T0*
out_type0
Ģ
/gradients/strided_slice_1_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_1_grad/Shapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2gradients/Softmax_1_grad/mul_1*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
T
$gradients/strided_slice_2_grad/ShapeShapeaction_probs*
T0*
out_type0
Ģ
/gradients/strided_slice_2_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_2_grad/Shapestrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2gradients/Softmax_2_grad/mul_1*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
¬
gradients/AddN_6AddN0gradients/strided_slice_16_grad/StridedSliceGrad0gradients/strided_slice_18_grad/StridedSliceGrad0gradients/strided_slice_20_grad/StridedSliceGrad0gradients/strided_slice_15_grad/StridedSliceGrad0gradients/strided_slice_17_grad/StridedSliceGrad0gradients/strided_slice_19_grad/StridedSliceGrad-gradients/strided_slice_grad/StridedSliceGrad/gradients/strided_slice_1_grad/StridedSliceGrad/gradients/strided_slice_2_grad/StridedSliceGrad*
T0*
N	*C
_class9
75loc:@gradients/strided_slice_16_grad/StridedSliceGrad
J
 gradients/action_probs_grad/RankConst*
value	B :*
dtype0
i
gradients/action_probs_grad/modFloorModaction_probs/axis gradients/action_probs_grad/Rank*
T0
Q
!gradients/action_probs_grad/ShapeShapedense/MatMul*
T0*
out_type0
|
"gradients/action_probs_grad/ShapeNShapeNdense/MatMuldense_1/MatMuldense_2/MatMul*
T0*
out_type0*
N
Ņ
(gradients/action_probs_grad/ConcatOffsetConcatOffsetgradients/action_probs_grad/mod"gradients/action_probs_grad/ShapeN$gradients/action_probs_grad/ShapeN:1$gradients/action_probs_grad/ShapeN:2*
N
 
!gradients/action_probs_grad/SliceSlicegradients/AddN_6(gradients/action_probs_grad/ConcatOffset"gradients/action_probs_grad/ShapeN*
Index0*
T0
¦
#gradients/action_probs_grad/Slice_1Slicegradients/AddN_6*gradients/action_probs_grad/ConcatOffset:1$gradients/action_probs_grad/ShapeN:1*
Index0*
T0
¦
#gradients/action_probs_grad/Slice_2Slicegradients/AddN_6*gradients/action_probs_grad/ConcatOffset:2$gradients/action_probs_grad/ShapeN:2*
Index0*
T0
¤
,gradients/action_probs_grad/tuple/group_depsNoOp"^gradients/action_probs_grad/Slice$^gradients/action_probs_grad/Slice_1$^gradients/action_probs_grad/Slice_2
Ń
4gradients/action_probs_grad/tuple/control_dependencyIdentity!gradients/action_probs_grad/Slice-^gradients/action_probs_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/action_probs_grad/Slice
×
6gradients/action_probs_grad/tuple/control_dependency_1Identity#gradients/action_probs_grad/Slice_1-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Slice_1
×
6gradients/action_probs_grad/tuple/control_dependency_2Identity#gradients/action_probs_grad/Slice_2-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Slice_2
¤
"gradients/dense/MatMul_grad/MatMulMatMul4gradients/action_probs_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( 
®
$gradients/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul4gradients/action_probs_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ł
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
Ŗ
$gradients/dense_1/MatMul_grad/MatMulMatMul6gradients/action_probs_grad/tuple/control_dependency_1dense_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
²
&gradients/dense_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients/action_probs_grad/tuple/control_dependency_1*
transpose_b( *
T0*
transpose_a(

.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
Ū
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
į
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
Ŗ
$gradients/dense_2/MatMul_grad/MatMulMatMul6gradients/action_probs_grad/tuple/control_dependency_2dense_2/kernel/read*
transpose_b(*
T0*
transpose_a( 
²
&gradients/dense_2/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients/action_probs_grad/tuple/control_dependency_2*
transpose_b( *
T0*
transpose_a(

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Ū
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
į
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
Į
gradients/AddN_7AddN6gradients/dense_3/MatMul_grad/tuple/control_dependency4gradients/dense/MatMul_grad/tuple/control_dependency6gradients/dense_1/MatMul_grad/tuple/control_dependency6gradients/dense_2/MatMul_grad/tuple/control_dependency*
T0*
N*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
o
.gradients/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
Ā
>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_1/Mul_grad/Shape0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0
m
,gradients/main_graph_0/hidden_1/Mul_grad/MulMulgradients/AddN_7main_graph_0/hidden_1/Sigmoid*
T0
Ē
,gradients/main_graph_0/hidden_1/Mul_grad/SumSum,gradients/main_graph_0/hidden_1/Mul_grad/Mul>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0gradients/main_graph_0/hidden_1/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_1/Mul_grad/Sum.gradients/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0
o
.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAddgradients/AddN_7*
T0
Ķ
.gradients/main_graph_0/hidden_1/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1@gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_1/Mul_grad/Sum_10gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_1/Mul_grad/Reshape3^gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_1/Mul_grad/Reshape:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1
“
8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidCgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
ģ
gradients/AddN_8AddNAgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*
N*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
y
8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_8*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_89^gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
ń
Egradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_8>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ļ
4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_1/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1
o
.gradients/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
Ā
>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_0/Mul_grad/Shape0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
”
,gradients/main_graph_0/hidden_0/Mul_grad/MulMulDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
Ē
,gradients/main_graph_0/hidden_0/Mul_grad/SumSum,gradients/main_graph_0/hidden_0/Mul_grad/Mul>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0gradients/main_graph_0/hidden_0/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_0/Mul_grad/Sum.gradients/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
£
.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Ķ
.gradients/main_graph_0/hidden_0/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1@gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_0/Mul_grad/Sum_10gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_0/Mul_grad/Reshape3^gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_0/Mul_grad/Reshape:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1
“
8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidCgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
ģ
gradients/AddN_9AddNAgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*
N*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
y
8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_9*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_99^gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
ń
Egradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_9>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ę
4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulnormalized_stateEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_0/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1
g
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@dense/kernel
x
beta1_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@dense/kernel

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
S
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/kernel
g
beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*
_class
loc:@dense/kernel
x
beta2_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@dense/kernel

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
S
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/kernel
©
Cmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"Ļ      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

3main_graph_0/hidden_0/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
Ø
!main_graph_0/hidden_0/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
Ļ*
	container */
_class%
#!loc:@main_graph_0/hidden_0/kernel
ķ
(main_graph_0/hidden_0/kernel/Adam/AssignAssign!main_graph_0/hidden_0/kernel/Adam3main_graph_0/hidden_0/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

&main_graph_0/hidden_0/kernel/Adam/readIdentity!main_graph_0/hidden_0/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
«
Emain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"Ļ      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

5main_graph_0/hidden_0/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
Ŗ
#main_graph_0/hidden_0/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
Ļ*
	container */
_class%
#!loc:@main_graph_0/hidden_0/kernel
ó
*main_graph_0/hidden_0/kernel/Adam_1/AssignAssign#main_graph_0/hidden_0/kernel/Adam_15main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

(main_graph_0/hidden_0/kernel/Adam_1/readIdentity#main_graph_0/hidden_0/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

Amain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias

7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias
’
1main_graph_0/hidden_0/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_0/bias
å
&main_graph_0/hidden_0/bias/Adam/AssignAssignmain_graph_0/hidden_0/bias/Adam1main_graph_0/hidden_0/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias

$main_graph_0/hidden_0/bias/Adam/readIdentitymain_graph_0/hidden_0/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
”
Cmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias

9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias

3main_graph_0/hidden_0/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_0/bias
”
!main_graph_0/hidden_0/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_0/bias
ė
(main_graph_0/hidden_0/bias/Adam_1/AssignAssign!main_graph_0/hidden_0/bias/Adam_13main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias

&main_graph_0/hidden_0/bias/Adam_1/readIdentity!main_graph_0/hidden_0/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
©
Cmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

3main_graph_0/hidden_1/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
Ø
!main_graph_0/hidden_1/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container */
_class%
#!loc:@main_graph_0/hidden_1/kernel
ķ
(main_graph_0/hidden_1/kernel/Adam/AssignAssign!main_graph_0/hidden_1/kernel/Adam3main_graph_0/hidden_1/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

&main_graph_0/hidden_1/kernel/Adam/readIdentity!main_graph_0/hidden_1/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
«
Emain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

5main_graph_0/hidden_1/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
Ŗ
#main_graph_0/hidden_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container */
_class%
#!loc:@main_graph_0/hidden_1/kernel
ó
*main_graph_0/hidden_1/kernel/Adam_1/AssignAssign#main_graph_0/hidden_1/kernel/Adam_15main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

(main_graph_0/hidden_1/kernel/Adam_1/readIdentity#main_graph_0/hidden_1/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

Amain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias

7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias
’
1main_graph_0/hidden_1/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_1/bias
å
&main_graph_0/hidden_1/bias/Adam/AssignAssignmain_graph_0/hidden_1/bias/Adam1main_graph_0/hidden_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias

$main_graph_0/hidden_1/bias/Adam/readIdentitymain_graph_0/hidden_1/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
”
Cmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias

9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias

3main_graph_0/hidden_1/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_1/bias
”
!main_graph_0/hidden_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_1/bias
ė
(main_graph_0/hidden_1/bias/Adam_1/AssignAssign!main_graph_0/hidden_1/bias/Adam_13main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias

&main_graph_0/hidden_1/bias/Adam_1/readIdentity!main_graph_0/hidden_1/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel
w
)dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel
Ē
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel

dense/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	*
	container *
_class
loc:@dense/kernel
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel

5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel
y
+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel
Ķ
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel

dense/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	*
	container *
_class
loc:@dense/kernel
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel

5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel
{
+dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel
Ļ
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_1/kernel
µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel
}
-dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel
Õ
'dense_1/kernel/Adam_1/Initializer/zerosFill7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_1/kernel
»
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel

5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel
{
+dense_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel
Ļ
%dense_2/kernel/Adam/Initializer/zerosFill5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_2/kernel
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel
}
-dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel
Õ
'dense_2/kernel/Adam_1/Initializer/zerosFill7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_2/kernel
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel

5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel
{
+dense_3/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_3/kernel
Ļ
%dense_3/kernel/Adam/Initializer/zerosFill5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_3/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_3/kernel
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel

7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel
}
-dense_3/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_3/kernel
Õ
'dense_3/kernel/Adam_1/Initializer/zerosFill7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_3/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_3/kernel
»
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel

3dense_3/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_3/bias
w
)dense_3/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_3/bias
Ē
#dense_3/bias/Adam/Initializer/zerosFill3dense_3/bias/Adam/Initializer/zeros/shape_as_tensor)dense_3/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_3/bias

dense_3/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_3/bias
­
dense_3/bias/Adam/AssignAssigndense_3/bias/Adam#dense_3/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias
_
dense_3/bias/Adam/readIdentitydense_3/bias/Adam*
T0*
_class
loc:@dense_3/bias

5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_3/bias
y
+dense_3/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_3/bias
Ķ
%dense_3/bias/Adam_1/Initializer/zerosFill5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_3/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_3/bias

dense_3/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_3/bias
³
dense_3/bias/Adam_1/AssignAssigndense_3/bias/Adam_1%dense_3/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias
c
dense_3/bias/Adam_1/readIdentitydense_3/bias/Adam_1*
T0*
_class
loc:@dense_3/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0
©
2Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
use_nesterov( 
 
0Adam/update_main_graph_0/hidden_0/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *-
_class#
!loc:@main_graph_0/hidden_0/bias*
use_nesterov( 
©
2Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
use_nesterov( 
 
0Adam/update_main_graph_0/hidden_1/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *-
_class#
!loc:@main_graph_0/hidden_1/bias*
use_nesterov( 
É
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense/kernel*
use_nesterov( 
Õ
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_1/kernel*
use_nesterov( 
Õ
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_2/kernel*
use_nesterov( 
Õ
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_3/kernel*
use_nesterov( 
Ģ
"Adam/update_dense_3/bias/ApplyAdam	ApplyAdamdense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_3/bias*
use_nesterov( 
ę
Adam/mulMulbeta1_power/read
Adam/beta13^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
use_locking( *
validate_shape(*
_class
loc:@dense/kernel
č

Adam/mul_1Mulbeta2_power/read
Adam/beta23^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
use_locking( *
validate_shape(*
_class
loc:@dense/kernel
¹
AdamNoOp3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
8

save/ConstConst*
valueB Bmodel*
dtype0

save/SaveV2/tensor_namesConst*Ž
valueŌBŃ%Baction_output_shapeBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bglobal_stepBis_continuous_controlBlast_rewardBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmemory_sizeBrunning_meanBrunning_varianceBversion_number*
dtype0

save/SaveV2/shape_and_slicesConst*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
×
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaction_output_shapebeta1_powerbeta2_powerdense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1global_stepis_continuous_controllast_rewardmain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1main_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1main_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1main_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1memory_sizerunning_meanrunning_varianceversion_number*3
dtypes)
'2%
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
”
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ž
valueŌBŃ%Baction_output_shapeBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bglobal_stepBis_continuous_controlBlast_rewardBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmemory_sizeBrunning_meanBrunning_varianceBversion_number*
dtype0
£
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
©
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*3
dtypes)
'2%

save/AssignAssignaction_output_shapesave/RestoreV2*
T0*
use_locking(*
validate_shape(*&
_class
loc:@action_output_shape

save/Assign_1Assignbeta1_powersave/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_2Assignbeta2_powersave/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_3Assigndense/kernelsave/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_4Assigndense/kernel/Adamsave/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_5Assigndense/kernel/Adam_1save/RestoreV2:5*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_6Assigndense_1/kernelsave/RestoreV2:6*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel

save/Assign_7Assigndense_1/kernel/Adamsave/RestoreV2:7*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel

save/Assign_8Assigndense_1/kernel/Adam_1save/RestoreV2:8*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel

save/Assign_9Assigndense_2/kernelsave/RestoreV2:9*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel

save/Assign_10Assigndense_2/kernel/Adamsave/RestoreV2:10*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel

save/Assign_11Assigndense_2/kernel/Adam_1save/RestoreV2:11*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel

save/Assign_12Assigndense_3/biassave/RestoreV2:12*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias

save/Assign_13Assigndense_3/bias/Adamsave/RestoreV2:13*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias

save/Assign_14Assigndense_3/bias/Adam_1save/RestoreV2:14*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias

save/Assign_15Assigndense_3/kernelsave/RestoreV2:15*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel

save/Assign_16Assigndense_3/kernel/Adamsave/RestoreV2:16*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel

save/Assign_17Assigndense_3/kernel/Adam_1save/RestoreV2:17*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel

save/Assign_18Assignglobal_stepsave/RestoreV2:18*
T0*
use_locking(*
validate_shape(*
_class
loc:@global_step

save/Assign_19Assignis_continuous_controlsave/RestoreV2:19*
T0*
use_locking(*
validate_shape(*(
_class
loc:@is_continuous_control

save/Assign_20Assignlast_rewardsave/RestoreV2:20*
T0*
use_locking(*
validate_shape(*
_class
loc:@last_reward
Ø
save/Assign_21Assignmain_graph_0/hidden_0/biassave/RestoreV2:21*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias
­
save/Assign_22Assignmain_graph_0/hidden_0/bias/Adamsave/RestoreV2:22*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias
Æ
save/Assign_23Assign!main_graph_0/hidden_0/bias/Adam_1save/RestoreV2:23*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias
¬
save/Assign_24Assignmain_graph_0/hidden_0/kernelsave/RestoreV2:24*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
±
save/Assign_25Assign!main_graph_0/hidden_0/kernel/Adamsave/RestoreV2:25*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
³
save/Assign_26Assign#main_graph_0/hidden_0/kernel/Adam_1save/RestoreV2:26*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
Ø
save/Assign_27Assignmain_graph_0/hidden_1/biassave/RestoreV2:27*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias
­
save/Assign_28Assignmain_graph_0/hidden_1/bias/Adamsave/RestoreV2:28*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias
Æ
save/Assign_29Assign!main_graph_0/hidden_1/bias/Adam_1save/RestoreV2:29*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias
¬
save/Assign_30Assignmain_graph_0/hidden_1/kernelsave/RestoreV2:30*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
±
save/Assign_31Assign!main_graph_0/hidden_1/kernel/Adamsave/RestoreV2:31*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
³
save/Assign_32Assign#main_graph_0/hidden_1/kernel/Adam_1save/RestoreV2:32*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

save/Assign_33Assignmemory_sizesave/RestoreV2:33*
T0*
use_locking(*
validate_shape(*
_class
loc:@memory_size

save/Assign_34Assignrunning_meansave/RestoreV2:34*
T0*
use_locking(*
validate_shape(*
_class
loc:@running_mean

save/Assign_35Assignrunning_variancesave/RestoreV2:35*
T0*
use_locking(*
validate_shape(*#
_class
loc:@running_variance

save/Assign_36Assignversion_numbersave/RestoreV2:36*
T0*
use_locking(*
validate_shape(*!
_class
loc:@version_number

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36
ż
initNoOp^global_step/Assign^is_continuous_control/Assign^version_number/Assign^memory_size/Assign^action_output_shape/Assign^last_reward/Assign^running_mean/Assign^running_variance/Assign$^main_graph_0/hidden_0/kernel/Assign"^main_graph_0/hidden_0/bias/Assign$^main_graph_0/hidden_1/kernel/Assign"^main_graph_0/hidden_1/bias/Assign^dense/kernel/Assign^dense_1/kernel/Assign^dense_2/kernel/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^beta1_power/Assign^beta2_power/Assign)^main_graph_0/hidden_0/kernel/Adam/Assign+^main_graph_0/hidden_0/kernel/Adam_1/Assign'^main_graph_0/hidden_0/bias/Adam/Assign)^main_graph_0/hidden_0/bias/Adam_1/Assign)^main_graph_0/hidden_1/kernel/Adam/Assign+^main_graph_0/hidden_1/kernel/Adam_1/Assign'^main_graph_0/hidden_1/bias/Adam/Assign)^main_graph_0/hidden_1/bias/Adam_1/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_3/bias/Adam/Assign^dense_3/bias/Adam_1/Assign"
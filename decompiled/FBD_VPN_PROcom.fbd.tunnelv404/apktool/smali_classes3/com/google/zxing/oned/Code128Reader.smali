.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:F = 0.25f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f


# direct methods
.method static constructor <clinit>()V
    .locals 110

    const/4 v2, 0x6

    .line 1
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v4, v2, [I

    fill-array-data v4, :array_1

    new-array v5, v2, [I

    fill-array-data v5, :array_2

    new-array v7, v2, [I

    fill-array-data v7, :array_3

    new-array v8, v2, [I

    fill-array-data v8, :array_4

    new-array v9, v2, [I

    fill-array-data v9, :array_5

    new-array v10, v2, [I

    fill-array-data v10, :array_6

    new-array v11, v2, [I

    fill-array-data v11, :array_7

    new-array v12, v2, [I

    fill-array-data v12, :array_8

    new-array v13, v2, [I

    fill-array-data v13, :array_9

    new-array v14, v2, [I

    fill-array-data v14, :array_a

    new-array v15, v2, [I

    fill-array-data v15, :array_b

    new-array v6, v2, [I

    fill-array-data v6, :array_c

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    move-object/from16 v16, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    move-object/from16 v17, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    move-object/from16 v18, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    move-object/from16 v19, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    move-object/from16 v20, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    move-object/from16 v21, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    move-object/from16 v22, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_15

    move-object/from16 v23, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_16

    move-object/from16 v24, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_17

    move-object/from16 v25, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_18

    move-object/from16 v26, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_19

    move-object/from16 v27, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_1a

    move-object/from16 v28, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_1b

    move-object/from16 v29, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_1c

    move-object/from16 v30, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_1d

    move-object/from16 v31, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_1e

    move-object/from16 v32, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_1f

    move-object/from16 v33, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_20

    move-object/from16 v34, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_21

    move-object/from16 v35, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_22

    move-object/from16 v36, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_23

    move-object/from16 v37, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_24

    move-object/from16 v38, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_25

    move-object/from16 v39, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_26

    move-object/from16 v40, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_27

    move-object/from16 v41, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_28

    move-object/from16 v42, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_29

    move-object/from16 v43, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_2a

    move-object/from16 v44, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_2b

    move-object/from16 v45, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_2c

    move-object/from16 v46, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_2d

    move-object/from16 v47, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_2e

    move-object/from16 v48, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_2f

    move-object/from16 v49, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_30

    move-object/from16 v50, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_31

    move-object/from16 v51, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_32

    move-object/from16 v52, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_33

    move-object/from16 v53, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_34

    move-object/from16 v54, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_35

    move-object/from16 v55, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_36

    move-object/from16 v56, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_37

    move-object/from16 v57, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_38

    move-object/from16 v58, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_39

    move-object/from16 v59, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_3a

    move-object/from16 v60, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_3b

    const/16 v61, 0x4

    move-object/from16 v62, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_3c

    move-object/from16 v63, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_3d

    move-object/from16 v64, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_3e

    move-object/from16 v65, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_3f

    move-object/from16 v66, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_40

    move-object/from16 v67, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_41

    move-object/from16 v68, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_42

    move-object/from16 v69, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_43

    move-object/from16 v70, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_44

    move-object/from16 v71, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_45

    move-object/from16 v72, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_46

    move-object/from16 v73, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_47

    move-object/from16 v74, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_48

    move-object/from16 v75, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_49

    move-object/from16 v76, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_4a

    move-object/from16 v77, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_4b

    move-object/from16 v78, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_4c

    move-object/from16 v79, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_4d

    move-object/from16 v80, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_4e

    move-object/from16 v81, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_4f

    move-object/from16 v82, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_50

    move-object/from16 v83, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_51

    move-object/from16 v84, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_52

    move-object/from16 v85, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_53

    move-object/from16 v86, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_54

    move-object/from16 v87, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_55

    move-object/from16 v88, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_56

    move-object/from16 v89, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_57

    move-object/from16 v90, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_58

    move-object/from16 v91, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_59

    move-object/from16 v92, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_5a

    move-object/from16 v93, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_5b

    move-object/from16 v94, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_5c

    move-object/from16 v95, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_5d

    move-object/from16 v96, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_5e

    move-object/from16 v97, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_5f

    move-object/from16 v98, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_60

    move-object/from16 v99, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_61

    move-object/from16 v100, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_62

    move-object/from16 v101, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_63

    move-object/from16 v102, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_64

    move-object/from16 v103, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_65

    move-object/from16 v104, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_66

    move-object/from16 v105, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_67

    move-object/from16 v106, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_68

    move-object/from16 v107, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_69

    const/4 v2, 0x7

    move-object/from16 v108, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_6a

    const/16 v2, 0x6b

    new-array v2, v2, [[I

    const/16 v109, 0x0

    aput-object v3, v2, v109

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v7, v2, v3

    aput-object v8, v2, v61

    const/4 v3, 0x5

    aput-object v9, v2, v3

    const/4 v3, 0x6

    aput-object v10, v2, v3

    const/4 v3, 0x7

    aput-object v11, v2, v3

    const/16 v3, 0x8

    aput-object v12, v2, v3

    const/16 v3, 0x9

    aput-object v13, v2, v3

    const/16 v3, 0xa

    aput-object v14, v2, v3

    const/16 v3, 0xb

    aput-object v15, v2, v3

    const/16 v3, 0xc

    aput-object v6, v2, v3

    const/16 v3, 0xd

    aput-object v0, v2, v3

    const/16 v0, 0xe

    aput-object v16, v2, v0

    const/16 v0, 0xf

    aput-object v17, v2, v0

    const/16 v0, 0x10

    aput-object v18, v2, v0

    const/16 v0, 0x11

    aput-object v19, v2, v0

    const/16 v0, 0x12

    aput-object v20, v2, v0

    const/16 v0, 0x13

    aput-object v21, v2, v0

    const/16 v0, 0x14

    aput-object v22, v2, v0

    const/16 v0, 0x15

    aput-object v23, v2, v0

    const/16 v0, 0x16

    aput-object v24, v2, v0

    const/16 v0, 0x17

    aput-object v25, v2, v0

    const/16 v0, 0x18

    aput-object v26, v2, v0

    const/16 v0, 0x19

    aput-object v27, v2, v0

    const/16 v0, 0x1a

    aput-object v28, v2, v0

    const/16 v0, 0x1b

    aput-object v29, v2, v0

    const/16 v0, 0x1c

    aput-object v30, v2, v0

    const/16 v0, 0x1d

    aput-object v31, v2, v0

    const/16 v0, 0x1e

    aput-object v32, v2, v0

    const/16 v0, 0x1f

    aput-object v33, v2, v0

    const/16 v0, 0x20

    aput-object v34, v2, v0

    const/16 v0, 0x21

    aput-object v35, v2, v0

    const/16 v0, 0x22

    aput-object v36, v2, v0

    const/16 v0, 0x23

    aput-object v37, v2, v0

    const/16 v0, 0x24

    aput-object v38, v2, v0

    const/16 v0, 0x25

    aput-object v39, v2, v0

    const/16 v0, 0x26

    aput-object v40, v2, v0

    const/16 v0, 0x27

    aput-object v41, v2, v0

    const/16 v0, 0x28

    aput-object v42, v2, v0

    const/16 v0, 0x29

    aput-object v43, v2, v0

    const/16 v0, 0x2a

    aput-object v44, v2, v0

    const/16 v0, 0x2b

    aput-object v45, v2, v0

    const/16 v0, 0x2c

    aput-object v46, v2, v0

    const/16 v0, 0x2d

    aput-object v47, v2, v0

    const/16 v0, 0x2e

    aput-object v48, v2, v0

    const/16 v0, 0x2f

    aput-object v49, v2, v0

    const/16 v0, 0x30

    aput-object v50, v2, v0

    const/16 v0, 0x31

    aput-object v51, v2, v0

    const/16 v0, 0x32

    aput-object v52, v2, v0

    const/16 v0, 0x33

    aput-object v53, v2, v0

    const/16 v0, 0x34

    aput-object v54, v2, v0

    const/16 v0, 0x35

    aput-object v55, v2, v0

    const/16 v0, 0x36

    aput-object v56, v2, v0

    const/16 v0, 0x37

    aput-object v57, v2, v0

    const/16 v0, 0x38

    aput-object v58, v2, v0

    const/16 v0, 0x39

    aput-object v59, v2, v0

    const/16 v0, 0x3a

    aput-object v60, v2, v0

    const/16 v0, 0x3b

    aput-object v62, v2, v0

    const/16 v0, 0x3c

    aput-object v63, v2, v0

    const/16 v0, 0x3d

    aput-object v64, v2, v0

    const/16 v0, 0x3e

    aput-object v65, v2, v0

    const/16 v0, 0x3f

    aput-object v66, v2, v0

    const/16 v0, 0x40

    aput-object v67, v2, v0

    const/16 v0, 0x41

    aput-object v68, v2, v0

    const/16 v0, 0x42

    aput-object v69, v2, v0

    const/16 v0, 0x43

    aput-object v70, v2, v0

    const/16 v0, 0x44

    aput-object v71, v2, v0

    const/16 v0, 0x45

    aput-object v72, v2, v0

    const/16 v0, 0x46

    aput-object v73, v2, v0

    const/16 v0, 0x47

    aput-object v74, v2, v0

    const/16 v0, 0x48

    aput-object v75, v2, v0

    const/16 v0, 0x49

    aput-object v76, v2, v0

    const/16 v0, 0x4a

    aput-object v77, v2, v0

    const/16 v0, 0x4b

    aput-object v78, v2, v0

    const/16 v0, 0x4c

    aput-object v79, v2, v0

    const/16 v0, 0x4d

    aput-object v80, v2, v0

    const/16 v0, 0x4e

    aput-object v81, v2, v0

    const/16 v0, 0x4f

    aput-object v82, v2, v0

    const/16 v0, 0x50

    aput-object v83, v2, v0

    const/16 v0, 0x51

    aput-object v84, v2, v0

    const/16 v0, 0x52

    aput-object v85, v2, v0

    const/16 v0, 0x53

    aput-object v86, v2, v0

    const/16 v0, 0x54

    aput-object v87, v2, v0

    const/16 v0, 0x55

    aput-object v88, v2, v0

    const/16 v0, 0x56

    aput-object v89, v2, v0

    const/16 v0, 0x57

    aput-object v90, v2, v0

    const/16 v0, 0x58

    aput-object v91, v2, v0

    const/16 v0, 0x59

    aput-object v92, v2, v0

    const/16 v0, 0x5a

    aput-object v93, v2, v0

    const/16 v0, 0x5b

    aput-object v94, v2, v0

    const/16 v0, 0x5c

    aput-object v95, v2, v0

    const/16 v0, 0x5d

    aput-object v96, v2, v0

    const/16 v0, 0x5e

    aput-object v97, v2, v0

    const/16 v0, 0x5f

    aput-object v98, v2, v0

    const/16 v0, 0x60

    aput-object v99, v2, v0

    const/16 v0, 0x61

    aput-object v100, v2, v0

    const/16 v0, 0x62

    aput-object v101, v2, v0

    const/16 v0, 0x63

    aput-object v102, v2, v0

    const/16 v0, 0x64

    aput-object v103, v2, v0

    const/16 v0, 0x65

    aput-object v104, v2, v0

    const/16 v0, 0x66

    aput-object v105, v2, v0

    const/16 v0, 0x67

    aput-object v106, v2, v0

    const/16 v0, 0x68

    aput-object v107, v2, v0

    const/16 v0, 0x69

    aput-object v108, v2, v0

    const/16 v0, 0x6a

    aput-object v1, v2, v0

    sput-object v2, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_14
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_1f
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_26
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_29
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_34
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_37
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_38
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_43
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_44
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_45
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_47
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_4a
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_4b
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_4c
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_4d
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_4f
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_51
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_52
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_53
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_54
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_55
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_56
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_57
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_58
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_59
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_5b
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_5c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_5d
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_5f
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_60
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_61
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_62
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_63
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_64
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_65
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_66
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_67
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_68
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_69
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_6a
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .locals 3

    .line 1
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 2
    .line 3
    .line 4
    const/high16 p0, 0x3e800000    # 0.25f

    .line 5
    .line 6
    const/4 p2, -0x1

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    .line 13
    aget-object v1, v1, v0

    .line 14
    .line 15
    const v2, 0x3f333333    # 0.7f

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1, v2}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[IF)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    cmpg-float v2, v1, p0

    .line 23
    .line 24
    if-gez v2, :cond_0

    .line 25
    .line 26
    move p2, v0

    .line 27
    move p0, v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-ltz p2, :cond_2

    .line 32
    .line 33
    return p2

    .line 34
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    throw p0
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x6

    .line 11
    new-array v3, v3, [I

    .line 12
    .line 13
    move v4, v2

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const/4 v8, 0x1

    .line 23
    if-eq v7, v5, :cond_0

    .line 24
    .line 25
    aget v7, v3, v6

    .line 26
    .line 27
    add-int/2addr v7, v8

    .line 28
    aput v7, v3, v6

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    const/4 v7, 0x5

    .line 32
    if-ne v6, v7, :cond_4

    .line 33
    .line 34
    const/4 v7, -0x1

    .line 35
    const/high16 v9, 0x3e800000    # 0.25f

    .line 36
    .line 37
    const/16 v10, 0x67

    .line 38
    .line 39
    :goto_1
    const/16 v11, 0x69

    .line 40
    .line 41
    if-gt v10, v11, :cond_2

    .line 42
    .line 43
    sget-object v11, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 44
    .line 45
    aget-object v11, v11, v10

    .line 46
    .line 47
    const v12, 0x3f333333    # 0.7f

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v11, v12}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[IF)F

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    cmpg-float v12, v11, v9

    .line 55
    .line 56
    if-gez v12, :cond_1

    .line 57
    .line 58
    move v7, v10

    .line 59
    move v9, v11

    .line 60
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v9, 0x2

    .line 64
    if-ltz v7, :cond_3

    .line 65
    .line 66
    sub-int v10, v2, v4

    .line 67
    .line 68
    div-int/2addr v10, v9

    .line 69
    sub-int v10, v4, v10

    .line 70
    .line 71
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_3

    .line 80
    .line 81
    filled-new-array {v4, v2, v7}, [I

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_3
    aget v7, v3, v1

    .line 87
    .line 88
    aget v10, v3, v8

    .line 89
    .line 90
    add-int/2addr v7, v10

    .line 91
    add-int/2addr v4, v7

    .line 92
    add-int/lit8 v7, v6, -0x1

    .line 93
    .line 94
    invoke-static {v3, v9, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    aput v1, v3, v7

    .line 98
    .line 99
    aput v1, v3, v6

    .line 100
    .line 101
    add-int/lit8 v6, v6, -0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    :goto_2
    aput v8, v3, v6

    .line 107
    .line 108
    xor-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    throw p0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v6, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    .line 13
    .line 14
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    aget v7, v6, v3

    .line 28
    .line 29
    new-instance v8, Ljava/util/ArrayList;

    .line 30
    .line 31
    const/16 v9, 0x14

    .line 32
    .line 33
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    int-to-byte v10, v7

    .line 37
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    packed-switch v7, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0

    .line 52
    :pswitch_0
    const/16 v13, 0x63

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_1
    const/16 v13, 0x64

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_2
    const/16 v13, 0x65

    .line 59
    .line 60
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .line 64
    .line 65
    aget v9, v6, v5

    .line 66
    .line 67
    aget v15, v6, v4

    .line 68
    .line 69
    const/4 v10, 0x6

    .line 70
    new-array v5, v10, [I

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v12, 0x0

    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    const/16 v17, 0x0

    .line 77
    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    const/16 v19, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const/16 v21, 0x1

    .line 85
    .line 86
    const/16 v22, 0x0

    .line 87
    .line 88
    move/from16 v25, v13

    .line 89
    .line 90
    move v13, v9

    .line 91
    move v9, v15

    .line 92
    move/from16 v15, v25

    .line 93
    .line 94
    :goto_2
    if-nez v16, :cond_1f

    .line 95
    .line 96
    invoke-static {v0, v5, v9}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    int-to-byte v3, v13

    .line 101
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    const/16 v3, 0x6a

    .line 109
    .line 110
    if-eq v13, v3, :cond_1

    .line 111
    .line 112
    const/16 v21, 0x1

    .line 113
    .line 114
    :cond_1
    if-eq v13, v3, :cond_2

    .line 115
    .line 116
    add-int/lit8 v19, v19, 0x1

    .line 117
    .line 118
    mul-int v20, v19, v13

    .line 119
    .line 120
    add-int v20, v20, v7

    .line 121
    .line 122
    move/from16 v7, v20

    .line 123
    .line 124
    :cond_2
    move/from16 v23, v9

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    :goto_3
    if-ge v3, v10, :cond_3

    .line 128
    .line 129
    aget v24, v5, v3

    .line 130
    .line 131
    add-int v23, v23, v24

    .line 132
    .line 133
    add-int/2addr v3, v4

    .line 134
    goto :goto_3

    .line 135
    :cond_3
    packed-switch v13, :pswitch_data_1

    .line 136
    .line 137
    .line 138
    const/16 v3, 0x60

    .line 139
    .line 140
    const/16 v10, 0x1d

    .line 141
    .line 142
    packed-switch v15, :pswitch_data_2

    .line 143
    .line 144
    .line 145
    const/16 v2, 0x64

    .line 146
    .line 147
    goto/16 :goto_9

    .line 148
    .line 149
    :pswitch_3
    if-ge v13, v2, :cond_5

    .line 150
    .line 151
    if-ne v11, v12, :cond_4

    .line 152
    .line 153
    add-int/lit8 v3, v13, 0x20

    .line 154
    .line 155
    int-to-char v3, v3

    .line 156
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_4
    add-int/lit16 v3, v13, 0xa0

    .line 161
    .line 162
    int-to-char v3, v3

    .line 163
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :goto_4
    const/4 v2, 0x0

    .line 167
    const/4 v11, 0x0

    .line 168
    goto/16 :goto_d

    .line 169
    .line 170
    :cond_5
    if-ge v13, v3, :cond_7

    .line 171
    .line 172
    if-ne v11, v12, :cond_6

    .line 173
    .line 174
    add-int/lit8 v3, v13, -0x40

    .line 175
    .line 176
    int-to-char v3, v3

    .line 177
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_6
    add-int/lit8 v3, v13, 0x40

    .line 182
    .line 183
    int-to-char v3, v3

    .line 184
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    const/16 v3, 0x6a

    .line 189
    .line 190
    if-eq v13, v3, :cond_8

    .line 191
    .line 192
    const/16 v21, 0x0

    .line 193
    .line 194
    :cond_8
    if-eq v13, v3, :cond_1c

    .line 195
    .line 196
    packed-switch v13, :pswitch_data_3

    .line 197
    .line 198
    .line 199
    goto/16 :goto_9

    .line 200
    .line 201
    :pswitch_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-nez v3, :cond_9

    .line 206
    .line 207
    const/16 v22, 0x1

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-ne v3, v4, :cond_a

    .line 215
    .line 216
    const/16 v22, 0x2

    .line 217
    .line 218
    :cond_a
    :goto_5
    if-eqz v1, :cond_16

    .line 219
    .line 220
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-nez v3, :cond_b

    .line 225
    .line 226
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 227
    .line 228
    const/4 v10, 0x2

    .line 229
    new-array v2, v10, [J

    .line 230
    .line 231
    fill-array-data v2, :array_0

    .line 232
    .line 233
    .line 234
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    goto/16 :goto_9

    .line 245
    .line 246
    :cond_b
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    goto/16 :goto_9

    .line 250
    .line 251
    :pswitch_5
    if-nez v12, :cond_c

    .line 252
    .line 253
    if-eqz v11, :cond_c

    .line 254
    .line 255
    :goto_6
    const/4 v2, 0x0

    .line 256
    const/4 v11, 0x0

    .line 257
    const/4 v12, 0x1

    .line 258
    goto/16 :goto_d

    .line 259
    .line 260
    :cond_c
    if-eqz v12, :cond_d

    .line 261
    .line 262
    if-eqz v11, :cond_d

    .line 263
    .line 264
    :goto_7
    const/4 v2, 0x0

    .line 265
    const/4 v11, 0x0

    .line 266
    const/4 v12, 0x0

    .line 267
    goto/16 :goto_d

    .line 268
    .line 269
    :cond_d
    const/4 v2, 0x0

    .line 270
    const/4 v11, 0x1

    .line 271
    goto/16 :goto_d

    .line 272
    .line 273
    :pswitch_6
    const/4 v2, 0x0

    .line 274
    const/16 v15, 0x63

    .line 275
    .line 276
    goto/16 :goto_d

    .line 277
    .line 278
    :pswitch_7
    const/4 v2, 0x1

    .line 279
    goto/16 :goto_c

    .line 280
    .line 281
    :pswitch_8
    const/4 v2, 0x0

    .line 282
    const/16 v22, 0x4

    .line 283
    .line 284
    goto/16 :goto_d

    .line 285
    .line 286
    :pswitch_9
    if-ge v13, v3, :cond_f

    .line 287
    .line 288
    if-ne v11, v12, :cond_e

    .line 289
    .line 290
    add-int/lit8 v2, v13, 0x20

    .line 291
    .line 292
    int-to-char v2, v2

    .line 293
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    goto/16 :goto_4

    .line 297
    .line 298
    :cond_e
    add-int/lit16 v2, v13, 0xa0

    .line 299
    .line 300
    int-to-char v2, v2

    .line 301
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    goto/16 :goto_4

    .line 305
    .line 306
    :cond_f
    const/16 v2, 0x6a

    .line 307
    .line 308
    if-eq v13, v2, :cond_10

    .line 309
    .line 310
    const/16 v21, 0x0

    .line 311
    .line 312
    :cond_10
    if-eq v13, v2, :cond_1c

    .line 313
    .line 314
    packed-switch v13, :pswitch_data_4

    .line 315
    .line 316
    .line 317
    goto :goto_9

    .line 318
    :pswitch_a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-nez v2, :cond_11

    .line 323
    .line 324
    const/16 v22, 0x1

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_11
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-ne v2, v4, :cond_12

    .line 332
    .line 333
    const/16 v22, 0x2

    .line 334
    .line 335
    :cond_12
    :goto_8
    if-eqz v1, :cond_16

    .line 336
    .line 337
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-nez v2, :cond_13

    .line 342
    .line 343
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 344
    .line 345
    const/4 v3, 0x2

    .line 346
    new-array v10, v3, [J

    .line 347
    .line 348
    fill-array-data v10, :array_1

    .line 349
    .line 350
    .line 351
    invoke-direct {v2, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_13
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    goto :goto_9

    .line 366
    :pswitch_b
    if-nez v12, :cond_14

    .line 367
    .line 368
    if-eqz v11, :cond_14

    .line 369
    .line 370
    goto :goto_6

    .line 371
    :cond_14
    if-eqz v12, :cond_d

    .line 372
    .line 373
    if-eqz v11, :cond_d

    .line 374
    .line 375
    goto :goto_7

    .line 376
    :pswitch_c
    const/4 v2, 0x1

    .line 377
    goto :goto_b

    .line 378
    :pswitch_d
    const/16 v2, 0x64

    .line 379
    .line 380
    if-ge v13, v2, :cond_17

    .line 381
    .line 382
    const/16 v3, 0xa

    .line 383
    .line 384
    if-ge v13, v3, :cond_15

    .line 385
    .line 386
    const/16 v3, 0x30

    .line 387
    .line 388
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    :cond_15
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    :cond_16
    :goto_9
    const/4 v2, 0x0

    .line 395
    goto :goto_d

    .line 396
    :cond_17
    const/16 v3, 0x6a

    .line 397
    .line 398
    if-eq v13, v3, :cond_18

    .line 399
    .line 400
    const/16 v21, 0x0

    .line 401
    .line 402
    :cond_18
    if-eq v13, v3, :cond_1c

    .line 403
    .line 404
    packed-switch v13, :pswitch_data_5

    .line 405
    .line 406
    .line 407
    goto :goto_9

    .line 408
    :pswitch_e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-nez v3, :cond_19

    .line 413
    .line 414
    const/16 v22, 0x1

    .line 415
    .line 416
    goto :goto_a

    .line 417
    :cond_19
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-ne v3, v4, :cond_1a

    .line 422
    .line 423
    const/16 v22, 0x2

    .line 424
    .line 425
    :cond_1a
    :goto_a
    if-eqz v1, :cond_16

    .line 426
    .line 427
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-nez v3, :cond_1b

    .line 432
    .line 433
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 434
    .line 435
    const/4 v10, 0x2

    .line 436
    new-array v2, v10, [J

    .line 437
    .line 438
    fill-array-data v2, :array_2

    .line 439
    .line 440
    .line 441
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_1b
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    goto :goto_9

    .line 456
    :pswitch_f
    const/4 v2, 0x0

    .line 457
    :goto_b
    const/16 v15, 0x65

    .line 458
    .line 459
    goto :goto_d

    .line 460
    :pswitch_10
    const/4 v2, 0x0

    .line 461
    :goto_c
    const/16 v15, 0x64

    .line 462
    .line 463
    goto :goto_d

    .line 464
    :cond_1c
    const/4 v2, 0x0

    .line 465
    const/16 v16, 0x1

    .line 466
    .line 467
    :goto_d
    const/16 v3, 0x65

    .line 468
    .line 469
    if-eqz v17, :cond_1e

    .line 470
    .line 471
    if-ne v15, v3, :cond_1d

    .line 472
    .line 473
    const/16 v10, 0x64

    .line 474
    .line 475
    goto :goto_e

    .line 476
    :cond_1d
    const/16 v10, 0x65

    .line 477
    .line 478
    :goto_e
    move v15, v10

    .line 479
    :cond_1e
    move/from16 v17, v2

    .line 480
    .line 481
    move/from16 v20, v18

    .line 482
    .line 483
    const/16 v2, 0x40

    .line 484
    .line 485
    const/4 v3, 0x2

    .line 486
    const/4 v10, 0x6

    .line 487
    move/from16 v18, v13

    .line 488
    .line 489
    move v13, v9

    .line 490
    move/from16 v9, v23

    .line 491
    .line 492
    goto/16 :goto_2

    .line 493
    .line 494
    :pswitch_11
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    throw v0

    .line 499
    :cond_1f
    sub-int v1, v9, v13

    .line 500
    .line 501
    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    sub-int v5, v2, v13

    .line 510
    .line 511
    const/4 v9, 0x2

    .line 512
    div-int/2addr v5, v9

    .line 513
    add-int/2addr v5, v2

    .line 514
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    const/4 v5, 0x0

    .line 519
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_25

    .line 524
    .line 525
    move/from16 v0, v20

    .line 526
    .line 527
    mul-int v19, v19, v0

    .line 528
    .line 529
    sub-int v7, v7, v19

    .line 530
    .line 531
    rem-int/lit8 v7, v7, 0x67

    .line 532
    .line 533
    if-ne v7, v0, :cond_24

    .line 534
    .line 535
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_23

    .line 540
    .line 541
    if-lez v0, :cond_21

    .line 542
    .line 543
    if-eqz v21, :cond_21

    .line 544
    .line 545
    const/16 v2, 0x63

    .line 546
    .line 547
    if-ne v15, v2, :cond_20

    .line 548
    .line 549
    const/4 v2, 0x2

    .line 550
    add-int/lit8 v3, v0, -0x2

    .line 551
    .line 552
    invoke-virtual {v14, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    goto :goto_f

    .line 556
    :cond_20
    add-int/lit8 v2, v0, -0x1

    .line 557
    .line 558
    invoke-virtual {v14, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    :cond_21
    :goto_f
    aget v0, v6, v4

    .line 562
    .line 563
    const/4 v2, 0x0

    .line 564
    aget v3, v6, v2

    .line 565
    .line 566
    add-int/2addr v0, v3

    .line 567
    int-to-float v0, v0

    .line 568
    const/high16 v2, 0x40000000    # 2.0f

    .line 569
    .line 570
    div-float/2addr v0, v2

    .line 571
    int-to-float v3, v13

    .line 572
    int-to-float v1, v1

    .line 573
    div-float/2addr v1, v2

    .line 574
    add-float/2addr v1, v3

    .line 575
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    new-array v3, v2, [B

    .line 580
    .line 581
    const/4 v5, 0x0

    .line 582
    :goto_10
    if-ge v5, v2, :cond_22

    .line 583
    .line 584
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    check-cast v6, Ljava/lang/Byte;

    .line 589
    .line 590
    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    aput-byte v6, v3, v5

    .line 595
    .line 596
    add-int/2addr v5, v4

    .line 597
    goto :goto_10

    .line 598
    :cond_22
    new-instance v2, Lcom/google/zxing/Result;

    .line 599
    .line 600
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v5

    .line 604
    new-instance v6, Lcom/google/zxing/ResultPoint;

    .line 605
    .line 606
    move/from16 v7, p1

    .line 607
    .line 608
    int-to-float v7, v7

    .line 609
    invoke-direct {v6, v0, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 610
    .line 611
    .line 612
    new-instance v0, Lcom/google/zxing/ResultPoint;

    .line 613
    .line 614
    invoke-direct {v0, v1, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 615
    .line 616
    .line 617
    const/4 v1, 0x2

    .line 618
    new-array v7, v1, [Lcom/google/zxing/ResultPoint;

    .line 619
    .line 620
    const/4 v8, 0x0

    .line 621
    aput-object v6, v7, v8

    .line 622
    .line 623
    aput-object v0, v7, v4

    .line 624
    .line 625
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 626
    .line 627
    invoke-direct {v2, v5, v3, v7, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 628
    .line 629
    .line 630
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 631
    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .line 636
    .line 637
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 638
    .line 639
    new-array v1, v1, [J

    .line 640
    .line 641
    fill-array-data v1, :array_3

    .line 642
    .line 643
    .line 644
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    move/from16 v1, v22

    .line 655
    .line 656
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    return-object v2

    .line 667
    :cond_23
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    throw v0

    .line 672
    :cond_24
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    throw v0

    .line 677
    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    throw v0

    .line 682
    nop

    .line 683
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_d
        :pswitch_9
        :pswitch_3
    .end packed-switch

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :pswitch_data_3
    .packed-switch 0x61
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_10
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_8
        :pswitch_c
        :pswitch_6
        :pswitch_b
        :pswitch_f
        :pswitch_a
    .end packed-switch

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_0
    .array-data 8
        -0x4734aa74b61ca3aaL    # -4.112786777352569E-35
        0x12944b66beeb3a5aL
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :array_1
    .array-data 8
        -0x6677a16fa3c9e318L
        0x4f0bcec24a200faL
    .end array-data

    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    :array_2
    .array-data 8
        0x10d37ec0efdc6375L
        0x29c50b5c6de52c1aL    # 1.792122422068508E-107
    .end array-data

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    :array_3
    .array-data 8
        0x2946339724ace075L    # 7.385406397890631E-110
        0x593080dc0c9aa2f0L    # 4.261579336973785E121
    .end array-data
.end method

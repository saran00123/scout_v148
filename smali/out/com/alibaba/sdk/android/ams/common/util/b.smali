.class public Lcom/alibaba/sdk/android/ams/common/util/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:Lcom/alibaba/sdk/android/ams/common/util/b;

.field private static final c:[C


# instance fields
.field private d:[J

.field private e:[J

.field private f:[B

.field private g:Ljava/lang/String;

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/alibaba/sdk/android/ams/common/util/b;->a:[B

    new-instance v0, Lcom/alibaba/sdk/android/ams/common/util/b;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/ams/common/util/b;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/ams/common/util/b;->b:Lcom/alibaba/sdk/android/ams/common/util/b;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/alibaba/sdk/android/ams/common/util/b;->c:[C

    return-void

    :array_1a
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->d:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->e:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->f:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->h:[B

    invoke-direct {p0}, Lcom/alibaba/sdk/android/ams/common/util/b;->b()V

    return-void
.end method

.method public static a(B)J
    .registers 3

    if-gez p0, :cond_4

    and-int/lit16 p0, p0, 0xff

    :cond_4
    int-to-long v0, p0

    return-wide v0
.end method

.method private a(JJJ)J
    .registers 7

    and-long/2addr p3, p1

    not-long p1, p1

    and-long/2addr p1, p5

    or-long/2addr p1, p3

    return-wide p1
.end method

.method private a(JJJJJJJ)J
    .registers 24

    move-wide/from16 v0, p11

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr v2, p1

    long-to-int v2, v2

    long-to-int v3, v0

    shl-int v3, v2, v3

    const-wide/16 v4, 0x20

    sub-long/2addr v4, v0

    long-to-int v0, v4

    ushr-int v0, v2, v0

    or-int/2addr v0, v3

    int-to-long v0, v0

    add-long/2addr v0, p3

    return-wide v0
.end method

.method public static a()Lcom/alibaba/sdk/android/ams/common/util/b;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/util/b;->b:Lcom/alibaba/sdk/android/ams/common/util/b;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_27

    sget-object v2, Lcom/alibaba/sdk/android/ams/common/util/b;->c:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/ams/common/util/b;->c:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([BI)V
    .registers 17

    move-object v6, p0

    move/from16 v7, p2

    const/16 v0, 0x40

    new-array v8, v0, [B

    iget-object v1, v6, Lcom/alibaba/sdk/android/ams/common/util/b;->e:[J

    const/4 v9, 0x0

    aget-wide v2, v1, v9

    const/4 v4, 0x3

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    and-int/lit8 v3, v2, 0x3f

    aget-wide v4, v1, v9

    shl-int/lit8 v2, v7, 0x3

    int-to-long v10, v2

    add-long/2addr v4, v10

    aput-wide v4, v1, v9

    cmp-long v2, v4, v10

    const/4 v4, 0x1

    if-gez v2, :cond_25

    aget-wide v10, v1, v4

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    aput-wide v10, v1, v4

    :cond_25
    iget-object v1, v6, Lcom/alibaba/sdk/android/ams/common/util/b;->e:[J

    aget-wide v10, v1, v4

    ushr-int/lit8 v2, v7, 0x1d

    int-to-long v12, v2

    add-long/2addr v10, v12

    aput-wide v10, v1, v4

    rsub-int/lit8 v10, v3, 0x40

    if-lt v7, v10, :cond_58

    iget-object v1, v6, Lcom/alibaba/sdk/android/ams/common/util/b;->f:[B

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([B[BIII)V

    iget-object v0, v6, Lcom/alibaba/sdk/android/ams/common/util/b;->f:[B

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/ams/common/util/b;->b([B)V

    :goto_41
    add-int/lit8 v0, v10, 0x3f

    if-ge v0, v7, :cond_55

    const/4 v3, 0x0

    const/16 v5, 0x40

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([B[BIII)V

    invoke-direct {p0, v8}, Lcom/alibaba/sdk/android/ams/common/util/b;->b([B)V

    add-int/lit8 v10, v10, 0x40

    goto :goto_41

    :cond_55
    move v3, v9

    move v4, v10

    goto :goto_59

    :cond_58
    move v4, v9

    :goto_59
    iget-object v1, v6, Lcom/alibaba/sdk/android/ams/common/util/b;->f:[B

    sub-int v5, v7, v4

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([B[BIII)V

    return-void
.end method

.method private a([B[BIII)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_e

    add-int v1, p3, v0

    add-int v2, p4, v0

    aget-byte v2, p2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private a([B[JI)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p3, :cond_37

    aget-wide v2, p2, v1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-wide v6, p2, v1

    const/16 v3, 0x8

    ushr-long/2addr v6, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v0, 0x2

    aget-wide v6, p2, v1

    const/16 v3, 0x10

    ushr-long/2addr v6, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v0, 0x3

    aget-wide v6, p2, v1

    const/16 v3, 0x18

    ushr-long/2addr v6, v3

    and-long v3, v6, v4

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_37
    return-void
.end method

.method private a([J[BI)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p3, :cond_35

    aget-byte v2, p2, v0

    invoke-static {v2}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(B)J

    move-result-wide v2

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(B)J

    move-result-wide v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(B)J

    move-result-wide v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(B)J

    move-result-wide v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_35
    return-void
.end method

.method private b(JJJ)J
    .registers 7

    and-long/2addr p1, p5

    not-long p5, p5

    and-long/2addr p3, p5

    or-long/2addr p1, p3

    return-wide p1
.end method

.method private b(JJJJJJJ)J
    .registers 24

    move-wide/from16 v0, p11

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr v2, p1

    long-to-int v2, v2

    long-to-int v3, v0

    shl-int v3, v2, v3

    const-wide/16 v4, 0x20

    sub-long/2addr v4, v0

    long-to-int v0, v4

    ushr-int v0, v2, v0

    or-int/2addr v0, v3

    int-to-long v0, v0

    add-long/2addr v0, p3

    return-wide v0
.end method

.method public static b(B)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_20

    const/4 v1, 0x2

    new-array v1, v1, [C

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v0, v2

    const/4 v3, 0x0

    aput-char v2, v1, v3

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v0, p0

    const/4 v0, 0x1

    aput-char p0, v1, v0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :array_20
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private b()V
    .registers 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->e:[J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v4, 0x1

    aput-wide v1, v0, v4

    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->d:[J

    const-wide/32 v1, 0x67452301

    aput-wide v1, v0, v3

    const-wide v1, 0xefcdab89L

    aput-wide v1, v0, v4

    const/4 v1, 0x2

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    return-void
.end method

.method private b([B)V
    .registers 42

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/alibaba/sdk/android/ams/common/util/b;->d:[J

    const/16 v16, 0x0

    aget-wide v1, v0, v16

    const/16 v17, 0x1

    aget-wide v18, v0, v17

    const/16 v20, 0x2

    aget-wide v21, v0, v20

    const/16 v23, 0x3

    aget-wide v24, v0, v23

    const/16 v0, 0x10

    new-array v13, v0, [J

    const/16 v0, 0x40

    move-object/from16 v3, p1

    invoke-direct {v15, v13, v3, v0}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([J[BI)V

    aget-wide v9, v13, v16

    const-wide/16 v11, 0x7

    const-wide v26, 0xd76aa478L

    move-object/from16 v0, p0

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    move-object/from16 v28, v13

    move-wide/from16 v13, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v17

    const-wide/16 v11, 0xc

    const-wide v13, 0xe8c7b756L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v20

    const-wide/16 v11, 0x11

    const-wide/32 v13, 0x242070db

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v23

    const-wide/16 v11, 0x16

    const-wide v13, 0xc1bdceeeL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v18

    const/16 v29, 0x4

    aget-wide v9, v28, v29

    const-wide/16 v11, 0x7

    const-wide v13, 0xf57c0fafL

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v26

    const/16 v30, 0x5

    aget-wide v9, v28, v30

    const-wide/16 v11, 0xc

    const-wide/32 v13, 0x4787c62a

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v24

    const/16 v31, 0x6

    aget-wide v9, v28, v31

    const-wide/16 v11, 0x11

    const-wide v13, 0xa8304613L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v21

    const/16 v32, 0x7

    aget-wide v9, v28, v32

    const-wide/16 v11, 0x16

    const-wide v13, 0xfd469501L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v18

    const/16 v33, 0x8

    aget-wide v9, v28, v33

    const-wide/16 v11, 0x7

    const-wide/32 v13, 0x698098d8

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v26

    const/16 v34, 0x9

    aget-wide v9, v28, v34

    const-wide/16 v11, 0xc

    const-wide v13, 0x8b44f7afL

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v24

    const/16 v35, 0xa

    aget-wide v9, v28, v35

    const-wide/16 v11, 0x11

    const-wide v13, 0xffff5bb1L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v21

    const/16 v36, 0xb

    aget-wide v9, v28, v36

    const-wide/16 v11, 0x16

    const-wide v13, 0x895cd7beL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v18

    const/16 v37, 0xc

    aget-wide v9, v28, v37

    const-wide/16 v11, 0x7

    const-wide/32 v13, 0x6b901122

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v26

    const/16 v38, 0xd

    aget-wide v9, v28, v38

    const-wide/16 v11, 0xc

    const-wide v13, 0xfd987193L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v24

    const/16 v39, 0xe

    aget-wide v9, v28, v39

    const-wide/16 v11, 0x11

    const-wide v13, 0xa679438eL

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v21

    const/16 v0, 0xf

    aget-wide v9, v28, v0

    const-wide/16 v11, 0x16

    const-wide/32 v13, 0x49b40821

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->a(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v17

    const-wide/16 v11, 0x5

    const-wide v13, 0xf61e2562L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v31

    const-wide/16 v11, 0x9

    const-wide v13, 0xc040b340L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v36

    const-wide/16 v11, 0xe

    const-wide/32 v13, 0x265e5a51

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v16

    const-wide/16 v11, 0x14

    const-wide v13, 0xe9b6c7aaL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v30

    const-wide/16 v11, 0x5

    const-wide v13, 0xd62f105dL

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v35

    const-wide/16 v11, 0x9

    const-wide/32 v13, 0x2441453

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v24

    const/16 v0, 0xf

    aget-wide v9, v28, v0

    const-wide/16 v11, 0xe

    const-wide v13, 0xd8a1e681L

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v29

    const-wide/16 v11, 0x14

    const-wide v13, 0xe7d3fbc8L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v34

    const-wide/16 v11, 0x5

    const-wide/32 v13, 0x21e1cde6

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v39

    const-wide/16 v11, 0x9

    const-wide v13, 0xc33707d6L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v23

    const-wide/16 v11, 0xe

    const-wide v13, 0xf4d50d87L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v33

    const-wide/16 v11, 0x14

    const-wide/32 v13, 0x455a14ed

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v38

    const-wide/16 v11, 0x5

    const-wide v13, 0xa9e3e905L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v20

    const-wide/16 v11, 0x9

    const-wide v13, 0xfcefa3f8L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v32

    const-wide/16 v11, 0xe

    const-wide/32 v13, 0x676f02d9

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v37

    const-wide/16 v11, 0x14

    const-wide v13, 0x8d2a4c8aL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v30

    const-wide/16 v11, 0x4

    const-wide v13, 0xfffa3942L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v33

    const-wide/16 v11, 0xb

    const-wide v13, 0x8771f681L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v36

    const-wide/16 v11, 0x10

    const-wide/32 v13, 0x6d9d6122

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v39

    const-wide/16 v11, 0x17

    const-wide v13, 0xfde5380cL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v17

    const-wide/16 v11, 0x4

    const-wide v13, 0xa4beea44L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v29

    const-wide/16 v11, 0xb

    const-wide/32 v13, 0x4bdecfa9

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v32

    const-wide/16 v11, 0x10

    const-wide v13, 0xf6bb4b60L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v35

    const-wide/16 v11, 0x17

    const-wide v13, 0xbebfbc70L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v38

    const-wide/16 v11, 0x4

    const-wide/32 v13, 0x289b7ec6

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v16

    const-wide/16 v11, 0xb

    const-wide v13, 0xeaa127faL

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v23

    const-wide/16 v11, 0x10

    const-wide v13, 0xd4ef3085L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v31

    const-wide/16 v11, 0x17

    const-wide/32 v13, 0x4881d05

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v34

    const-wide/16 v11, 0x4

    const-wide v13, 0xd9d4d039L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v37

    const-wide/16 v11, 0xb

    const-wide v13, 0xe6db99e5L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v24

    const/16 v0, 0xf

    aget-wide v9, v28, v0

    const-wide/16 v11, 0x10

    const-wide/32 v13, 0x1fa27cf8

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v20

    const-wide/16 v11, 0x17

    const-wide v13, 0xc4ac5665L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v16

    const-wide/16 v11, 0x6

    const-wide v13, 0xf4292244L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v32

    const-wide/16 v11, 0xa

    const-wide/32 v13, 0x432aff97

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v39

    const-wide/16 v11, 0xf

    const-wide v13, 0xab9423a7L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v30

    const-wide/16 v11, 0x15

    const-wide v13, 0xfc93a039L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v37

    const-wide/16 v11, 0x6

    const-wide/32 v13, 0x655b59c3

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v23

    const-wide/16 v11, 0xa

    const-wide v13, 0x8f0ccc92L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v35

    const-wide/16 v11, 0xf

    const-wide v13, 0xffeff47dL

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v17

    const-wide/16 v11, 0x15

    const-wide v13, 0x85845dd1L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v33

    const-wide/16 v11, 0x6

    const-wide/32 v13, 0x6fa87e4f

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v26

    const/16 v0, 0xf

    aget-wide v9, v28, v0

    const-wide/16 v11, 0xa

    const-wide v13, 0xfe2ce6e0L

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v31

    const-wide/16 v11, 0xf

    const-wide v13, 0xa3014314L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v38

    const-wide/16 v11, 0x15

    const-wide/32 v13, 0x4e0811a1

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v18

    aget-wide v9, v28, v29

    const-wide/16 v11, 0x6

    const-wide v13, 0xf7537e82L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v26

    aget-wide v9, v28, v36

    const-wide/16 v11, 0xa

    const-wide v13, 0xbd3af235L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v24

    aget-wide v9, v28, v20

    const-wide/16 v11, 0xf

    const-wide/32 v13, 0x2ad7d2bb

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v21

    aget-wide v9, v28, v34

    const-wide/16 v11, 0x15

    const-wide v13, 0xeb86d391L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJJJJJ)J

    move-result-wide v0

    iget-object v2, v15, Lcom/alibaba/sdk/android/ams/common/util/b;->d:[J

    aget-wide v3, v2, v16

    add-long v3, v3, v26

    aput-wide v3, v2, v16

    aget-wide v3, v2, v17

    add-long/2addr v3, v0

    aput-wide v3, v2, v17

    aget-wide v0, v2, v20

    add-long v0, v0, v21

    aput-wide v0, v2, v20

    aget-wide v0, v2, v23

    add-long v0, v0, v24

    aput-wide v0, v2, v23

    return-void
.end method

.method private c(JJJ)J
    .registers 7

    xor-long/2addr p1, p3

    xor-long/2addr p1, p5

    return-wide p1
.end method

.method private c(JJJJJJJ)J
    .registers 24

    move-wide/from16 v0, p11

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/sdk/android/ams/common/util/b;->c(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr v2, p1

    long-to-int v2, v2

    long-to-int v3, v0

    shl-int v3, v2, v3

    const-wide/16 v4, 0x20

    sub-long/2addr v4, v0

    long-to-int v0, v4

    ushr-int v0, v2, v0

    or-int/2addr v0, v3

    int-to-long v0, v0

    add-long/2addr v0, p3

    return-wide v0
.end method

.method private c()V
    .registers 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->e:[J

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([B[JI)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->e:[J

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    const/4 v2, 0x3

    ushr-long v2, v3, v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3f

    const/16 v3, 0x38

    if-ge v2, v3, :cond_1a

    sub-int/2addr v3, v2

    goto :goto_1c

    :cond_1a
    rsub-int/lit8 v3, v2, 0x78

    :goto_1c
    sget-object v2, Lcom/alibaba/sdk/android/ams/common/util/b;->a:[B

    invoke-direct {p0, v2, v3}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([BI)V

    invoke-direct {p0, v1, v0}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([BI)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->h:[B

    iget-object v1, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->d:[J

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([B[JI)V

    return-void
.end method

.method private d(JJJ)J
    .registers 7

    not-long p5, p5

    or-long/2addr p1, p5

    xor-long/2addr p1, p3

    return-wide p1
.end method

.method private d(JJJJJJJ)J
    .registers 24

    move-wide/from16 v0, p11

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/sdk/android/ams/common/util/b;->d(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr v2, p1

    long-to-int v2, v2

    long-to-int v3, v0

    shl-int v3, v2, v3

    const-wide/16 v4, 0x20

    sub-long/2addr v4, v0

    long-to-int v0, v4

    ushr-int v0, v2, v0

    or-int/2addr v0, v3

    int-to-long v0, v0

    add-long/2addr v0, p3

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_c
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/alibaba/sdk/android/ams/common/util/b;->b()V

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/ams/common/util/b;->a([BI)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/ams/common/util/b;->c()V

    const-string p1, ""

    iput-object p1, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->g:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_1c
    const/16 v0, 0x10

    if-ge p1, v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->h:[B

    aget-byte v1, v1, p1

    invoke-static {v1}, Lcom/alibaba/sdk/android/ams/common/util/b;->b(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->g:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_3e
    iget-object p1, p0, Lcom/alibaba/sdk/android/ams/common/util/b;->g:Ljava/lang/String;

    return-object p1
.end method

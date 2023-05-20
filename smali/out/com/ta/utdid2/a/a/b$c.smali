.class Lcom/ta/utdid2/a/a/b$c;
.super Lcom/ta/utdid2/a/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final b:[B

.field private static final c:[B

.field static final synthetic e:Z


# instance fields
.field c:I

.field private count:I

.field private final d:[B

.field private final e:[B

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 538
    const-class v0, Lcom/ta/utdid2/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/ta/utdid2/a/a/b$c;->e:Z

    const/16 v0, 0x40

    .line 550
    new-array v1, v0, [B

    fill-array-data v1, :array_1c

    sput-object v1, Lcom/ta/utdid2/a/a/b$c;->b:[B

    .line 561
    new-array v0, v0, [B

    fill-array-data v0, :array_40

    sput-object v0, Lcom/ta/utdid2/a/a/b$c;->c:[B

    return-void

    nop

    :array_1c
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_40
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 5

    .line 577
    invoke-direct {p0}, Lcom/ta/utdid2/a/a/b$a;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/ta/utdid2/a/a/b$c;->a:[B

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_d

    move p2, v1

    goto :goto_e

    :cond_d
    move p2, v0

    .line 580
    :goto_e
    iput-boolean p2, p0, Lcom/ta/utdid2/a/a/b$c;->f:Z

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_16

    move p2, v1

    goto :goto_17

    :cond_16
    move p2, v0

    .line 581
    :goto_17
    iput-boolean p2, p0, Lcom/ta/utdid2/a/a/b$c;->g:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v0

    .line 582
    :goto_1f
    iput-boolean v1, p0, Lcom/ta/utdid2/a/a/b$c;->h:Z

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_28

    .line 583
    sget-object p1, Lcom/ta/utdid2/a/a/b$c;->b:[B

    goto :goto_2a

    :cond_28
    sget-object p1, Lcom/ta/utdid2/a/a/b$c;->c:[B

    :goto_2a
    iput-object p1, p0, Lcom/ta/utdid2/a/a/b$c;->e:[B

    const/4 p1, 0x2

    .line 585
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    .line 586
    iput v0, p0, Lcom/ta/utdid2/a/a/b$c;->c:I

    .line 588
    iget-boolean p1, p0, Lcom/ta/utdid2/a/a/b$c;->g:Z

    if-eqz p1, :cond_3a

    const/16 p1, 0x13

    goto :goto_3b

    :cond_3a
    const/4 p1, -0x1

    :goto_3b
    iput p1, p0, Lcom/ta/utdid2/a/a/b$c;->count:I

    return-void
.end method


# virtual methods
.method public a([BIIZ)Z
    .registers 22

    move-object/from16 v0, p0

    .line 601
    iget-object v1, v0, Lcom/ta/utdid2/a/a/b$c;->e:[B

    .line 602
    iget-object v2, v0, Lcom/ta/utdid2/a/a/b$c;->a:[B

    .line 604
    iget v3, v0, Lcom/ta/utdid2/a/a/b$c;->count:I

    add-int v4, p3, p2

    .line 614
    iget v5, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v5, :cond_53

    if-eq v5, v9, :cond_34

    if-eq v5, v8, :cond_17

    goto :goto_53

    :cond_17
    add-int/lit8 v5, p2, 0x1

    if-gt v5, v4, :cond_53

    .line 633
    iget-object v10, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    aget-byte v11, v10, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v11

    aget-byte v11, p1, p2

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 635
    iput v7, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    move v11, v5

    move v5, v10

    goto :goto_56

    :cond_34
    add-int/lit8 v5, p2, 0x2

    if-gt v5, v4, :cond_53

    .line 623
    iget-object v5, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, p2, 0x1

    aget-byte v11, p1, p2

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v5, v11

    add-int/lit8 v11, v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v5, v10

    .line 625
    iput v7, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    goto :goto_56

    :cond_53
    :goto_53
    move/from16 v11, p2

    move v5, v6

    :goto_56
    const/4 v12, 0x4

    const/16 v13, 0xd

    const/16 v14, 0xa

    if-eq v5, v6, :cond_92

    shr-int/lit8 v6, v5, 0x12

    and-int/lit8 v6, v6, 0x3f

    .line 641
    aget-byte v6, v1, v6

    aput-byte v6, v2, v7

    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    .line 642
    aget-byte v6, v1, v6

    aput-byte v6, v2, v9

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    .line 643
    aget-byte v6, v1, v6

    aput-byte v6, v2, v8

    and-int/lit8 v5, v5, 0x3f

    .line 644
    aget-byte v5, v1, v5

    const/4 v6, 0x3

    aput-byte v5, v2, v6

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_90

    .line 646
    iget-boolean v3, v0, Lcom/ta/utdid2/a/a/b$c;->h:Z

    if-eqz v3, :cond_88

    const/4 v3, 0x5

    .line 647
    aput-byte v13, v2, v12

    goto :goto_89

    :cond_88
    move v3, v12

    :goto_89
    add-int/lit8 v5, v3, 0x1

    .line 648
    aput-byte v14, v2, v3

    :goto_8d
    const/16 v3, 0x13

    goto :goto_93

    :cond_90
    move v5, v12

    goto :goto_93

    :cond_92
    move v5, v7

    :goto_93
    add-int/lit8 v6, v11, 0x3

    if-gt v6, v4, :cond_e9

    .line 659
    aget-byte v15, p1, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v11, 0x1

    aget-byte v10, p1, v16

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v15

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    .line 661
    aget-byte v11, v1, v11

    aput-byte v11, v2, v5

    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v15, v10, 0xc

    and-int/lit8 v15, v15, 0x3f

    .line 662
    aget-byte v15, v1, v15

    aput-byte v15, v2, v11

    add-int/lit8 v11, v5, 0x2

    shr-int/lit8 v15, v10, 0x6

    and-int/lit8 v15, v15, 0x3f

    .line 663
    aget-byte v15, v1, v15

    aput-byte v15, v2, v11

    add-int/lit8 v11, v5, 0x3

    and-int/lit8 v10, v10, 0x3f

    .line 664
    aget-byte v10, v1, v10

    aput-byte v10, v2, v11

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_e7

    .line 668
    iget-boolean v3, v0, Lcom/ta/utdid2/a/a/b$c;->h:Z

    if-eqz v3, :cond_e0

    add-int/lit8 v3, v5, 0x1

    .line 669
    aput-byte v13, v2, v5

    goto :goto_e1

    :cond_e0
    move v3, v5

    :goto_e1
    add-int/lit8 v5, v3, 0x1

    .line 670
    aput-byte v14, v2, v3

    move v11, v6

    goto :goto_8d

    :cond_e7
    move v11, v6

    goto :goto_93

    :cond_e9
    if-eqz p4, :cond_1e0

    .line 681
    iget v6, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    sub-int v10, v11, v6

    add-int/lit8 v15, v4, -0x1

    if-ne v10, v15, :cond_13d

    if-lez v6, :cond_fb

    .line 683
    iget-object v6, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    aget-byte v6, v6, v7

    move v7, v9

    goto :goto_101

    :cond_fb
    add-int/lit8 v6, v11, 0x1

    aget-byte v8, p1, v11

    move v11, v6

    move v6, v8

    :goto_101
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v12

    .line 684
    iget v8, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    sub-int/2addr v8, v7

    iput v8, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    .line 685
    aget-byte v8, v1, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v6, 0x3f

    .line 686
    aget-byte v1, v1, v6

    aput-byte v1, v2, v7

    .line 687
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->f:Z

    if-eqz v1, :cond_129

    add-int/lit8 v1, v5, 0x1

    const/16 v6, 0x3d

    .line 688
    aput-byte v6, v2, v5

    add-int/lit8 v5, v1, 0x1

    .line 689
    aput-byte v6, v2, v1

    .line 691
    :cond_129
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->g:Z

    if-eqz v1, :cond_1c4

    .line 692
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->h:Z

    if-eqz v1, :cond_136

    add-int/lit8 v1, v5, 0x1

    .line 693
    aput-byte v13, v2, v5

    goto :goto_137

    :cond_136
    move v1, v5

    :goto_137
    add-int/lit8 v5, v1, 0x1

    .line 694
    aput-byte v14, v2, v1

    goto/16 :goto_1c4

    :cond_13d
    sub-int v10, v11, v6

    add-int/lit8 v12, v4, -0x2

    if-ne v10, v12, :cond_1ac

    if-le v6, v9, :cond_14b

    .line 698
    iget-object v6, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    aget-byte v6, v6, v7

    move v7, v9

    goto :goto_151

    :cond_14b
    add-int/lit8 v6, v11, 0x1

    aget-byte v10, p1, v11

    move v11, v6

    move v6, v10

    :goto_151
    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v14

    iget v10, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    if-lez v10, :cond_161

    iget-object v10, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    add-int/lit8 v12, v7, 0x1

    aget-byte v7, v10, v7

    move v10, v11

    move v11, v7

    goto :goto_166

    :cond_161
    add-int/lit8 v10, v11, 0x1

    aget-byte v11, p1, v11

    move v12, v7

    :goto_166
    and-int/lit16 v7, v11, 0xff

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 700
    iget v7, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    sub-int/2addr v7, v12

    iput v7, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0xc

    and-int/lit8 v8, v8, 0x3f

    .line 701
    aget-byte v8, v1, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    .line 702
    aget-byte v8, v1, v8

    aput-byte v8, v2, v7

    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v6, v6, 0x3f

    .line 703
    aget-byte v1, v1, v6

    aput-byte v1, v2, v5

    .line 704
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->f:Z

    if-eqz v1, :cond_196

    add-int/lit8 v1, v7, 0x1

    const/16 v5, 0x3d

    .line 705
    aput-byte v5, v2, v7

    goto :goto_197

    :cond_196
    move v1, v7

    .line 707
    :goto_197
    iget-boolean v5, v0, Lcom/ta/utdid2/a/a/b$c;->g:Z

    if-eqz v5, :cond_1a9

    .line 708
    iget-boolean v5, v0, Lcom/ta/utdid2/a/a/b$c;->h:Z

    if-eqz v5, :cond_1a4

    add-int/lit8 v5, v1, 0x1

    .line 709
    aput-byte v13, v2, v1

    move v1, v5

    :cond_1a4
    add-int/lit8 v5, v1, 0x1

    .line 710
    aput-byte v14, v2, v1

    move v1, v5

    :cond_1a9
    move v5, v1

    move v11, v10

    goto :goto_1c4

    .line 712
    :cond_1ac
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->g:Z

    if-eqz v1, :cond_1c4

    if-lez v5, :cond_1c4

    const/16 v1, 0x13

    if-eq v3, v1, :cond_1c4

    .line 713
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->h:Z

    if-eqz v1, :cond_1bf

    add-int/lit8 v1, v5, 0x1

    .line 714
    aput-byte v13, v2, v5

    goto :goto_1c0

    :cond_1bf
    move v1, v5

    :goto_1c0
    add-int/lit8 v5, v1, 0x1

    .line 715
    aput-byte v14, v2, v1

    .line 718
    :cond_1c4
    :goto_1c4
    sget-boolean v1, Lcom/ta/utdid2/a/a/b$c;->e:Z

    if-nez v1, :cond_1d3

    iget v1, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    if-nez v1, :cond_1cd

    goto :goto_1d3

    :cond_1cd
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 719
    :cond_1d3
    :goto_1d3
    sget-boolean v1, Lcom/ta/utdid2/a/a/b$c;->e:Z

    if-nez v1, :cond_20b

    if-ne v11, v4, :cond_1da

    goto :goto_20b

    :cond_1da
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1e0
    add-int/lit8 v1, v4, -0x1

    if-ne v11, v1, :cond_1f1

    .line 725
    iget-object v1, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    iget v2, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    aget-byte v4, p1, v11

    aput-byte v4, v1, v2

    goto :goto_20b

    :cond_1f1
    sub-int/2addr v4, v8

    if-ne v11, v4, :cond_20b

    .line 727
    iget-object v1, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    iget v2, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    aget-byte v4, p1, v11

    aput-byte v4, v1, v2

    .line 728
    iget v2, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/ta/utdid2/a/a/b$c;->c:I

    add-int/2addr v11, v9

    aget-byte v4, p1, v11

    aput-byte v4, v1, v2

    .line 732
    :cond_20b
    :goto_20b
    iput v5, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    .line 733
    iput v3, v0, Lcom/ta/utdid2/a/a/b$c;->count:I

    return v9
.end method

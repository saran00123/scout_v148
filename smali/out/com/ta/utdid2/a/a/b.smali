.class public Lcom/ta/utdid2/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/a/a/b$c;,
        Lcom/ta/utdid2/a/a/b$b;,
        Lcom/ta/utdid2/a/a/b$a;
    }
.end annotation


# static fields
.field static final synthetic e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/ta/utdid2/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/ta/utdid2/a/a/b;->e:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 2

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ta/utdid2/a/a/b;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BI)[B
    .registers 4

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/ta/utdid2/a/a/b;->decode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BIII)[B
    .registers 6

    .line 154
    new-instance v0, Lcom/ta/utdid2/a/a/b$b;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/a/a/b$b;-><init>(I[B)V

    const/4 p3, 0x1

    .line 156
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ta/utdid2/a/a/b$b;->a([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 161
    iget p0, v0, Lcom/ta/utdid2/a/a/b$b;->b:I

    iget-object p1, v0, Lcom/ta/utdid2/a/a/b$b;->a:[B

    array-length p1, p1

    if-ne p0, p1, :cond_1c

    .line 162
    iget-object p0, v0, Lcom/ta/utdid2/a/a/b$b;->a:[B

    return-object p0

    .line 167
    :cond_1c
    iget p0, v0, Lcom/ta/utdid2/a/a/b$b;->b:I

    new-array p0, p0, [B

    .line 168
    iget-object p1, v0, Lcom/ta/utdid2/a/a/b$b;->a:[B

    iget p2, v0, Lcom/ta/utdid2/a/a/b$b;->b:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 157
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode([BI)[B
    .registers 4

    .line 486
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/ta/utdid2/a/a/b;->encode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([BIII)[B
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    .line 501
    new-instance v0, Lcom/ta/utdid2/a/a/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/a/a/b$c;-><init>(I[B)V

    .line 504
    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    .line 507
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->f:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    .line 508
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_25

    add-int/lit8 p3, p3, 0x4

    goto :goto_25

    .line 512
    :cond_17
    rem-int/lit8 v1, p2, 0x3

    if-eqz v1, :cond_25

    if-eq v1, v3, :cond_23

    if-eq v1, v2, :cond_20

    goto :goto_25

    :cond_20
    add-int/lit8 p3, p3, 0x3

    goto :goto_25

    :cond_23
    add-int/lit8 p3, p3, 0x2

    .line 525
    :cond_25
    :goto_25
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->g:Z

    if-eqz v1, :cond_38

    if-lez p2, :cond_38

    add-int/lit8 v1, p2, -0x1

    .line 526
    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v3

    iget-boolean v4, v0, Lcom/ta/utdid2/a/a/b$c;->h:Z

    if-eqz v4, :cond_35

    goto :goto_36

    :cond_35
    move v2, v3

    :goto_36
    mul-int/2addr v1, v2

    add-int/2addr p3, v1

    .line 530
    :cond_38
    new-array v1, p3, [B

    iput-object v1, v0, Lcom/ta/utdid2/a/a/b$c;->a:[B

    .line 531
    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/ta/utdid2/a/a/b$c;->a([BIIZ)Z

    .line 533
    sget-boolean p0, Lcom/ta/utdid2/a/a/b;->e:Z

    if-nez p0, :cond_4e

    iget p0, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    if-ne p0, p3, :cond_48

    goto :goto_4e

    :cond_48
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 535
    :cond_4e
    :goto_4e
    iget-object p0, v0, Lcom/ta/utdid2/a/a/b$c;->a:[B

    return-object p0
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 3

    .line 450
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/utdid2/a/a/b;->encode([BI)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    .line 453
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

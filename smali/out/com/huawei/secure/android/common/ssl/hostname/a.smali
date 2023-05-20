.class public Lcom/huawei/secure/android/common/ssl/hostname/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    .line 5
    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    return-void
.end method

.method private a(I)I
    .registers 11

    add-int/lit8 v0, p1, 0x1

    .line 63
    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_74

    .line 69
    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char p1, v1, p1

    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt p1, v7, :cond_1e

    if-gt p1, v5, :cond_1e

    sub-int/2addr p1, v7

    goto :goto_2b

    :cond_1e
    if-lt p1, v6, :cond_25

    if-gt p1, v3, :cond_25

    add-int/lit8 p1, p1, -0x57

    goto :goto_2b

    :cond_25
    if-lt p1, v4, :cond_5d

    if-gt p1, v1, :cond_5d

    add-int/lit8 p1, p1, -0x37

    .line 80
    :goto_2b
    iget-object v8, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v0, v8, v0

    if-lt v0, v7, :cond_35

    if-gt v0, v5, :cond_35

    sub-int/2addr v0, v7

    goto :goto_42

    :cond_35
    if-lt v0, v6, :cond_3c

    if-gt v0, v3, :cond_3c

    add-int/lit8 v0, v0, -0x57

    goto :goto_42

    :cond_3c
    if-lt v0, v4, :cond_46

    if-gt v0, v1, :cond_46

    add-int/lit8 v0, v0, -0x37

    :goto_42
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    .line 88
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_74
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Ljava/lang/String;
    .registers 9

    .line 1
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    .line 2
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    .line 4
    :cond_6
    :goto_6
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-lt v0, v1, :cond_19

    .line 6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    iget v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 9
    :cond_19
    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_60

    if-eq v2, v5, :cond_53

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_40

    if-eq v2, v4, :cond_53

    if-eq v2, v3, :cond_53

    .line 37
    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 38
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_6

    .line 39
    :cond_40
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->b()C

    move-result v2

    aput-char v2, v1, v0

    .line 40
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_6

    .line 41
    :cond_53
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    iget v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 50
    :cond_60
    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    iput v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->f:I

    add-int/lit8 v0, v0, 0x1

    .line 52
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v0, v2, 0x1

    .line 53
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    aput-char v6, v1, v2

    .line 55
    :goto_6e
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-ge v0, v1, :cond_87

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v2, v1, v0

    if-ne v2, v6, :cond_87

    .line 56
    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    aput-char v6, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 57
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_6e

    .line 60
    :cond_87
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-eq v0, v1, :cond_9b

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_9b

    aget-char v2, v1, v0

    if-eq v2, v4, :cond_9b

    aget-char v0, v1, v0

    if-ne v0, v5, :cond_6

    .line 62
    :cond_9b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    iget v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->f:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private b()C
    .registers 5

    .line 1
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 2
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-eq v0, v1, :cond_36

    .line 6
    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v2, v1, v0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_33

    const/16 v3, 0x25

    if-eq v2, v3, :cond_33

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_33

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_33

    const/16 v3, 0x22

    if-eq v2, v3, :cond_33

    const/16 v3, 0x23

    if-eq v2, v3, :cond_33

    packed-switch v2, :pswitch_data_50

    packed-switch v2, :pswitch_data_5a

    .line 25
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->c()C

    move-result v0

    return v0

    .line 26
    :cond_33
    :pswitch_33
    aget-char v0, v1, v0

    return v0

    .line 27
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_50
    .packed-switch 0x2a
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x3b
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method private c()C
    .registers 10

    .line 1
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    invoke-direct {p0, v0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->a(I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    int-to-char v0, v0

    return v0

    :cond_12
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_65

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_65

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_24

    and-int/lit8 v0, v0, 0x1f

    move v3, v2

    goto :goto_2f

    :cond_24
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2c

    const/4 v3, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_2f

    :cond_2c
    const/4 v3, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_2f
    const/4 v5, 0x0

    :goto_30
    if-ge v5, v3, :cond_63

    .line 22
    iget v6, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 23
    iget v6, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v7, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-eq v6, v7, :cond_62

    iget-object v7, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v7, v7, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_46

    goto :goto_62

    :cond_46
    add-int/lit8 v6, v6, 0x1

    .line 26
    iput v6, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 28
    iget v6, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    invoke-direct {p0, v6}, Lcom/huawei/secure/android/common/ssl/hostname/a;->a(I)I

    move-result v6

    .line 29
    iget v7, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_5a

    return v4

    :cond_5a
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_62
    :goto_62
    return v4

    :cond_63
    int-to-char v0, v0

    return v0

    :cond_65
    return v4
.end method

.method private d()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_a8

    .line 6
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 7
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 12
    :goto_10
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-eq v0, v1, :cond_61

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_61

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_61

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_2b

    goto :goto_61

    .line 17
    :cond_2b
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_48

    .line 18
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    add-int/lit8 v0, v0, 0x1

    .line 19
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 22
    :goto_37
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-ge v0, v1, :cond_65

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_65

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_37

    .line 25
    :cond_48
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_5a

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_5a

    .line 26
    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 29
    :cond_5a
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_10

    .line 30
    :cond_61
    :goto_61
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    .line 51
    :cond_65
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_91

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_91

    .line 57
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 58
    :goto_78
    array-length v4, v2

    if-ge v3, v4, :cond_87

    .line 59
    invoke-direct {p0, v1}, Lcom/huawei/secure/android/common/ssl/hostname/a;->a(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 62
    :cond_87
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    iget v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 63
    :cond_91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_a8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()Ljava/lang/String;
    .registers 7

    .line 1
    :goto_0
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_0

    .line 3
    :cond_13
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_1b
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 11
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 12
    :goto_21
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_38

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_38

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_21

    .line 16
    :cond_38
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_ec

    .line 21
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    .line 25
    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_81

    .line 26
    :goto_48
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-ge v0, v1, :cond_5d

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v5, v1, v0

    if-eq v5, v3, :cond_5d

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_5d

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_48

    .line 29
    :cond_5d
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_6a

    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-eq v1, v0, :cond_6a

    goto :goto_81

    .line 30
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_81
    :goto_81
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 38
    :goto_87
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-ge v0, v1, :cond_98

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_98

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_87

    .line 43
    :cond_98
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_df

    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_df

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_b6

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_df

    :cond_b6
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v3, v0, v1

    const/16 v4, 0x49

    if-eq v3, v4, :cond_c8

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_df

    :cond_c8
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v3, v0, v1

    const/16 v4, 0x44

    if-eq v3, v4, :cond_da

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_df

    .line 45
    :cond_da
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    .line 48
    :cond_df
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    iget v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 49
    :cond_ec
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 2
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    .line 3
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    .line 6
    :goto_e
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-eq v0, v1, :cond_62

    .line 10
    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_40

    add-int/lit8 v0, v0, 0x1

    .line 12
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 26
    :goto_20
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-ge v0, v1, :cond_33

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_33

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    goto :goto_20

    .line 29
    :cond_33
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    iget v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 30
    :cond_40
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4f

    .line 31
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->b()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_55

    .line 34
    :cond_4f
    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    .line 36
    :goto_55
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 37
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    goto :goto_e

    .line 38
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 92
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    .line 93
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    .line 94
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->f:I

    .line 95
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    .line 97
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return-object v1

    .line 104
    :cond_19
    :goto_19
    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-ne v2, v3, :cond_20

    return-object v1

    .line 108
    :cond_20
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v2, v3, v2

    const/16 v3, 0x22

    const/16 v4, 0x3b

    const/16 v5, 0x2c

    const/16 v6, 0x2b

    if-eq v2, v3, :cond_45

    const/16 v3, 0x23

    if-eq v2, v3, :cond_40

    if-eq v2, v6, :cond_3d

    if-eq v2, v5, :cond_3d

    if-eq v2, v4, :cond_3d

    .line 121
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :cond_3d
    const-string v2, ""

    goto :goto_49

    .line 122
    :cond_40
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    .line 123
    :cond_45
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 140
    :goto_49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    return-object v2

    .line 144
    :cond_50
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-lt v0, v2, :cond_57

    return-object v1

    .line 148
    :cond_57
    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v3, v2, v0

    const-string v7, "Malformed DN: "

    if-eq v3, v5, :cond_80

    aget-char v3, v2, v0

    if-ne v3, v4, :cond_64

    goto :goto_80

    .line 149
    :cond_64
    aget-char v0, v2, v0

    if-ne v0, v6, :cond_69

    goto :goto_80

    .line 150
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_80
    :goto_80
    iget v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 154
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    goto :goto_19

    .line 156
    :cond_8d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 29
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->d:I

    .line 30
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->e:I

    .line 31
    iput v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->f:I

    .line 32
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    return-object v0

    .line 39
    :cond_1c
    :goto_1c
    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-ge v2, v3, :cond_b3

    .line 42
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v2, v3, v2

    const/16 v3, 0x22

    const/16 v4, 0x3b

    const/16 v5, 0x2c

    const/16 v6, 0x2b

    if-eq v2, v3, :cond_47

    const/16 v3, 0x23

    if-eq v2, v3, :cond_42

    if-eq v2, v6, :cond_3f

    if-eq v2, v5, :cond_3f

    if-eq v2, v4, :cond_3f

    .line 55
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    :cond_3f
    const-string v2, ""

    goto :goto_4b

    .line 56
    :cond_42
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    .line 57
    :cond_47
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_4b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 75
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :cond_5c
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_5f
    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    iget v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->b:I

    if-lt v1, v2, :cond_66

    goto :goto_b3

    .line 85
    :cond_66
    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->g:[C

    aget-char v3, v2, v1

    const-string v7, "Malformed DN: "

    if-eq v3, v5, :cond_8f

    aget-char v3, v2, v1

    if-ne v3, v4, :cond_73

    goto :goto_8f

    .line 86
    :cond_73
    aget-char v1, v2, v1

    if-ne v1, v6, :cond_78

    goto :goto_8f

    .line 87
    :cond_78
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_8f
    :goto_8f
    iget v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->c:I

    .line 91
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/hostname/a;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9c

    goto :goto_1c

    .line 93
    :cond_9c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/hostname/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b3
    :goto_b3
    return-object v0
.end method

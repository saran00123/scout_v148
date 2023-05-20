.class public Lorg/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMaskValue(Ljava/lang/String;I)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_a

    if-ltz p0, :cond_a

    if-gt p0, p1, :cond_a

    const/4 v0, 0x1

    :catch_a
    :cond_a
    return v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isValidIPv4(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v0, v1

    move v2, v0

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v0, v3, :cond_42

    const/16 v3, 0x2e

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-le v3, v0, :cond_42

    if-ne v2, v4, :cond_2d

    return v1

    :cond_2d
    :try_start_2d
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_35} :catch_41

    if-ltz v0, :cond_41

    const/16 v4, 0xff

    if-le v0, v4, :cond_3c

    goto :goto_41

    :cond_3c
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catch_41
    :cond_41
    :goto_41
    return v1

    :cond_42
    if-ne v2, v4, :cond_45

    const/4 v1, 0x1

    :cond_45
    return v1
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-lez v0, :cond_28

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-static {v1}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_27

    const/16 p0, 0x20

    invoke-static {v1, p0}, Lorg/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_27
    const/4 v2, 0x1

    :cond_28
    return v2
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v0, v1

    move v2, v0

    move v3, v2

    :goto_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ge v0, v4, :cond_72

    const/16 v4, 0x3a

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lt v4, v0, :cond_72

    if-ne v2, v5, :cond_30

    return v1

    :cond_30
    if-eq v0, v4, :cond_61

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    if-ne v4, v7, :cond_4f

    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_4f

    invoke-static {v5}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    return v1

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_4f
    :try_start_4f
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_59} :catch_60

    if-ltz v0, :cond_60

    const v5, 0xffff

    if-le v0, v5, :cond_6e

    :catch_60
    :cond_60
    return v1

    :cond_61
    if-eq v4, v6, :cond_6d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    if-eq v4, v0, :cond_6d

    if-eqz v3, :cond_6d

    return v1

    :cond_6d
    move v3, v6

    :cond_6e
    :goto_6e
    add-int/lit8 v0, v4, 0x1

    add-int/2addr v2, v6

    goto :goto_1c

    :cond_72
    if-eq v2, v5, :cond_76

    if-eqz v3, :cond_77

    :cond_76
    move v1, v6

    :cond_77
    return v1
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-lez v0, :cond_28

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-static {v1}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_27

    const/16 p0, 0x80

    invoke-static {v1, p0}, Lorg/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_27
    const/4 v2, 0x1

    :cond_28
    return v2
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.class public Lcom/huawei/secure/android/common/anonymization/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;CI)I
    .registers 5

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_13

    add-int/lit8 p2, p2, -0x1

    if-gtz p2, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    :goto_16
    return v0
.end method

.method public static a(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1e

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_1e

    .line 98
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [C

    const/4 v0, 0x0

    .line 99
    :goto_10
    array-length v1, p0

    if-ge v0, v1, :cond_18

    .line 100
    aput-char p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 103
    :cond_18
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_1e
    :goto_1e
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_4f

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_15

    goto :goto_4f

    .line 70
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [C

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    .line 74
    :goto_2a
    array-length v3, v0

    if-ge v2, v3, :cond_49

    .line 75
    aget-char v3, v0, v2

    .line 76
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-gez v4, :cond_38

    .line 78
    aput-char v3, p0, v2

    goto :goto_46

    .line 80
    :cond_38
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v4, v3, :cond_40

    move v3, v1

    goto :goto_44

    :cond_40
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_44
    aput-char v3, p0, v2

    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 84
    :cond_49
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_4f
    :goto_4f
    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_26

    .line 53
    array-length v0, p1

    if-gtz v0, :cond_6

    goto :goto_26

    .line 57
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 59
    :goto_f
    array-length v2, p1

    if-ge v1, v2, :cond_21

    .line 60
    aget-object v2, p1, v1

    if-eqz v2, :cond_1e

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 65
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    :goto_26
    const-string p0, ""

    return-object p0
.end method

.method public static a([Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_11

    .line 85
    array-length v1, p0

    if-gtz v1, :cond_8

    goto :goto_11

    :cond_8
    if-ltz p1, :cond_11

    .line 89
    array-length v1, p0

    if-lt p1, v1, :cond_e

    goto :goto_11

    .line 93
    :cond_e
    aget-object p0, p0, p1

    return-object p0

    :cond_11
    :goto_11
    return-object v0
.end method

.method public static a(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-nez p0, :cond_9

    .line 44
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ltz p1, :cond_24

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le p1, v4, :cond_15

    goto :goto_24

    .line 51
    :cond_15
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    .line 52
    :cond_24
    :goto_24
    new-array p1, v2, [Ljava/lang/String;

    aput-object p0, p1, v3

    aput-object v0, p1, v1

    return-object p1
.end method

.method public static a(Ljava/lang/String;II)[Ljava/lang/String;
    .registers 5

    .line 19
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 20
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sub-int/2addr p2, p1

    invoke-static {p0, p2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/anonymization/a;->b(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;III)[Ljava/lang/String;
    .registers 6

    .line 21
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 22
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    invoke-static {p0, p2, p3}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/anonymization/a;->b(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[I)[Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_9

    const-string p0, ""

    .line 23
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_47

    array-length v0, p1

    if-gtz v0, :cond_15

    goto :goto_47

    .line 30
    :cond_15
    array-length v0, p1

    if-gt v0, v2, :cond_1f

    .line 31
    aget p1, p1, v1

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_1f
    aget v0, p1, v1

    .line 35
    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [I

    move v4, v1

    .line 36
    :goto_26
    array-length v5, v3

    if-ge v4, v5, :cond_32

    add-int/lit8 v5, v4, 0x1

    .line 37
    aget v6, p1, v5

    sub-int/2addr v6, v0

    aput v6, v3, v4

    move v4, v5

    goto :goto_26

    .line 40
    :cond_32
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/huawei/secure/android/common/anonymization/a;->b(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_47
    :goto_47
    new-array p1, v2, [Ljava/lang/String;

    aput-object p0, p1, v1

    return-object p1
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_b

    .line 2
    array-length p0, p1

    if-gtz p0, :cond_a

    .line 3
    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_a
    return-object p1

    .line 9
    :cond_b
    array-length v0, p1

    if-gtz v0, :cond_f

    return-object p0

    .line 13
    :cond_f
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    .line 16
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v1, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 5
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_12

    .line 6
    new-array p1, v2, [Ljava/lang/String;

    aput-object p0, p1, v0

    return-object p1

    :cond_12
    move v1, v0

    move v3, v2

    .line 10
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_25

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_22

    add-int/lit8 v3, v3, 0x1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_25
    if-gt v3, v2, :cond_2c

    .line 17
    new-array p1, v2, [Ljava/lang/String;

    aput-object p0, p1, v0

    return-object p1

    .line 20
    :cond_2c
    new-array v1, v3, [Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v0

    move v5, v4

    .line 23
    :goto_39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_5a

    if-ge v5, v3, :cond_5a

    .line 24
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_54

    add-int/lit8 v6, v5, 0x1

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v5, v6

    goto :goto_57

    .line 29
    :cond_54
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 33
    :cond_5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    return-object v1
.end method

.method public static b(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

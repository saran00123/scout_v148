.class public Lcom/nimbusds/jose/shaded/json/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGetterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    .line 41
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x67

    .line 42
    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x65

    .line 43
    aput-char v4, v1, v3

    const/4 v4, 0x2

    const/16 v5, 0x74

    .line 44
    aput-char v5, v1, v4

    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x61

    if-lt v2, v4, :cond_26

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_26

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    :cond_26
    const/4 v4, 0x3

    .line 48
    aput-char v2, v1, v4

    :goto_29
    if-ge v3, v0, :cond_36

    add-int/lit8 v2, v3, 0x3

    .line 50
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 52
    :cond_36
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getIsName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    .line 57
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x69

    .line 58
    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x73

    .line 59
    aput-char v4, v1, v3

    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x61

    if-lt v2, v4, :cond_21

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_21

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    :cond_21
    const/4 v4, 0x2

    .line 63
    aput-char v2, v1, v4

    :goto_24
    if-ge v3, v0, :cond_31

    add-int/lit8 v2, v3, 0x2

    .line 65
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 67
    :cond_31
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getSetterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    .line 25
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x73

    .line 26
    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x65

    .line 27
    aput-char v4, v1, v3

    const/4 v4, 0x2

    const/16 v5, 0x74

    .line 28
    aput-char v5, v1, v4

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x61

    if-lt v2, v4, :cond_26

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_26

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    :cond_26
    const/4 v4, 0x3

    .line 32
    aput-char v2, v1, v4

    :goto_29
    if-ge v3, v0, :cond_36

    add-int/lit8 v2, v3, 0x3

    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 36
    :cond_36
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

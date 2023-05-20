.class public Lanet/channel/strategy/utils/c;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .registers 7

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/32 v1, 0x3b9aca00

    .line 136
    :cond_a
    div-long v3, p0, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    rem-long/2addr p0, v1

    const-wide/16 v3, 0x3e8

    .line 139
    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_a

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_77

    .line 150
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_77

    .line 154
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 156
    :try_start_10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b

    goto :goto_18

    .line 160
    :cond_2b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/strategy/utils/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 165
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_65
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_65} :catch_66

    goto :goto_72

    :catch_66
    move-exception p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 167
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Request"

    const-string v3, "format params failed"

    invoke-static {v2, v3, p1, p0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 169
    :goto_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_77
    :goto_77
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 8

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 22
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 23
    array-length v0, p0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_40

    array-length v0, p0

    const/16 v2, 0xf

    if-le v0, v2, :cond_16

    goto :goto_40

    :cond_16
    move v0, v1

    move v2, v0

    move v3, v2

    .line 29
    :goto_19
    array-length v4, p0

    if-ge v0, v4, :cond_3e

    .line 30
    aget-char v4, p0, v0

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2f

    const/16 v6, 0x39

    if-gt v4, v6, :cond_2f

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/16 v4, 0xff

    if-le v3, v4, :cond_3a

    return v1

    :cond_2f
    const/16 v3, 0x2e

    if-ne v4, v3, :cond_3d

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    if-le v2, v3, :cond_39

    return v1

    :cond_39
    move v3, v1

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3d
    return v1

    :cond_3e
    const/4 p0, 0x1

    return p0

    :cond_40
    :goto_40
    return v1
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 13

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 52
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 54
    array-length v0, p0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_11

    return v1

    .line 65
    :cond_11
    aget-char v0, p0, v1

    const/16 v2, 0x3a

    const/4 v3, 0x1

    if-ne v0, v2, :cond_23

    .line 67
    aget-char v0, p0, v3

    if-eq v0, v2, :cond_1d

    return v1

    :cond_1d
    move v4, v1

    move v6, v4

    move v0, v3

    move v5, v0

    move v7, v5

    goto :goto_28

    :cond_23
    move v0, v1

    move v4, v0

    move v5, v4

    move v6, v5

    move v7, v3

    .line 71
    :goto_28
    array-length v8, p0

    const/4 v9, 0x7

    if-ge v0, v8, :cond_56

    .line 72
    aget-char v8, p0, v0

    const/16 v10, 0x10

    .line 73
    invoke-static {v8, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_42

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v10

    const v7, 0xffff

    if-le v6, v7, :cond_40

    return v1

    :cond_40
    move v7, v1

    goto :goto_52

    :cond_42
    if-ne v8, v2, :cond_55

    add-int/lit8 v5, v5, 0x1

    if-le v5, v9, :cond_49

    return v1

    :cond_49
    if-eqz v7, :cond_50

    if-eqz v4, :cond_4e

    return v1

    :cond_4e
    move v4, v3

    goto :goto_52

    :cond_50
    move v6, v1

    move v7, v3

    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_55
    return v1

    :cond_56
    if-nez v4, :cond_5b

    if-ge v5, v9, :cond_5b

    return v1

    :cond_5b
    return v3
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 6

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 111
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 112
    array-length v0, p0

    if-lez v0, :cond_57

    array-length v0, p0

    const/16 v2, 0xff

    if-le v0, v2, :cond_15

    goto :goto_57

    :cond_15
    move v0, v1

    move v2, v0

    .line 116
    :goto_17
    array-length v3, p0

    if-ge v0, v3, :cond_56

    .line 117
    aget-char v3, p0, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_26

    aget-char v3, p0, v0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_38

    :cond_26
    aget-char v3, p0, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_32

    aget-char v3, p0, v0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_38

    :cond_32
    aget-char v3, p0, v0

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_3a

    :cond_38
    const/4 v2, 0x1

    goto :goto_53

    .line 119
    :cond_3a
    aget-char v3, p0, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_46

    aget-char v3, p0, v0

    const/16 v4, 0x39

    if-le v3, v4, :cond_53

    :cond_46
    aget-char v3, p0, v0

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_53

    aget-char v3, p0, v0

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_53

    return v1

    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_56
    return v2

    :cond_57
    :goto_57
    return v1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

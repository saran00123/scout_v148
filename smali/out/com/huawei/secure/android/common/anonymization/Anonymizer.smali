.class public Lcom/huawei/secure/android/common/anonymization/Anonymizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Anonymizer"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maskAccountId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_27

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_27

    .line 5
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_13

    const-string p0, "*"

    return-object p0

    .line 9
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ge v0, v2, :cond_21

    .line 10
    invoke-static {p0, v3, v1}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskCommonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const/4 v0, 0x4

    .line 13
    invoke-static {p0, v3, v0}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskCommonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    :goto_27
    const-string p0, ""

    return-object p0
.end method

.method public static maskBankAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_33

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_33

    .line 5
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_17

    const/16 v0, 0x2a

    .line 6
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x4

    if-lt v0, v1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2d

    .line 10
    invoke-static {p0, v2, v2}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskCommonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 v0, 0x6

    .line 13
    invoke-static {p0, v0, v2}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskCommonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    :goto_33
    const-string p0, ""

    return-object p0
.end method

.method public static maskBirthday(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-eqz p0, :cond_3b

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_3b

    .line 5
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_19

    const/16 v0, 0x2a

    .line 6
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_19
    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "0123456789"

    const-string v4, "*"

    invoke-static {p0, v3, v4}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public static maskCommonString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    if-eqz p0, :cond_4e

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_4e

    :cond_b
    const/4 v1, 0x0

    if-gez p1, :cond_f

    move p1, v1

    :cond_f
    if-gez p2, :cond_12

    move p2, v1

    .line 15
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int v3, p1, p2

    const/4 v4, 0x1

    if-gt v2, v3, :cond_23

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    move p2, p1

    move p1, v4

    goto :goto_29

    .line 20
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int p2, v2, p2

    .line 23
    :goto_29
    invoke-static {p0, p1, p2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    .line 24
    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p0, v4}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x2a

    invoke-static {p2, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    const/4 p2, 0x2

    invoke-static {p0, p2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-static {v0, p1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public static maskEmail(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    if-eqz p0, :cond_71

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_71

    .line 5
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_15

    const-string p0, "*"

    return-object p0

    :cond_15
    const/16 v1, 0x40

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, 0x2

    const/16 v4, 0x2a

    const/4 v5, 0x0

    if-gez v1, :cond_3c

    .line 11
    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 12
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    const/16 v6, 0x2e

    .line 15
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v7, v1, 0x1

    .line 17
    invoke-static {p0, v1, v7, v6}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;III)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {p0, v3}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_71
    :goto_71
    return-object v0
.end method

.method public static maskId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_15

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_15

    .line 5
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskCommonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_15
    const-string p0, ""

    return-object p0
.end method

.method public static maskImeiImsi(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_15

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_15

    .line 4
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskCommonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_15
    const-string p0, ""

    return-object p0
.end method

.method public static maskIpV4(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-eqz p0, :cond_39

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_39

    :cond_b
    const/16 v1, 0x2e

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2a

    if-gez v1, :cond_1a

    .line 7
    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 10
    invoke-static {p0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {p0, v3}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    :goto_39
    return-object v0
.end method

.method public static maskIpV6(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    if-eqz p0, :cond_65

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_65

    :cond_b
    const/16 v1, 0x3a

    .line 5
    invoke-static {p0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->b(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 8
    array-length v3, v2

    const/16 v4, 0x2a

    const/4 v5, 0x1

    if-gt v3, v5, :cond_1c

    .line 9
    invoke-static {p0, v4}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_1c
    array-length v3, v2

    const/16 v6, 0x8

    const/4 v7, 0x2

    if-eq v3, v6, :cond_47

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v5

    .line 15
    invoke-static {p0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 16
    new-array v1, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v5}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "0123456789ABCDEFabcdef"

    const-string v3, "*"

    invoke-static {p0, v2, v3}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_47
    aget-object p0, v2, v7

    invoke-static {p0}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskLower8Bit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    const/4 p0, 0x3

    .line 20
    :goto_50
    array-length v0, v2

    if-ge p0, v0, :cond_5e

    .line 21
    aget-object v0, v2, p0

    invoke-static {v0, v4}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_50

    :cond_5e
    const-string p0, ":"

    .line 24
    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    :goto_65
    return-object v0
.end method

.method public static maskLower8Bit(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_10

    .line 2
    sget-object p0, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->a:Ljava/lang/String;

    const-string v0, "maskLower8Bit: s is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2a

    const/4 v3, 0x2

    if-gt v0, v3, :cond_1e

    .line 6
    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 9
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v1, v0}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-eqz p0, :cond_3a

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_3a

    :cond_b
    const/16 v1, 0x2d

    const/4 v2, 0x2

    .line 5
    invoke-static {p0, v1, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;CI)I

    move-result v1

    const-string v3, "*"

    const-string v4, "0123456789ABCDEFabcdef"

    if-gez v1, :cond_1d

    .line 7
    invoke-static {p0, v4, v3}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_1d
    invoke-static {p0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 11
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/anonymization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4, v3}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public static maskName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_19

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_19

    .line 5
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_13

    const-string p0, "*"

    return-object p0

    :cond_13
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v1, v0}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskCommonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    const-string p0, ""

    return-object p0
.end method

.method public static maskPhone(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_33

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_33

    .line 5
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_17

    const/16 v0, 0x2a

    .line 6
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/anonymization/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_2c

    .line 10
    invoke-static {p0, v1, v1}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskCommonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 12
    invoke-static {p0, v0, v1}, Lcom/huawei/secure/android/common/anonymization/Anonymizer;->maskCommonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    :goto_33
    const-string p0, ""

    return-object p0
.end method

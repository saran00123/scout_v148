.class public Lcom/huawei/secure/android/common/util/EncodeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "EncodeUtil"

.field private static final b:[C

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [C

    fill-array-data v0, :array_44

    sput-object v0, Lcom/huawei/secure/android/common/util/EncodeUtil;->b:[C

    const/16 v0, 0x100

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/huawei/secure/android/common/util/EncodeUtil;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_f
    const/16 v1, 0xff

    if-ge v0, v1, :cond_42

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1b

    const/16 v1, 0x39

    if-le v0, v1, :cond_2c

    :cond_1b
    const/16 v1, 0x41

    if-lt v0, v1, :cond_23

    const/16 v1, 0x5a

    if-le v0, v1, :cond_2c

    :cond_23
    const/16 v1, 0x61

    if-lt v0, v1, :cond_32

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2c

    goto :goto_32

    .line 9
    :cond_2c
    sget-object v1, Lcom/huawei/secure/android/common/util/EncodeUtil;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_3e

    .line 10
    :cond_32
    :goto_32
    sget-object v1, Lcom/huawei/secure/android/common/util/EncodeUtil;->c:[Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/secure/android/common/util/EncodeUtil;->b(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_3e
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_f

    :cond_42
    return-void

    nop

    :array_44
    .array-data 2
        0x2cs
        0x2es
        0x2ds
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/huawei/secure/android/common/util/a;)Ljava/lang/Character;
    .registers 8

    .line 36
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->c()V

    .line 37
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->d()Ljava/lang/Character;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 39
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->i()V

    return-object v1

    .line 44
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_1a

    .line 45
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->i()V

    return-object v1

    .line 49
    :cond_1a
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->d()Ljava/lang/Character;

    move-result-object v0

    if-nez v0, :cond_24

    .line 51
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->i()V

    return-object v1

    .line 58
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v4, 0x62

    const/16 v5, 0x8

    if-ne v3, v4, :cond_33

    .line 59
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 60
    :cond_33
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v4, 0x74

    if-ne v3, v4, :cond_42

    const/16 p0, 0x9

    .line 61
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 62
    :cond_42
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_51

    const/16 p0, 0xa

    .line 63
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 64
    :cond_51
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v4, 0x76

    if-ne v3, v4, :cond_60

    const/16 p0, 0xb

    .line 65
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 66
    :cond_60
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_6f

    const/16 p0, 0xc

    .line 67
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 68
    :cond_6f
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v4, 0x72

    if-ne v3, v4, :cond_7e

    const/16 p0, 0xd

    .line 69
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 70
    :cond_7e
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_8b

    .line 71
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 72
    :cond_8b
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_98

    .line 73
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 74
    :cond_98
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    if-ne v3, v2, :cond_a3

    .line 75
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 78
    :cond_a3
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    const/16 v3, 0x78

    const/16 v4, 0x10

    const/4 v6, 0x0

    if-ne v2, v3, :cond_e2

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b7
    const/4 v3, 0x2

    if-ge v6, v3, :cond_ca

    .line 82
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->e()Ljava/lang/Character;

    move-result-object v3

    if-eqz v3, :cond_c6

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_b7

    .line 86
    :cond_c6
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->i()V

    return-object v1

    .line 92
    :cond_ca
    :try_start_ca
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 93
    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_166

    int-to-char v0, v2

    .line 94
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_ca .. :try_end_dd} :catch_de

    return-object p0

    .line 98
    :catch_de
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->i()V

    return-object v1

    .line 103
    :cond_e2
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_11e

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f3
    const/4 v3, 0x4

    if-ge v6, v3, :cond_106

    .line 107
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->e()Ljava/lang/Character;

    move-result-object v3

    if-eqz v3, :cond_102

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_f3

    .line 111
    :cond_102
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->i()V

    return-object v1

    .line 117
    :cond_106
    :try_start_106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 118
    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_166

    int-to-char v0, v2

    .line 119
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0
    :try_end_119
    .catch Ljava/lang/NumberFormatException; {:try_start_106 .. :try_end_119} :catch_11a

    return-object p0

    .line 123
    :catch_11a
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->i()V

    return-object v1

    .line 128
    :cond_11e
    invoke-static {v0}, Lcom/huawei/secure/android/common/util/a;->c(Ljava/lang/Character;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->d()Ljava/lang/Character;

    move-result-object v3

    .line 135
    invoke-static {v3}, Lcom/huawei/secure/android/common/util/a;->c(Ljava/lang/Character;)Z

    move-result v4

    if-nez v4, :cond_13a

    .line 136
    invoke-virtual {p0, v3}, Lcom/huawei/secure/android/common/util/a;->a(Ljava/lang/Character;)V

    goto :goto_14e

    .line 138
    :cond_13a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->d()Ljava/lang/Character;

    move-result-object v3

    .line 141
    invoke-static {v3}, Lcom/huawei/secure/android/common/util/a;->c(Ljava/lang/Character;)Z

    move-result v4

    if-nez v4, :cond_14b

    .line 142
    invoke-virtual {p0, v3}, Lcom/huawei/secure/android/common/util/a;->a(Ljava/lang/Character;)V

    goto :goto_14e

    .line 144
    :cond_14b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    :goto_14e
    :try_start_14e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 150
    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_166

    int-to-char v0, v2

    .line 151
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0
    :try_end_161
    .catch Ljava/lang/NumberFormatException; {:try_start_14e .. :try_end_161} :catch_162

    return-object p0

    .line 155
    :catch_162
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/util/a;->i()V

    return-object v1

    :cond_166
    return-object v0
.end method

.method private static a(C)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xff

    if-ge p0, v0, :cond_9

    .line 33
    sget-object v0, Lcom/huawei/secure/android/common/util/EncodeUtil;->c:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 35
    :cond_9
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/EncodeUtil;->b(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([CLjava/lang/Character;)Ljava/lang/String;
    .registers 4

    .line 6
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/util/EncodeUtil;->a(C[C)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_1c

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lcom/huawei/secure/android/common/util/EncodeUtil;->a(C)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_36

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    const/16 v0, 0x100

    if-ge p1, v0, :cond_6b

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\\x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_6b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\\u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([CLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/util/EncodeUtil;->a([CLjava/lang/Character;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 5
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(C[C)Z
    .registers 6

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget-char v3, p1, v2

    if-ne p0, v3, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private static b(C)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeForJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 5
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v2, Lcom/huawei/secure/android/common/util/a;

    invoke-direct {v2, p0}, Lcom/huawei/secure/android/common/util/a;-><init>(Ljava/lang/String;)V

    .line 7
    :goto_13
    invoke-virtual {v2}, Lcom/huawei/secure/android/common/util/a;->a()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 8
    invoke-static {v2}, Lcom/huawei/secure/android/common/util/EncodeUtil;->a(Lcom/huawei/secure/android/common/util/a;)Ljava/lang/Character;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 12
    :cond_23
    invoke-virtual {v2}, Lcom/huawei/secure/android/common/util/a;->d()Ljava/lang/Character;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 15
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    .line 17
    sget-object v0, Lcom/huawei/secure/android/common/util/EncodeUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode js: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static encodeForJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/util/EncodeUtil;->b:[C

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/util/EncodeUtil;->encodeForJavaScript(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeForJavaScript(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 5

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 6
    :cond_9
    :try_start_9
    invoke-static {p1, p0}, Lcom/huawei/secure/android/common/util/EncodeUtil;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 8
    sget-object p1, Lcom/huawei/secure/android/common/util/EncodeUtil;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encode js: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

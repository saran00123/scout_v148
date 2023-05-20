.class Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;
.super Ljava/lang/Object;
.source "JStylerObj.java"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/json/JStylerObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MPAgressive"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;-><init>()V

    return-void
.end method


# virtual methods
.method public mustBeProtect(Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 87
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    .line 93
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eq v3, p1, :cond_13

    return v2

    .line 97
    :cond_13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 98
    invoke-static {v3}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isSpecial(C)Z

    move-result v4

    if-nez v4, :cond_ab

    invoke-static {v3}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isUnicode(C)Z

    move-result v3

    if-eqz v3, :cond_25

    goto/16 :goto_ab

    :cond_25
    move v3, v2

    :goto_26
    if-ge v3, v1, :cond_3d

    .line 102
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 103
    invoke-static {v4}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isSpecialClose(C)Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-static {v4}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isUnicode(C)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_3c

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_3c
    :goto_3c
    return v2

    .line 107
    :cond_3d
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    return v2

    .line 110
    :cond_44
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-lt v3, v6, :cond_52

    if-le v3, v5, :cond_54

    :cond_52
    if-ne v3, v4, :cond_aa

    :cond_54
    move v7, v3

    move v3, v2

    :goto_56
    if-ge v3, v1, :cond_64

    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_64

    if-le v7, v5, :cond_61

    goto :goto_64

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_64
    :goto_64
    if-ne v3, v1, :cond_67

    return v2

    :cond_67
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_6d

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    :cond_6d
    if-ge v3, v1, :cond_77

    .line 129
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_77

    if-le v7, v5, :cond_6b

    :cond_77
    if-ne v3, v1, :cond_7a

    return v2

    :cond_7a
    const/16 v8, 0x45

    if-eq v7, v8, :cond_82

    const/16 v8, 0x65

    if-ne v7, v8, :cond_96

    :cond_82
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_87

    return v0

    .line 140
    :cond_87
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_91

    if-ne v7, v4, :cond_96

    :cond_91
    add-int/lit8 v3, v3, 0x1

    .line 143
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    :cond_96
    if-ne v3, v1, :cond_99

    return v0

    :cond_99
    :goto_99
    if-ge v3, v1, :cond_a7

    .line 150
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_a7

    if-le v4, v5, :cond_a4

    goto :goto_a7

    :cond_a4
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    :cond_a7
    :goto_a7
    if-ne v3, v1, :cond_aa

    return v2

    :cond_aa
    return v0

    :cond_ab
    :goto_ab
    return v2
.end method

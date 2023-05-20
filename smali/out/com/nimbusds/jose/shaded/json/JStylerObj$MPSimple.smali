.class Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;
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
    name = "MPSimple"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;-><init>()V

    return-void
.end method


# virtual methods
.method public mustBeProtect(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 55
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    .line 58
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eq v3, p1, :cond_13

    return v2

    .line 61
    :cond_13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_23

    :cond_1f
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_24

    :cond_23
    return v2

    :cond_24
    move v3, v0

    :goto_25
    if-ge v3, v1, :cond_4a

    .line 66
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 67
    invoke-static {v4}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isSpace(C)Z

    move-result v5

    if-eqz v5, :cond_32

    return v2

    .line 69
    :cond_32
    invoke-static {v4}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isSpecial(C)Z

    move-result v5

    if-eqz v5, :cond_39

    return v2

    .line 71
    :cond_39
    invoke-static {v4}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isSpecialChar(C)Z

    move-result v5

    if-eqz v5, :cond_40

    return v2

    .line 73
    :cond_40
    invoke-static {v4}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isUnicode(C)Z

    move-result v4

    if-eqz v4, :cond_47

    return v2

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 77
    :cond_4a
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/json/JStylerObj;->isKeyword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    return v2

    :cond_51
    return v0
.end method

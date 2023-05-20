.class Lcom/nimbusds/jose/shaded/json/JStylerObj;
.super Ljava/lang/Object;
.source "JStylerObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;,
        Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;
    }
.end annotation


# static fields
.field public static final ESCAPE4Web:Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;

.field public static final ESCAPE_LT:Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;

.field public static final MP_AGGRESIVE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;

.field public static final MP_SIMPLE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;

.field public static final MP_TRUE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_SIMPLE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;

    .line 28
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_TRUE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;

    .line 29
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_AGGRESIVE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;

    .line 31
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->ESCAPE_LT:Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;

    .line 32
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;-><init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JStylerObj;->ESCAPE4Web:Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKeyword(Ljava/lang/String;)Z
    .registers 4

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_9

    return v1

    .line 190
    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_18

    const-string v0, "null"

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_18
    const/16 v2, 0x74

    if-ne v0, v2, :cond_23

    const-string v0, "true"

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_23
    const/16 v2, 0x66

    if-ne v0, v2, :cond_2e

    const-string v0, "false"

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2e
    const/16 v2, 0x4e

    if-ne v0, v2, :cond_39

    const-string v0, "NaN"

    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_39
    return v1
.end method

.method public static isSpace(C)Z
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isSpecial(C)Z
    .registers 2

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_23

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_23

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_23

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x27

    if-eq p0, v0, :cond_23

    const/16 v0, 0x22

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public static isSpecialChar(C)Z
    .registers 2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0xc

    if-eq p0, v0, :cond_f

    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

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

.method public static isSpecialClose(C)Z
    .registers 2

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_13

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_13

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isSpecialOpen(C)Z
    .registers 2

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_13

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_13

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isUnicode(C)Z
    .registers 2

    if-ltz p0, :cond_6

    const/16 v0, 0x1f

    if-le p0, v0, :cond_16

    :cond_6
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_e

    const/16 v0, 0x9f

    if-le p0, v0, :cond_16

    :cond_e
    const/16 v0, 0x2000

    if-lt p0, v0, :cond_18

    const/16 v0, 0x20ff

    if-gt p0, v0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

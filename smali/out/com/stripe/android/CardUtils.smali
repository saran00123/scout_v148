.class public final Lcom/stripe/android/CardUtils;
.super Ljava/lang/Object;
.source "CardUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0017\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0002\u0008\nJ\u0012\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0017\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/android/CardUtils;",
        "",
        "()V",
        "getPossibleCardBrand",
        "Lcom/stripe/android/model/CardBrand;",
        "cardNumber",
        "",
        "shouldNormalize",
        "",
        "isValidCardLength",
        "isValidCardLength$stripe_release",
        "isValidCardNumber",
        "isValidLuhnNumber",
        "isValidLuhnNumber$stripe_release",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/android/CardUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/stripe/android/CardUtils;

    invoke-direct {v0}, Lcom/stripe/android/CardUtils;-><init>()V

    sput-object v0, Lcom/stripe/android/CardUtils;->INSTANCE:Lcom/stripe/android/CardUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPossibleCardBrand(Ljava/lang/String;)Lcom/stripe/android/model/CardBrand;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle card brand lookup. This method should not be relied on for determining CardBrand."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    sget-object v0, Lcom/stripe/android/CardUtils;->INSTANCE:Lcom/stripe/android/CardUtils;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/stripe/android/CardUtils;->getPossibleCardBrand(Ljava/lang/String;Z)Lcom/stripe/android/model/CardBrand;

    move-result-object p0

    return-object p0
.end method

.method private final getPossibleCardBrand(Ljava/lang/String;Z)Lcom/stripe/android/model/CardBrand;
    .registers 4

    .line 86
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_14

    .line 87
    sget-object p1, Lcom/stripe/android/model/CardBrand;->Unknown:Lcom/stripe/android/model/CardBrand;

    return-object p1

    :cond_14
    if-eqz p2, :cond_1f

    .line 92
    new-instance p2, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    invoke-direct {p2, p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getNormalized()Ljava/lang/String;

    move-result-object p1

    .line 97
    :cond_1f
    sget-object p2, Lcom/stripe/android/model/CardBrand;->Companion:Lcom/stripe/android/model/CardBrand$Companion;

    invoke-virtual {p2, p1}, Lcom/stripe/android/model/CardBrand$Companion;->fromCardNumber(Ljava/lang/String;)Lcom/stripe/android/model/CardBrand;

    move-result-object p1

    return-object p1
.end method

.method public static final isValidCardNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle validation"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 32
    new-instance v0, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    if-eqz p0, :cond_5

    goto :goto_7

    :cond_5
    const-string p0, ""

    :goto_7
    invoke-direct {v0, p0}, Lcom/stripe/android/cards/CardNumber$Unvalidated;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getNormalized()Ljava/lang/String;

    move-result-object p0

    .line 33
    sget-object v0, Lcom/stripe/android/CardUtils;->INSTANCE:Lcom/stripe/android/CardUtils;

    invoke-virtual {v0, p0}, Lcom/stripe/android/CardUtils;->isValidLuhnNumber$stripe_release(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/stripe/android/CardUtils;->INSTANCE:Lcom/stripe/android/CardUtils;

    invoke-virtual {v0, p0}, Lcom/stripe/android/CardUtils;->isValidCardLength$stripe_release(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method


# virtual methods
.method public final isValidCardLength$stripe_release(Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/stripe/android/CardUtils;->getPossibleCardBrand(Ljava/lang/String;Z)Lcom/stripe/android/model/CardBrand;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/stripe/android/model/CardBrand;->isValidCardNumberLength(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public final isValidLuhnNumber$stripe_release(Ljava/lang/String;)Z
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 50
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v0

    move v4, v2

    :goto_c
    if-ltz v1, :cond_2c

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 52
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_19

    return v0

    .line 56
    :cond_19
    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    xor-int/2addr v4, v2

    if-eqz v4, :cond_22

    mul-int/lit8 v5, v5, 0x2

    :cond_22
    const/16 v6, 0x9

    if-le v5, v6, :cond_28

    add-int/lit8 v5, v5, -0x9

    :cond_28
    add-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 70
    :cond_2c
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_31

    move v0, v2

    :cond_31
    return v0
.end method

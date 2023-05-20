.class public final Lcom/stripe/android/model/CardBrand$Companion;
.super Ljava/lang/Object;
.source "CardBrand.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/CardBrand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardBrand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardBrand.kt\ncom/stripe/android/model/CardBrand$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,299:1\n1245#2,2:300\n1245#2,2:302\n*E\n*S KotlinDebug\n*F\n+ 1 CardBrand.kt\ncom/stripe/android/model/CardBrand$Companion\n*L\n283#1,2:300\n293#1,2:302\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010\t\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/android/model/CardBrand$Companion;",
        "",
        "()V",
        "CVC_COMMON_LENGTH",
        "",
        "fromCardNumber",
        "Lcom/stripe/android/model/CardBrand;",
        "cardNumber",
        "",
        "fromCode",
        "code",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 270
    invoke-direct {p0}, Lcom/stripe/android/model/CardBrand$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromCardNumber(Ljava/lang/String;)Lcom/stripe/android/model/CardBrand;
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Card brand matching logic will no longer be public in upcoming major release."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 278
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_10

    :cond_e
    move v3, v1

    goto :goto_11

    :cond_10
    :goto_10
    move v3, v2

    :goto_11
    if-eqz v3, :cond_16

    .line 279
    sget-object p1, Lcom/stripe/android/model/CardBrand;->Unknown:Lcom/stripe/android/model/CardBrand;

    return-object p1

    .line 282
    :cond_16
    invoke-static {}, Lcom/stripe/android/model/CardBrand;->values()[Lcom/stripe/android/model/CardBrand;

    move-result-object v3

    .line 300
    array-length v4, v3

    move v5, v1

    :goto_1c
    if-ge v5, v4, :cond_3b

    aget-object v6, v3, v5

    .line 284
    invoke-static {v6, p1}, Lcom/stripe/android/model/CardBrand;->access$getPatternForLength(Lcom/stripe/android/model/CardBrand;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    if-eqz v7, :cond_34

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    if-eqz v7, :cond_34

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-ne v7, v2, :cond_34

    move v7, v2

    goto :goto_35

    :cond_34
    move v7, v1

    :goto_35
    if-eqz v7, :cond_38

    goto :goto_3c

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    if-eqz v6, :cond_3f

    goto :goto_41

    .line 285
    :cond_3f
    sget-object v6, Lcom/stripe/android/model/CardBrand;->Unknown:Lcom/stripe/android/model/CardBrand;

    :goto_41
    return-object v6
.end method

.method public final fromCode(Ljava/lang/String;)Lcom/stripe/android/model/CardBrand;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 293
    invoke-static {}, Lcom/stripe/android/model/CardBrand;->values()[Lcom/stripe/android/model/CardBrand;

    move-result-object v0

    .line 302
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 293
    invoke-virtual {v3}, Lcom/stripe/android/model/CardBrand;->getCode()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_1a

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_1d

    goto :goto_1f

    :cond_1d
    sget-object v3, Lcom/stripe/android/model/CardBrand;->Unknown:Lcom/stripe/android/model/CardBrand;

    :goto_1f
    return-object v3
.end method
